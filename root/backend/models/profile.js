var mongoose = require("mongoose");

var ProfileSchema = new mongoose.Schema( {
    username : String,
    location : String,
    waste : Number
});

module.exports = mongoose.model("Profile", ProfileSchema);