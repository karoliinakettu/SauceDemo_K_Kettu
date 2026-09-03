Test Design

The test design was based on manual exploratory testing, where risks and problems were identified. Different users were treated mostly as different environments or states of the application rather than distinct user roles. Only the `locked_out_user` was treated as an actual access-control scenario.

The "User Should Be Locked Out" test is the only test with a hard-coded username value and should pass consistently across all runs. Alternative usernames are documented in the README and can be passed from the command line to reveal different states and issues.

The suite focuses on validating user experience and basic safety features.

User Experience:
- Items can be added to the cart from the main page and item detail page
- Items can be removed from the cart
- Purchase flow buttons work as expected
- Users receive appropriate error messages when actions are invalid:
  - wrong password
  - missing required customer information during checkout
  - login attempts with `problem_user` or `error_user` may reveal environments where features do not behave as expected and tests fail

Safety:
- A user can attempt to log in with a wrong password
- A locked-out user remains locked out
- A locked-out user gets the correct error message

Things intentionally left out and why:

Testing visual aspects:
- Running tests with `visual_user` should still pass and work
- UI appearance is not the main focus of automation
- Visual quality should be tested manually by a human eye

Performance tests:
- The `performance_glitch_user` is slow, but not slow enough for these Robot Framework tests to catch reliably
- This would be better validated with more specialized timing and performance-focused tests

Postal code validation:
- During exploratory testing, it was noticed that letters can be entered in the postal code field
- This should not be allowed, but it was left out because the expected behavior and error message were not clearly defined
- It would be a useful edge case to test once the product requirements are clarified

Locators as variables:
- Locators were kept inline because this is a small project and they were rarely
  used more than once
- In a larger project, saving locators as variables would make them easier to
  update and reuse

Hiding passwords and usernames from GitHub:
- This was considered, but SauceDemo publicly documents the password and possible
  usernames, so hiding them was not considered necessary in this case

This design keeps the suite focused on core functionality, flow reliability, and access-control behavior while leaving subjective and ambiguous UI/performance checks for manual review.

