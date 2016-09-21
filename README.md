# Snowly for Heroku

More then often you'll be working with a team when implementing Snowplow tracking. In order to keep [Snowly](https://github.com/angelim/snowly) schemas in sync with all your teammates you can deploy it to Heroku for free.

## Installation

Use the Heroku Button __or__ clone this repo and set it up for Heroku.

#### 1. Using the Heroku Button

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

The environment variable pointing to the Schema Resolver will default to `/app/schemas`. You can change that variable in Heroku's app settings to an external static site(eg. An S3 bucket).

Uploading schemas do Heroku:

```bash
heroku git:clone -a <YOUR-APP-NAME>
cd <YOUR-APP-NAME>
git remote add origin https://github.com/angelim/snowly-heroku.git
git pull origin master --allow-unrelated-histories --no-edit
# Copy schemas...
git add .
git commit -am 'adding schemas to repository'
git push heroku master
```

#### 2. Cloning Repository

```bash
git clone https://github.com/angelim/snowly-heroku.git
cd snowly-heroku
heroku create
heroku config:set DEVELOPMENT_IGLU_RESOLVER_PATH=/app/schemas
# Copy schemas...
git add .
git commit -am 'adding schemas to repository'
git push heroku master
```

### Example

```
|-- schemas
  |-- com.mycompany
    |-- user
      |-- jsonschema
        |-- 1-0-0
        |-- 1-0-1
```