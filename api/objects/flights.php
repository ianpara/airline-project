<?php
class Flights{
 
    // database connection and table name
    private $conn;
    private $table_name = "flight";
 
    // object properties
    public $idflight;
    public $available_seats;
    public $price;
    public $departure_loc;
    public $destination_loc;
    public $departure_time;
    public $arrival_time;
    public $gate;
    public $departure_date;
    public $arrival_date;
 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    
    // read products
    function read(){
 
    // select all query
    $query = "SELECT
                idflight, available_seats, price, departure_loc, destination_loc, arrival_time, gate, arrival_date, departure_date, departure_time
            FROM
                flight
            ORDER BY
                price DESC";
 
    // prepare query statement
    $stmt = $this->conn->prepare($query);
 
    // execute query
    $stmt->execute();
 
    return $stmt;
    }
    
}
