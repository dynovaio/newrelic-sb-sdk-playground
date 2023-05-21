![Community-Project](https://gitlab.com/softbutterfly/open-source/open-source-office/-/raw/master/banners/softbutterfly-open-source--banner--community-project.png)

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/zodiacfireworks/newrelic-playground/HEAD)

# New Relic Playground

This repository contains a sample notebook and some required files to get you started with the New Relic GraphQL API.


## Getting Started

1. Clone this repository

```bash
git clone git@github.com:zodiacfireworks/newrelic-playground.git
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

5. Open the `newrelic-playground.ipynb` notebook

## Resources

- [New Relic GraphQL API](https://docs.newrelic.com/docs/apis/nerdgraph/get-started/introduction-new-relic-nerdgraph/)
- [New Relic GraphQL Explorer](https://api.newrelic.com/graphiql)

## Notes

On MyBinder yo can't see the `.env` file, so you'll need to replace the `NRAK-your-new-relic-user-key` with your own API key using `sed`. The same with the `your-new-relic-account-id` value.

```bash
cp .env.template .env
sed -i 's/NRAK-your-new-relic-user-key/YOUR-REAL-NEWRELIC-USER-KEY/g' .env
sed -i 's/your-new-relic-account-id/YOUR-REAL-NEWRELIC-USER-KEY/g' .env
```

## License

This project is licensed under the terms of the [MIT license](/LICENSE).
