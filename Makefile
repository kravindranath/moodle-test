init:
	mkdir -p moodle moodledata 
	chown -R 1001:1001 moodle moodle
	chmod -R 775 moodle
	chmod -R 775 moodledata
up:
	docker-compose up --build

down:
	docker-compose down

restart:
	docker-compose down && docker-compose up --build

logs:
	docker-compose logs -f

shell:
	docker-compose exec moodle bash

dbshell:
	docker-compose exec mariadb bash

fix-perms:
	mkdir -p moodledata
	chown -R 1001:1001 moodle moodledata
	chmod -R 775 moodle
	chmod -R 775 moodledata