var mongoose = require("mongoose");

var UserSchema = new mongoose.Schema({
    name : String,
    location : String,
    wasteGenerated = Number
}); 

module.exports = mongoose.model("User", UserSchema);