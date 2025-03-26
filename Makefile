test:
	@python testmanage.py test

run:
	@python testmanage.py runserver

user:
	@echo "Creating superuser - Username: test Password: test"
	@echo "from django.contrib.auth import get_user_model; get_user_model().objects.create_superuser('test', '', 'test')" | python testmanage.py shell

migrate:
	@python testmanage.py migrate

tox-52:
	tox -e python3.9-django4.2-wagtail5.2

tox-63:
	tox -e python3.10-django5.0-wagtail6.3

tox-64:
	tox -e python3.13-django5.1-wagtail6.4
