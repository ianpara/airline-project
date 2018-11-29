<?php
class Tickets{
 
    // database connection and table name
    private $conn;
    private $table_name = "tickets";
 
    // object properties
    public $idflight;
    public $idticket;
    public $first_name;
    public $last_name;
    public $price;
    public $departure_loc;
    public $destination_loc;
    public $departure_date;
    public $arrival_date;
    public $number_of_bags;
    public $gate;
    public $available_seats;
    public $arrival_time;
    public $departure_time;
 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    //read products
    function read(){
        
        //select all query
        $query= "SELECT
        ticket.idflight, ticket.idticket, customer.first_name, customer.last_name, flight.price, flight.departure_loc, flight.destination_loc, flight.arrival_date, ticket.number_of_bags, flight.gate, flight.available_seats, flight.arrival_time, flight.departure_time
        FROM
        ticket LEFT JOIN flight ON (ticket.idflight = flight.idflight)
        LEFT JOIN customer ON (ticket.idcustomer = customer.idCustomer)
        ";
        // prepare query statement
    $stmt = $this->conn->prepare($query);
 
    // execute query
    $stmt->execute();
 
    return $stmt;
    }
    
    }
