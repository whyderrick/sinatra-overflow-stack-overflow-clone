# Team Stack <4 (and Tim)

## Summary
This is a clone of StackOverflow, written primarily in Ruby and built in Sinatra. It's back by a Postgres database, and uses custom CSS, jQuery and AJAX for front-end interactions.

The team responsible for it is comprised of Zara Aslam, Derrick Carr, and Jason Warholic.

## Initial User Stories
Written in alignment with [Behavior Driven Development/Design](https://medium.com/@jonatisokon/a-framework-for-user-stories-bc3dc323eca9#.x4z51sdo2).
### Account Features
#### Any user should be able to view all content
As a user, I should be able to view all questions, answers and comments.

Given that I am viewing a valid site page, I should receive data that matches that page.

#### A user should be able to create an account and login
As a user, I should be able to create an account and login

Given that I am on a page of the site, I should be able to create a new account. If I already have an account, I should be able to log into it.

#### A user should be able to log out of an account
As a user I should be able to log out of my account.

Given that I am logged in, I should be able to hit a route or click a button to clear my current session.

### Core Interactions
#### A user should be able to ask a question on the site
Given that I am logged in, I should be able to create a new question on the site.

#### A user should be able to answer another user's question on the site
Given that I am logged in and on the page for a particular question, I can click a button to add my own answer to that question

#### A user should be able to comment on any question or any answer to that question
Given that I am logged in and on the page for a particular question, I can click a button to add a comment to that question or any of its answers AND have that comment appear when I view that page again

#### A user should be able to upvote or downvote items identified as voteable
Given that I'm logged in on the page for a question, I can click a button to upvote or downvote a question, answer or comment and I can only have a single vote per item.

### Polish Interactions
#### A user should see indication of a vote
Given that I've clicked a vote button, I should see that button change color in my view AND that color should persist on subsequent loads (stretch).

#### A user should see a new answer added without needing to refresh the page
Given that I've submitted a new answer, I see that answer added to the page AND it has persistent presence.

#### A user should see a new comment added without needing to refresh the page
Given that I've submitted a new comment, I see that comment on the page under its parent item without refreshing
  AND its visibility is persistent on a refresh.
