<?php
class Tickets{
 
    // database connection and table name
    private $conn;
    private $table_name = "tickets";
 
    // object properties
    public $FlightNumber;
    public $TicketNumber;
    public $Name;
    public $Price;
    public $Location;
    public $Destination;
    public $DepartureDate;
    public $ArrivalDate;
 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
}