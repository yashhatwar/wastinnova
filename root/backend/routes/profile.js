var app       =  require("express"),
    User          =  require("../models/user"),
    Profile       =  require("../models/profile"),
    Vehicle       =  require("../models/vehicle"),
    Organisation  =  require("../models/organisation"),
    mw            =  require("../mw");

var router    =  express.Router();


router.route("/add").post(mw.check, function(req, res) {

   var profile = Profile ( {
       username : req.body.username,
       location : req.body.location,
       waste : req.body.waste
   });

   profile.save();
   
   res.send(newUser);

});

router.route("/trackvan").get(function(req, res) {
    res.json("Get all information about your garbage van here...");
});

router.route("/dump").get(function(req, res) {
    res.json("Dustbin Selection Page");
});

router.route("/statistics").get(function(req, res) {
    res.json("Analysis Page");
});

router.route("/connect").get(function(req, res) {
    res.json("Get connected to our Organisations");
});

module.exports = router;