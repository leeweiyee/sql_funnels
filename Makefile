main:
	@pipenv run python3 src/main.py

jupyter:
	@pipenv run jupyter notebook

dependencies:
	@docker-compose up -d

sql:
	@docker-compose exec postgres psql --username funnels
	
clean:
	@pipenv --rm

.PHONY: main jupyter dependencies sql clean
