up: docker-up

init: docker-clear docker-up  php-env permissions php-composer

docker-clear:
	docker-compose down --remove-orphans
	sudo rm -rf php/var/docker

docker-up:
	docker-compose up --build -d

permissions:
	sudo chmod -R 777 php/var

php-env:
	docker-compose exec php-cli rm -f .env
	docker-compose exec php-cli ln -sr .env.example .env

php-composer:
	docker-compose exec php-cli composer install
