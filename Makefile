run:
	@uvicorn workout_api.main:app --reload

# usar com o git bash, PYTHONPATH NÃO FUNCIONA NO WINDOWS !!!!
create-migrations: 
	@PYTHONPATH=$PYTHONPATH:$(pwd) alembic revision --autogenerate -m $(d)

# usar com o git bash, PYTHONPATH NÃO FUNCIONA NO WINDOWS !!!!
run-migrations: 
	@PYTHONPATH=$PYTHONPATH:$(pwd) alembic upgrade head
	