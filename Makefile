VENV_BIN_DIR:="venv/bin"
DEPS:="requirements.txt"
PIP:="$(VENV_BIN_DIR)/pip"
PYTHON:="$(VENV_BIN_DIR)/python"

define create-venv
python3.5 -m venv venv
endef

clean:
	rm -rf venv

venv:
	@$(create-venv)
	@$(PIP) install -U pip -q
	@$(PIP) install -r $(DEPS)

run:
	@$(PYTHON) src/manage.py runmodwsgi
