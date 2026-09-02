# SauceDemo_K_Kettu

A Robot Framework test automation project for the [SauceDemo](https://www.saucedemo.com) shopping site.

## Project overview

This project contains a basic end-to-end test using Robot Framework with the Browser library. The current test logs in to SauceDemo, opens a product, verifies the product details, and confirms the item can be added to the cart.

## Project structure

- `tests/` - Robot test files
  - `saucedemo_tests.robot` - main end-to-end test suite
- `resources/` - shared keywords and variables
  - `saucedemo_resoures.robot` - reusable Browser keywords
  - `saucedemo_variables.robot` - product names, prices, and credentials
- `README.md` - project documentation
- `test_design.md` - test design notes
- `ai_usage.md` - notes about AI-assisted workflow

## Current test coverage

- Login to SauceDemo
- Open a product from the inventory page
- Validate product name and price on the item page
- Add the item to the cart
- Return to products

## Setup

Install the required dependencies:

```bash
pip install robotframework robotframework-browser
```

## Run the test

From the project root:

```bash
cd /Users/karoliinakettu/SauceDemo
robot tests/saucedemo_tests.robot
```

## Run with a different SauceDemo user

The username is controlled by the `USERNAME` variable and can be overridden from the command line. Users doesn't have different access rights in the app except for the locked_out_user. They can be used to bring to light different kind of issues in the app. They are more equivalent to different states or environments for the app. Running the tests with different users will reveal different kinds of issues and risks. Includind performance issues and bugs that standard_user doesn't have.

Examples:

```bash
robot -v USERNAME:standard_user tests/saucedemo_tests.robot
robot -v USERNAME:locked_out_user tests/saucedemo_tests.robot
robot -v USERNAME:problem_user tests/saucedemo_tests.robot
robot -v USERNAME:performance_glitch_user tests/saucedemo_tests.robot
robot -v USERNAME:error_user tests/saucedemo_tests.robot
robot -v USERNAME:visual_user tests/saucedemo_tests.robot
```

The default value is `${STANDARD_USER}` if you do not pass a variable.

## Technologies used

- Python
- Robot Framework
- Robot Framework Browser library
- SauceDemo demo web application

## Notes

The Browser library in this project is used with the installed Robot/Browser setup already available in the environment. The test is currently passing when run from the project root using the command above.
