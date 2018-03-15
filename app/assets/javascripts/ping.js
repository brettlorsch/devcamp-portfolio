var http = require("http");
setInterval(function() {
    http.get("http://brettlorscheider.com");
}, 300000); // every 5 minutes (300000)