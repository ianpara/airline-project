var Ticket = function ( flightNumber, ticketNumber, name, price, location, destination, departureDate, arrivalDate ) {
    this.FlightNumber = ko.observable(flightNumber);
    this.TicketNumber = ko.observable(ticketNumber);
    this.Name = ko.observable(name);
    this.Price = ko.observable(price);
    this.Location = ko.observable(location);
    this.Destination = ko.observable(destination);
    this.DepartureDate = ko.observable(departureDate);
    this.ArrivalDate = ko.observable(arrivalDate);
};
