var mongoose = require("mongoose");

var OrganisationSchema = new mongoose.Schema( {
    name : String,
    location : String,
    description : String,
    contact : Number
});

module.exports = mongoose.model("Organisation", OrganisationSchema);