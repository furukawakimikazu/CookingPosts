bundle-install:
	docker-compose run --rm web bundle install --without production

bundle-update:
	docker-compose run --rm web bundle update

db-migrate:
	docker-compose run --rm web bundle exec rails db:migrate RAILS_ENV=development

precompile:
	docker-compose run --rm web bundle exec rails assets:precompile RAILS_ENV=development

test:
	docker-compose run --rm web bundle exec rails test

up:
	docker-compose up -d

stop:
	docker-compose stop

yarn:
	docker-compose run --rm web yarn install

remove-credentials:
	docker-compose run --rm web rm config/credentials.yml.enc

create-credentials:
	docker-compose run --rm -e EDITOR=vi web bundle exec rails credentials:edit