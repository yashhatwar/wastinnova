var mongoose = require("mongoose");

var VehicleSchema = new mongoose.Schema( {
    vNum = Number,
    location = String
});

module.exports = mongoose.model("Vehicle", VehicleSchema);