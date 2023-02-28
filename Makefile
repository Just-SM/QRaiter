.PHONY: all
all:
	cd C:\Users\romaf\Desktop\petproject\QRaiter

.PHONY: run
run:
	poetry run python -m core-qraiter.manage runserver

.PHONY: install
install:
	poetry install

.PHONY: migrate
migrate:
	poetry run python -m core-qraiter.manage migrate

.PHONY: install
migrations:
	poetry run python -m core-qraiter.manage makemigrations

.PHONY: superuser
superuser:
	poetry run python -m core-qraiter.manage createsuperuser

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall
	poetry run pre-commit install

.PHONY: lint
lint:
	poetry run pre-commit run --all-files

.PHONY: update
update: install migrate install-pre-commit;
