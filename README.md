# FoodDelivery3160
Members: Ethan Carter and Seth Schallau
## Introduction
This Food Delivery service is providing a service to universities that works with security and safety procedures. 
A university who purchases a license can run an instance of the application and distribute the app to their students. This will allow faculty to stay in control of who is delivering food on campus, and where that food is coming from. This application will work by allowing students to place an order at a resturant that is signed up with the service. This order will be "confirmed" and payment will be processed once a driver (another student) has accepted the order. These resturants, drivers, and students will all be "approved" users by the university faculty that oversees the operation.

## Use Case
This application will be used by universities that do not want independent contractors on campus, but still desire food delivery service.

## Business Rules
* Drivers must be a student or faculty
* Drivers must be approved by administrators
* Orders will not be confirmed until the driver accepts the order
* Resturants must be approved by administrators
* Administrators may only be faculty, but not all faculty are administrators
* Drop-Off locations must be a University Building
* Each Order must have a recipient, driver, resturant, and drop-off location
* Orders will be marked completed once the driver arrives at the drop-off and completes the order


## EERD
![](images/image.png)

## MySQL Queries
In our setup we will be using the usual create table queries. A simple example would be as follows:
1. INSERT INTO 'deliveries' (id, location, dropoff, student, driver, completed) VALUES (1, Cookout, Wallis Hall, Seth, Ethan, no);
2. CREATE TABLE delivieries;
3. UPDATE deliveries WHERE ID == 1 SET completed = yes;

## Trigger
When a new order is submitted to the database a delivery object will be created. When an order is marked completed the delivery should be updated to reflect a successful delivery. When a new establishment is submitted a faculty member of the app should be notified. 

## Stored Procedure

## Future Work
In the future we will need to create a mobile app to pair with our database. Business-wise, we would also like to sell this to companies and modify the student requirement.

## MySQL Dump
We will backup the database with MySQL dump. This will be necessary to preserve records for future use and for data mining purposes.
