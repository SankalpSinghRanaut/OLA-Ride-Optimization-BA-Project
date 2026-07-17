
create database ola;
use ola ;

#1. Retrieve all successful bookings:

select * from bookings 
where Booking_Status = 'Success' ;


#2. Find the average ride distance for each vehicle type:

select Vehicle_Type , avg(Ride_Distance)
AS Avg_Distance from bookings 
group by Vehicle_Type ;


#3. Get the total number of cancelled rides by customers:

select count(*) from bookings
where Booking_Status = 'Canceled by Customer';


#4. List the top 5 customers who booked the highest number of rides:

select Customer_ID , Count(Booking_ID) as Total_Rides
from bookings
group by Customer_ID order by Total_Rides desc limit 5;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:

select count(*) from bookings 
where Canceled_Rides_by_Driver = 'Personal & Car related issue' ;

 

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

 SELECT MAX(Driver_Ratings) as max_rating,
 MIN(Driver_Ratings) as min_rating FROM
 bookings WHERE Vehicle_Type = 'Prime Sedan';


#7. Retrieve all rides where payment was made using UPI:

select * from bookings 
where Payment_Method = 'UPI' ;



#8. Find the average customer rating per vehicle type:

select Vehicle_Type , avg(Customer_Rating) as avg_customer_rating
from bookings 
group by Vehicle_Type;


#9. Calculate the total booking value of rides completed successfully:

 SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE
 Booking_Status = 'Success';
 
 
#10. List all incomplete rides along with the reason:

SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides =
 'Yes';
