# 538_riddlers
Every week FiveThirtyEight.com puts out problems related to math, logic, and probability

gloves.rb -
These days I always have a pack of latex gloves nearby. But it’s notoriously difficult to pull exactly two gloves out of the box at a time. Sometimes I’ll pull out two gloves, other times three, and yet other times four. Somehow, I never pull out any other number of gloves at a time.
This morning, I noticed that there are 10 gloves left in the box. How many distinct ways are there for me to remove all 10 gloves from the box? Note that the order matters here — for example, pulling out two gloves, then four gloves and then another four gloves is distinct from pulling out four gloves, another four gloves and then two gloves.

six_dice.rb - 
You start with a fair 6-sided die and roll it six times, recording the results of each roll. You then write these numbers on the six faces of another, unlabeled fair die. For example, if your six rolls were 3, 5, 3, 6, 1 and 2, then your second die wouldn’t have a 4 on it; instead, it would have two 3s.
Next, you roll this second die six times. You take those six numbers and write them on the faces of yet another fair die, and you continue this process of generating a new die from the previous one.
Eventually, you’ll have a die with the same number on all six faces. What is the average number of rolls it will take to reach this state?
Extra credit: Instead of a standard 6-sided die, suppose you have an N-sided die, whose sides are numbered from 1 to N. What is the average number of rolls it would take until all N sides show the same number?
