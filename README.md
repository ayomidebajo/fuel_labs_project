
## Note
For simplicity, I commented out the link to the files (i.e `<CodeImport .../>`) that import/shows the code in `main.sw`. Instead, I put in the code blocks of the changes I made directly in the [documentation file](./docs/quickstart/building-a-smart-contract.mdx).

# Project Name

Counter Countract (Smart contract example)

## Overview

This project is an example of a smart contract that provides counter funtionality. It includes, a smart contract, a test directory and a docs directory.

## Feature Implementation

### Original Features
 - Counter: The smart contract provides a counter in storage that can be incremented and decremented.
 - Increment: The function to increment the counter.

### New Features
 - Decrement: The function to decrement the counter.
 - Reset: The function to reset the counter to zero.

## Implementation Approach

I added new functions to the smart contract called `decrement` and `reset` that decrements the counter and resets the counter, respectively. I also added test cases `test_decrement` and `test_reset_counter` to the test file to test the new functions.

## Code Changes

All code changes have a comment `// NEW FEATURE` to indicate the new feature implementation.

## Documentation Updates

All documentation changes have a comment `{/* NEW CHANGES ADDED HERE */}` to indicate the change in the doc. 

## Significant Decisions and Justifications

I decided to add the decrement feature to the smart contract because it is a common operation that is often needed in counter functionality. I also added the reset feature to reset the counter to zero. I added test cases to test these new features.

## Challenges Faced

I faced a challenge with the test cases for the new functions. I had to figure out how to test the new functions and ensure that it works as expected.

## Future Improvements

We could also improve the functions used to `decrement` and `increment` values to include an `Option`al custom step `(u64)`, so that the counter can be decremented and/or incremented by any value and defaults to 1 if it doesn't receive a custom step (receives a `None` value).


