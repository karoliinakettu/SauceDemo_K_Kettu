# SauceDemo_K_Kettu

A Robot Framework test automation project for the [SauceDemo](https://www.saucedemo.com) shopping site.

## Project overview

This project contains a Robot Framework suite that exercises common SauceDemo flows such as login, product selection, cart updates, checkout, and error handling. The tests use the Browser library and share reusable keywords and variables from the `resources/` folder.

## Project structure

- `tests/` - Robot test files
  - `saucedemo_tests.robot` - main test suite
- `resources/` - shared keywords and variables
  - `saucedemo_resoures.robot` - reusable Browser keywords
  - `saucedemo_variables.robot` - products, prices, and usernames
- `README.md` - project documentation
- `test_design.md` - design notes for the test suite
- `ai_usage.md` - notes about AI-assisted development

## Test coverage

The current suite includes checks for:

- adding multiple products to the cart
- verifying cart contents and prices
- buying a product with checkout
- adding and removing items from the main product page
- locked-out user login error
- customer details not added errors
- invalid password login error

## Setup

1. Open a terminal in the project folder.
2. Create a virtual environment.

Mac/Linux:
```bash
cd /Users/karoliinakettu/SauceDemo
python3 -m venv .venv
source .venv/bin/activate
```

Windows (PowerShell):
cd C:\path\to\SauceDemo
python -m venv .venv
.venv\Scripts\Activate.ps1

Windows (Command Prompt):
cd C:\path\to\SauceDemo
python -m venv .venv
.venv\Scripts\activate.bat

pip install robotframework robotframework-browser
rfbrowser init

Install the required packages:

```bash
pip install robotframework robotframework-browser
rfbrowser init
```

## Run the test

From the project root:

```bash
cd /Users/***/SauceDemo
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
