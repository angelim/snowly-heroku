# Snowly for Heroku

More then often you'll be working with a team when implementing Snowplow tracking. In order to keep [Snowly](https://github.com/angelim/snowly) schemas in sync with all your teammates you can deploy it to Heroku for free.

## Installation

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

### Uploading Schemas

When you use the "Deploy to Heroku button" the environment variable pointing to the schema resolver will be `/app/schemas`. You can either change that variable in Heroku's app settings to an external static site(eg. An S3 bucket) or clone the heroku's repo for the app and setup the resolver under the `schemas` folder.

```bash
heroku git:clone -a <YOUR-APP-NAME>
git remote add origin https://github.com/angelim/snowly-heroku.git
git pull origin master --allow-unrelated-histories --no-edit
# Copy schemas...
git push heroku master
```

Heroku will provide the App Name during the installation process. Use the heroku [command-line](https://devcenter.heroku.com/articles/heroku-command-line) to deploy new schemas.

### Example

```
|-- schemas
  |-- com.mycompany
    |-- user
      |-- jsonschema
        |-- 1-0-0
        |-- 1-0-1
```