var express   =  require("express"),
    Profile   =  require("../models/profile"),
    mw        =  require("../mw");

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

module.exports = router;