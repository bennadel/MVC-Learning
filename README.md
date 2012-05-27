
# Learning MVC (Model-View-Controller) In ColdFusion

by Ben Nadel (http://www.bennadel.com)

My application architecture is not great. While I know a great amount about ColdFusion
at a technical level, my understanding of how things fit together in cohesive modules
is not that strong. After talking to Steven Neiland at cf.Objective() 2012, I have a new
enthusiasm for bring my architecture skills up to par.

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
able) to have database queries in places they shouldn't be; I won't be able to have gateways
that cut across too many tables. 