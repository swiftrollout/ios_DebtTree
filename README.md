Unit 8: Group Milestone - README Example
===
# DebtTree

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)

## Overview
### Description
Keep track how much travelers spend in the trip and they can spit the expenditure with others.

### App Evaluation
- **Category:** Social Networking / Travel
- **Mobile:** This app would be primarily developed for mobile
- **Story:** Users can keep track the expediture and share with others
- **Market:** Any individual could choose to use this app, and to keep it a safe environment, people would be organized into age groups.
- **Habit:** This app could be used as often or unoften as the user wanted depending on how deep their social life is, and what exactly they're looking for.
- **Scope:** We would start it for travel lovers.

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [X] User logs in to access trip history and preference settings
- [X] User can create group expenditure list
- [X] User can add other people to the group
- [X] User can add their payment option like vemo, paypal and quickpay account

**Optional Nice-to-have Stories**

### 2. Screen Archetypes

* Login 
* Register - User signs up or logs into their account
* Trip List Screen - List of trips
* New Trip Screen 
   * Allows user to add new trip 
* Settings Screen
   * User can add their payment option like vemo, paypal and quickpay account

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Profile
* Settings

Optional:

**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available
* Trip selection -> Jumps to Trip
* Trip -> Text field to be modified. 
* Settings -> Toggle settings

## Wireframes
<img src="https://i.imgur.com/L189Pcy.jpg" width=800><br>

### [BONUS] Digital Wireframes & Mockups
<img src="" height=200>

### [BONUS] Interactive Prototype
<img src="" width=200>

## Schema
Model:	User	
Property 	Type	Description
userId	String	unique id for the user (default field)
vemoId	String	account id
paypalId	String	account id
quickpayId	String	account id
		
Model:	Trip	
Property 	Type	Description
tripId	String	unique id for the trip (default field)
createDate	DateTime	date when trip is created
isDelete	Bool	is this trip deleted
		
Model:	Expenditure	
Property 	Type	Description
expenditureId	String	unique id for the expenditure (default field)
tripid	String	
receiptURL	String	receipt image url
isDelete	Bool	is this expenditure deleted
		
Model:	Members	
Property 	Type	Description
groupId	String	unique id for the trip group (default field)
tripid	String	trip id

## List of network requests by screen
Home Screen
(Read/GET) Query all trips where user is in
(Create/POST) Create a new trip
(Delete) Delete existing trip where user is creator

Create Trip Screen
(Create/POST) Create a new trip object

Create Expenditure Screen
(Create/POST) Create a new expenditure object

Profile Screen
(Read/GET) Query logged in user object
(Update/PUT) Update user profile

## Build Progress
<img src="http://g.recordit.co/kYhfymFPyW.gif" width=800><br>
