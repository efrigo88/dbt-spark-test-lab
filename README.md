# dbt+spark simple pipeline

This is a practice dbt+spark pipeline with delta meant for learning purposes.

Steps to execute.

1. Install libraries
```
poetry install
```

2. Install dbt deps
```
cd dbt_pipeline
poetry run dbt deps
```

3. Seed files and run models
```
poetry run dbt seed && poetry run dbt run
```

4. Run dbt tests
```
poetry run dbt test
```
