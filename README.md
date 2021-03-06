# yamale-docker-action
github action for yaml schema validation based on [23andMe/Yamale](https://github.com/23andMe/Yamale)

[![.github/workflows/main.yml](https://github.com/eXpire163/yamale-docker-action/actions/workflows/main.yml/badge.svg)](https://github.com/eXpire163/yamale-docker-action/actions/workflows/main.yml)

## Inputs

**Required** The name of the person to greet. Default `"World"`.

### `schema-file`:
**Required**  Schema files used for validation.  Default: "schema.yml"
### `test-file`:
**Required**  yaml file that needs to be validated.  Default: "action.yml"
### `strict`:
strict|nonstrict validation is requred Default: "strict"


## Outputs

### `time`

The time when it was run

## Example usage

```yaml
on: [push]

jobs:
  schema_validation_job:
    runs-on: ubuntu-latest
    name: Schame validation
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: test a single file
        id: single
        uses: eXpire163/yamale-docker-action@main
        with:
          schema-file: "schema.yml"
          test-file: "action.yml"
          strict: "nonstrict"
      - name: or test a folder
        id: folder
        uses: eXpire163/yamale-docker-action@main
        with:
          schema-file: "schema.yml"
          test-file: "testfiles"
          strict: "strict"

      - name: Get the output time
        run: echo "The time was ${{ steps.single.outputs.time }}"

```
