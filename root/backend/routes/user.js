var express   =  require("express"),
    jwt       =  require("jsonwebtoken"),
    User      =  require("../models/user"),
    config    =  require("../config"),
    router    =  express.Router();

let mw = require("../mw")

router.route("/register").post(function(req, res) {

   var newUser = new User ( {
       username : req.body.username,
       password : req.body.password
   });

   newUser.save();
   
   res.send(newUser); 
});

router.route("/:username").get(mw.check, function(req, res) {
    User.findOne({username : req.params.username}, function(err, val) {
        if(err)
        {
            console.log(err);
        }
        else
        {
            res.json({
                username : req.params.username,
                data : val
            });
        }
    });
});

router.route("/login", function(req, res) {
    User.findOne( {
        username : req.params.username
    }, function(err, val) {
        if(err)
        {
            console.log(err);
        }
        else
        {
            if(val === null)
            {
                res.json("Invalid Username!");
            }
            else
            {
                if(val.password === req.body.password)
                {
                    jwt.sign({
                        username : req.body.username
                    }, config.key, {
                        expiresIn : "36h",
                    });

                    res.json( {
                        token : token,
                    });
                }
            }
        }
    });
});

module.exports = router;


