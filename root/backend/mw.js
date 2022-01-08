var jwt = require("jsonwebtoken");
var config = require("./config");

var check = function(req, res, next) {
    let token = req.headers["authorisation"];
    token = token.slice(7, token.length);

    if(token)
    {
        jwt.verify(token, config.key, function(err, decoded) {
            if(err)
            {
                return res.json({
                    status : false,
                    message : "Invalid token!"
                })
            }
            else
            {
                req.decoded = decoded;
                next(); 
            }
        })
    }

    else
    {
        return res.json({
            status : false,
            message : "Token not there!"
        })
    }
};

module.exports = {check : check};