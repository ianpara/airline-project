var Flight = function ( flightNumber, price, location, destination, departureDate, arrivalDate, available_Seats, Gate ) {
    this.idflight = ko.observable(flightNumber);
    this.available_seats = ko.observable(available_Seats);
    this.price = ko.observable(price);
    this.departure_loc = ko.observable(location);
    this.destination_loc = ko.observable(destination);
    this.departure_time = ko.observable(departureDate);
    this.arrival_time = ko.observable(arrivalDate);
    this.gate = ko.observable(Gate);
    

    this.registerForFlight = function() {
      //save the slight information
      //open a modal?
      this.FlightNumber("Registered!");
    }
};
