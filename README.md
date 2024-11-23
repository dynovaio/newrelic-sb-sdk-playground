![Community-Project](https://gitlab.com/softbutterfly/open-source/open-source-office/-/raw/master/assets/dynova/dynova-open-source--banner--community-project.png)

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gl/softbutterfly%2Fopen-source%2Fnewrelic-sb-sdk-playground/HEAD)

# New Relic SB SDK: Playground

This repository contains sample notebooks to get started with the New Relic SDK by SoftButterfly.


## Getting Started

1. Clone this repository

```bash
git clone git@github.com:dynova/newrelic-sb-sdk-playground.git
```

2. Install the dependencies

```bash
pyenv install $(cat .python-version)
poetry env use $(cat .python-version)
poetry install
```

3. Create a `.env` file with your New Relic API key and your New Relic account id

```bash
cp .env.example .env
```

4. Run the Jupiter lab server

```bash
poetry run jupyter lab --ContentsManager.allow_hidden=True
```

5. Open the `newrelic-sb-sdk-playground.ipynb` notebook

## Resources

- [New Relic GraphQL API](https://docs.newrelic.com/docs/apis/nerdgraph/get-started/introduction-new-relic-nerdgraph/)
- [New Relic GraphQL Explorer](https://api.newrelic.com/graphiql)

- [New Relic SDK by Dynova](https://github.com/dynovaio/newrelic-sb-sdk/)

## Notes

On MyBinder yo can't see the `.env` file, so you'll need to replace the `NRAK-your-new-relic-user-key` with your own API key using `sed`. The same with the `your-new-relic-account-id` value.

```bash
cp .env.template .env
sed -i 's/NRAK-your-new-relic-user-key/YOUR-REAL-NEWRELIC-USER-KEY/g' .env
sed -i 's/your-new-relic-account-id/YOUR-REAL-NEWRELIC-USER-KEY/g' .env
```

## License

This project is licensed under the terms of the <a href="./LICENSE.txt" download>MIT license</a>.
