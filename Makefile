env ?= local

run:
	docker compose -f ${env}.yml up --build

migrate:
	docker compose -f ${env}.yml exec backend sh -c "python manage.py migrate"

makemigrations:
	docker compose -f ${env}.yml exec backend sh -c "python manage.py makemigrations"

test:
	docker compose -f ${env}.yml exec backend sh -c "python manage.py test"

flake:
	docker compose -f ${env}.yml exec backend sh -c "flake8"

createsuperuser:
	docker compose -f ${env}.yml exec backend sh -c "python manage.py createsuperuser"
