# Mechanical Workshop Model

This model was developed in MySQL Workbench as part of the [Database Experience](https://www.dio.me/bootcamp/database-experience) Bootcamp from Digital Innovation One (DIO). It was intended to create a Mechanical Workshop Model from scratch.

## Objective:
Creates the conceptual schema for the workshop context based on the narrative provided.

## Narrative:

- Control and management system for the execution of work orders in a mechanical workshop.
- Customers take vehicles to the mechanic shop to be repaired or to undergo periodic inspections.
- Each vehicle is assigned to a team of mechanics who identify the services to be performed and fill in an MO with a delivery date.
- From the Maintenence Order (MO), the value of each service is calculated, consulting a labor reference table.
- The value of each piece will also compose the MO client authorizes the execution of the services.
- The same team evaluates and executes the services.
- Mechanics have a code, name, address and specialty.
- Each MO there are: number, date of issue, a value, status and a date for completion of the works.

The model can be seen below and downloaded above. If you find that this model should pass through updates, feel free to recommend it.

## Model:

<p align="center">
  <img src="https://github.com/thaynanff/Databases-and-SQL/blob/main/2.%20Mechanical%20Workshop%20Model/Mechanical%20Workshop%20Model.png?raw=true" >
</p>