var Flight = function ( flightNumber, price, location, destination, departureDate, arrivalDate ) {
    this.FlightNumber = ko.observable(flightNumber);
    this.Price = ko.observable(price);
    this.Location = ko.observable(location);
    this.Destination = ko.observable(destination);
    this.DepartureDate = ko.observable(departureDate);
    this.ArrivalDate = ko.observable(arrivalDate);

    this.registerForFlight = function() {
      //save the slight information
      //open a modal?
      this.FlightNumber("Registered!");
    }
};
