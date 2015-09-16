The Ball Clock Puzzle

A ball clock is a 12-hour mechanical device that uses a track, queue, rotator, marbles, and three
chutes to keep track of time. Here is an explanation of these parts:

1. The queue holds all the marbles that are not currently in use.

2. The rotator picks up one marble every minute and deposits it on the track.

3. The track delivers each marble to one of the three chutes.

4. The chutes keep track of time. One chute tracks minutes, one tracks five minute increments, and the last one tracks hours.

5. The 1 Minute chute holds up to 4 marbles and the 5 Minute and 1 Hour chutes both hold up to 11 marbles.

To read the clock, you simply calculate the number of marbles in each chute according to the
chute’s value. For example, if there is one marble in the 1 Minute Chute, 3 marbles in the 5
Minute chute, and 6 marbles in the 1 Hour chute, the time would be 6:16.

How the Ball Clock Works

1. A timed rotator spins, picking up one marble every minute and depositing it on the track.

2a. The marble rolls down the track and stops at the 1 Minute chute. If this chute is not full, the
marble is deposited into the 1 Minute chute and the clock waits for the next marble.

2b. If the 1 Minute chute is full, the marbles in the chute are dumped out, in reverse order, and
returned to the queue at the bottom of the clock. Then the current marble continues to the 5
Minute chute.

3a. If the 5 Minute chute is not full, the current marble is deposited into the 5 Minute chute and
the clock waits for the next marble.

3b. If the 5 Minute chute is full, the marbles in the chute are dumped out, in reverse order, and
returned to the queue at the bottom of the clock. Then, the current marble continues to the 1

Hour chute.

4a. If the 1 Hour chute is not full, the current marble is deposited into the 1 Hour chute and the
clock waits for the next marble.

4b. If the 1 Hour chute is full, the marbles in the chute are dumped out, in reverse order, and
returned to the queue at the bottom of the clock. The current marble is then also returned to the
queue. This situation, where all the chutes are empty, represents 12:00.

About The Ball Clock Queue

Assume for a moment that the ball clock starts out with 30 balls in the queue. These marbles
are all numbered, 1 through 30, and are placed in the queue in numerical order. As the marbles
rotate through the clock, their order will be messed up. For example, during the first minute, ball
1 will be placed in the 1 Minute chute. Then, during the next three minutes, balls 2, 3, and 4 will
be deposited into the 1 Minute chute. When ball 5 comes down the track, it will trigger the 1
Minute chute to empty, since it is full. When it empties, the balls will be returned to the queue in
reverse order, so now the order of the queue is 6 through 30, in numerical order, then 4, 3, 2, 1.

The Challenges

Question 1: What is the minimum number of balls required to make the ball clock work?

Question 2: Write a functioning ball clock in Ruby. This code should accept a single parameter,
the number of marbles to place in the queue. Run your ball clock simulator for one 12-hour
cycle, meaning until all the marbles are back in the queue and all the chutes are empty, and
print out the order of the queue. In other words, run the clock from 12:00 to 12:00 and print out
the order of the queue.

Question 3: Using your ball clock simulator, run the clock continuously to see if the queue ever
returns to its original numerical order. If it does, print out the number of days it took for the
clock’s queue to return to its original order.

Question 4: Alter your ball clock program to support two parameters. The first parameter is the
number of balls to place in the queue, and the second parameter is the number of minutes the
clock should run. After the clock has run the specified number of minutes, print out the state of
the queue and all three chutes in JSON format. The output should look something like this:

{"Min":[],"FiveMin":[22,13,25,3,7],"Hour":[6,12,17,4,15],"Queue"
 [11,5,26,18,2,30,19,8,24,10,29,20,16,21,28,1,23,14,27,9]}

Notes

For the sake of time, make sure your ball clock simulator doesn’t accept more than 127
marbles. To test your ball clock using your code for question 2, the queue of a ball clock with 30
balls in it should look like this after one 12-hour cycle:
[4,18,12,26,6,20,28,29,13,15,23,2,8,7,0,19,9,10,27,17,25,1,21,22,14,3,16,11,5,24]
*** Note (Maybe it's me, but I was never able to prove this test.)

Submitting Your Code

Please answer all 4 question. Commit your work to Github, or a Git repository of your choice.
