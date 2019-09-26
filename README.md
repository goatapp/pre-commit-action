# pre-commit-action
Contains our custom action for running pre-commit

## Example
```
on: push
name: pre-commit
jobs:
  pre-commit:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: pre-commit
      uses: goatapp/pre-commit-action@master
      with:
        args: run --show-diff-on-failure
```
