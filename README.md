# Introduction
we’re going to be building a guessing game that helps users learn some of the many flags of the world.

This project is still going to be nice and easy, but gives me chance to introduce you to whole range of new SwiftUI functionality: stacks, buttons, images, alerts, asset catalogs, and more.

Our first app used a completely standard iOS look and feel, but here we’re going to make something more customized so you can see how easy it is with SwiftUI.

# Challenge
One of the best ways to learn is to write your own code as often as possible, so here are three ways you should try extending this app to make sure you fully understand what’s going on:

Add an @State property to store the user’s score, modify it when they get an answer right or wrong, then display it in the alert and in the score label.
When someone chooses the wrong flag, tell them their mistake in your alert message – something like “Wrong! That’s the flag of France,” for example.
Make the game show only 8 questions, at which point they see a final alert judging their score and can restart the game.


Note: That last one takes a little more thinking than the others. A good place to start would be to add a second alert() modifier watching a different Boolean property, then connect its button to a reset() method to set the game back to its initial state.

# Final result

In the end it ended up like this, showing the remaining attempts at all times and when it reached 0, it showed an end of game alert and the only option was to reset it.

<p align="center">
  <img src="https://github.com/user-attachments/assets/10c242da-d232-43a1-a8e1-1b9a881f097c" alt="GuessTheFlag (1)" style="max-width: 100%; height: auto;">
</p>
