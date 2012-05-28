
# Learning MVC (Model-View-Controller) Architecture In ColdFusion

by Ben Nadel (http://www.bennadel.com)

My application architecture is not great. While I know a great amount about ColdFusion
at a technical level, my understanding of how things fit together in cohesive modules
is not that strong. After talking to Steven Neiland at cf.Objective() 2012, I have a new
enthusiasm for bringing my architecture skills up to par. This project is an exploration
of a better MVC (Model-View-Controller) application architecture in which the controller
is really a thin layer that does little more than moderate requests and responses.

## Yes - Another ToDo Application

ToDo applications are the new "Hello World" apps in the programming world. They are simple
enough to build, yet complex enough to teach some theory. I'll be trying to build a ToDo
app using Model-View-Controller. While the app will only be used by a single person, I'll 
be building in a need to create an account for some added complexity and behavioral concerns.

## No Database

Sometimes, in order to learn how to do something, you have to handicap yourself. To help 
me learn about separation of concerns and modularity and single-responsibility, I am going
into this learning experiment without a database. All data will be cached within Gateway 
components for the life-cycle of the application. By doing this, I won't be tempted (or
able) to have database queries in places that they shouldn't be; in other words, I won't be
able to have gateways that cut across too many tables.

## All CFSCript In The Controller (C) And Model (M)

For the past 10 years, I've been living in a tag-based world. This has made it very easy 
for me to mix my "controller" and my business logic. For this exploration, I'm going to go
with nothing but CFScript in my Model and my Controller. The intent here is to make it much
harder to mix the different parts of the application; at least, it makes it harder to mix
the views and the business logic.

### What About Reporting?

I understand that, in reality, there are often different points of contact for a given set
of data. Reporting is a good example of this. I wouldn't necessarily want my primary data
gateways to be used for reporting; rather, I'd probably want a reporting gateway that can
flatten, denormalize, and optimize queries for a particular outcome. In this app, however,
there is no reporting - the point is to learn about tiered application architecture.

## User Cases

The following outlines a number of actions that the user will be able to perform in the 
ToDo application.

* Create a new account.
* Log into an existing account.
* Log out of an existing account session.
* Add a new ToDo item.
* Edit an existing ToDo item.
* Delete an existing ToDo item.
* Add a note to an existing ToDo item.
* Delete a note from an existing ToDo item.