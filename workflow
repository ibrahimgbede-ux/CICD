name: CI/CD Worfklow

on:
  push:
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Confirm secret exists
        env:
          API_KEY: ${{ secrets.MY_API_KEY }}
        run: |
          if [ -n "$API_KEY" ]; then
            echo "The secret exists."
          else
            echo "The secret does not exist."
            exit 1
          fi


