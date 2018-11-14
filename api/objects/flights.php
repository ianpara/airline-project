<?php
class Flights{
 
    // database connection and table name
    private $conn;
    private $table_name = "flights";
 
    // object properties
    public $FlightNumber;
    public $Price;
    public $Location;
    public $Destination;
    public $DepartureDate;
    public $ArrivalDate;
    public $Created;
 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    
    // read products
    function read(){
 
    // select all query
    $query = "SELECT
                FlightNumber, Price, Location, Destination, DepartureDate, ArrivalDate, Created
            FROM
                " . $this->table_name . "
            ORDER BY
                Created DESC";
 
    // prepare query statement
    $stmt = $this->conn->prepare($query);
 
    // execute query
    $stmt->execute();
 
    return $stmt;
}
}