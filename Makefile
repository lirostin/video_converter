VENV = venv
PYTHON = python3
PROJECT_NAME = *.py

.ONESHELL:

ACTIVATE_WINDOWS:=. $(VENV)/Scripts/activate
ACTIVATE_LINUX:=. $(VENV)/bin/activate

setup:
	$(PYTHON) -m venv $(VENV)
	$(ACTIVATE_LINUX)
	pip install --upgrade pip
	pip install -r requirements.txt

setup_win:
	python -m venv $(VENV)
	$(ACTIVATE_WINDOWS)
	pip install --upgrade pip
	pip install -r requirements.txt
	
clean:
	rm -rf venv

lint:
	isort ${PROJECT_NAME}
	black  --line-length 119 ${PROJECT_NAME}
	flake8 ${PROJECT_NAME}


create_app_ubuntu:
	pip3 install -r requirements.txt
	pyinstaller --onefile --paths="../.." --name "comparator.${UBUNTU}${VERSION}" main.py
	mkdir dist/${UBUNTU}${VERSION}
	mv dist/comparator.${UBUNTU}${VERSION} dist/${UBUNTU}${VERSION}
	cat README.md > dist/${UBUNTU}${VERSION}/README.md
	cp settings.ini dist/${UBUNTU}${VERSION}
	cd dist
	tar -czvf ${UBUNTU}${VERSION}.tar.gz ${UBUNTU}${VERSION}
