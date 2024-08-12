
# `Hotmart-Org/actions/validate-hotpoint`

## Description
GitHub Actions to check if the property `hotpoint = true` is set in the `production.yml` file.

## How to Resolve
Add the property `HOTPOINT = true` in the project's `production.yml` file.

Example:
```yml
name: api-accountfy-integration

containerPort: 8080
cpu: 1.0
memory: 2048M
replicaCount: 2

env:
  HOTPOINT: true
```

<!-- action-docs-inputs -->
## Inputs

| parameter  | description                                       | required | default             |
|------------|---------------------------------------------------|----------|---------------------|
| file-path  | Path to the file                                  | `true`   | `./production.yml`  |

<!-- action-docs-outputs -->

## TechDeck

* https://techdeck.hotmart.co/catalog/default/component/heimdall/docs/findings/hotpoint_adoption/

## License
© Hotmart Company
