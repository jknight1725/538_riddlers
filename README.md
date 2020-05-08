# 538_riddlers
Every week FiveThirtyEight.com puts out problems related to math, logic, and probability

gloves.rb - *My solution assumes that if there is a glove left in the box you must draw it, a slight deviation from the problem*
These days I always have a pack of latex gloves nearby. But it’s notoriously difficult to pull exactly two gloves out of the box at a time. Sometimes I’ll pull out two gloves, other times three, and yet other times four. Somehow, I never pull out any other number of gloves at a time.
This morning, I noticed that there are 10 gloves left in the box. How many distinct ways are there for me to remove all 10 gloves from the box? Note that the order matters here — for example, pulling out two gloves, then four gloves and then another four gloves is distinct from pulling out four gloves, another four gloves and then two gloves.
Explanation - Using a bottom up approach here allows us to do the least work. Once the amount of gloves in the box is less than our minimum draw amount, a way to empty the glove box has been found. We now know there is one way to solve the problem for any number less than our minimum draw in our case two gloves. Now work up from one more than the min draw up to N. in our case from 3 gloves to 10. with 3 gloves there are 2 valid draws, draw three, leaving zero and draw two, leaving one. We know the amount of ways to solve for zero and one - one. Thus 3 gloves has two ways to solve. Continue the process upwards plugging in for known values e.g. with 5 gloves we can draw 2-4 gloves leaving us with 1-3 gloves remaining. We know that there are two ways to solve for three gloves and one way to solve for two gloves and one glove - so there are 4 ways to solve for 5 gloves. 

six_dice.rb - 
You start with a fair 6-sided die and roll it six times, recording the results of each roll. You then write these numbers on the six faces of another, unlabeled fair die. For example, if your six rolls were 3, 5, 3, 6, 1 and 2, then your second die wouldn’t have a 4 on it; instead, it would have two 3s.
Next, you roll this second die six times. You take those six numbers and write them on the faces of yet another fair die, and you continue this process of generating a new die from the previous one.
Eventually, you’ll have a die with the same number on all six faces. What is the average number of rolls it will take to reach this state?
Extra credit: Instead of a standard 6-sided die, suppose you have an N-sided die, whose sides are numbered from 1 to N. What is the average number of rolls it would take until all N sides show the same number? Running the program simulates 10000 trials of the described process from a 1 sided die to a fifty sided die. The results reveal an interesting series that allows us to conclude the growth rate - 2n


dominoes.rb
In a set of dominos, each tile has two sides with a number of dots on each side: zero, one, two, three, four, five or six. There are 28 total tiles, with each number of dots appearing alongside each other number (including itself) on a single tile.

Question 1: What is the probability of drawing a “double” from a set of dominoes — that is, a tile with the same number on both sides?

Question 2: Now you pick a random tile from the set and uncover only one side, revealing that it has six dots. What’s the probability that this tile is a double, with six on both sides?

This one hardly needs a program, but it was fun to code none the less. Question one is trivial - each number 0 - 6 has a double for a total of 7 doubles out of 28
Question two - The number six will be paired with each other number and then paired with itself for a total of 7 dominoes containing six and one containing two sixes.
