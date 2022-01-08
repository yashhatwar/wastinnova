var mongoose = require("mongoose");

var VehicleSchema = new mongoose.Schema( {
    vnumber : Number,
    location : String
});

module.exports = mongoose.model("Vehicle", VehicleSchema);