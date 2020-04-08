# FoodDelivery3160
Members: Ethan Carter and Seth Schallau
## Introduction
This Food Delivery service is providing a service to universities that works with security and safety procedures. 
A university who purchases a license can run an instance of the application and distribute the app to their students. This will allow faculty to stay in control of who is delivering food on campus, and where that food is coming from. This application will work by allowing students to place an order at a resturant that is signed up with the service. This order will be "confirmed" and payment will be processed once a driver (another student) has accepted the order. These resturants, drivers, and students will all be "approved" users by the university faculty that oversees the operation.

## Use Case
This application will be used by universities that do not want independent contractors on campus, but still desire food delivery service.
![](images/useCase.png)
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
![](images/EERD_normalized.png)

## Data Dictionary
###Person
| Attribute     | Data type      | Description                          |
|---------------|----------------|--------------------------------------|
| ID            | int            | ID number                            |
| name          | VARCHAR(50)    | full name of Person                  |
| email         | VARCHAR(255)   | email address of Person              |
| phone         | VARCHAR(10)    | cell phone number of Person          |
###Student
| Attribute     | Data type      | Description                          |
|---------------|----------------|--------------------------------------|
| ID            | int            | ID number                            |
| gradyear      | DATE           | expected graduation date of Student  |
| major         | VARCHAR(255)   | major of Student                     |
| type          | TINYTEXT       | type of Student (undergrad or grad)  |
###Faculty
| Attribute     | Data type      | Description                          |
|---------------|----------------|--------------------------------------|
| ID            | int            | ID number                            |
| title         | VARCHAR(50)    | job title of Faculty                 |
| highestDegree | VARCHAR(255)   | highest obtained degree              |
| degreecollege | TINYTEXT       | college degree was obtained from     |
###Driver
| Attribute     | Data type      | Description                          |
|---------------|----------------|--------------------------------------|
| ID            | int            | ID number                            |
| licenseNumber | VARCHAR(20)    | state issued driver's license number |
| dateHired     | DATE           | date hired by company                |
| rating        | int            | average delivery rating              |


###Order
| Attribute     | Data type      | Description                          |
|---------------|----------------|--------------------------------------|
| ID            | int            | ID number                            |
| items         | VARCHAR(255)   | items contained in order             |
| restaraunt_id | int            | ID of restaurant order is from       |
| location_id   | VARCHAR(255)   | ID of location to be delivered to    |
| price         | numeric        | total price of order                 |
###Location
| Attribute     | Data type      | Description                          |
|---------------|----------------|--------------------------------------|
| ID            | int            | ID number                            |
| address       | VARCHAR(255)   | address of Location                  |
| dropoffPoint  | VARCHAR(255)   | point of entry to Location           |
###Restaurant
| Attribute     | Data type      | Description                          |
|---------------|----------------|--------------------------------------|
| ID            | int            | ID number                            |
| name          | VARCHAR(255)   | name of Restaurant                   |
| address       | VARCHAR(255)   | address of Restaurant                |
| location      | VARCHAR(255)   | location of Restaurant               |

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
