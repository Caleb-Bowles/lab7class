# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Caleb Bowles
Ben Gibson

## Summary

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The difference between the half adder and the half subtractor lies between the Borrow bit and the Carry bit. When you perform addition of two bits, the scenario where A and B are 1 (A&B) forces you to use a Carry bit to account for the extra integer needed for the sum of 2 (01). In a half subtractor, a Borrow bit is needed in the scenario where you subtract 1 from 0. There is no negative value for a bit, so you must borrow from the next most significant bit to form the subtraction of 10-1 which is 1. 

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
It makes it hard to use and immplement because you have to store your original sum values in a wire so that you may can add 1 to the sum later on. 

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case of twos compliment is always the negative of the most significant bit to the positive of the most significant bit subtract 1. The problem with twos complement number representation is that overflow can occur in scenarios where you add two positive numbers together (or vice versa for two negative numbers), creating an addition that is only captured by extending the bit space by one more bit. This is seen in the example: 0111+0111. Addition shows an answer of 1110, but this implies -2, not 14. 

