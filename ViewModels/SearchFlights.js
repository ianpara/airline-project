(function() {
  var app, express;

  express = require("express");

  app = express.createServer();

  app.configure(function() {
    app.use(express.bodyParser());
    return app.use(app.router);
  });

  app.configure("development", function() {
    return app.use(express.errorHandler({
      dumpExceptions: true,
      showStack: true
    }));
  });

  app.post("/locations", function(request, response) {
    var mysql = require('mysql');

    //creating a connection to the database
    var con = mysql.createConnection({
        host: "127.0.0.1",
        user: "ianpara",
        password: "",
        database: "airline"
    });
    
    //fetch the initial list of flights, all flights in db
    con.connect(function(err) {
        if (err) throw err;
        con.query("SELECT * FROM flight", function (err, result, fields) {
          if (err) throw err;
          //setting the contents of the result of the query into the flights observable array
          console.log(result);
          return result;
        });
    });
  });

  //app.listen(80, "https://ide.c9.io/ianpara/goldteam-project/locations");

}).call(this);


