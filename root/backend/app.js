const PORT = 8000;
var express     =  require("express"),
    mongoose    =  require("mongoose"),
    bodyParser  =  require("body-parser")

var User         =  require("./models/user"),
    Vehicle      =  require("./models/vehicle"),
    Organisation =  require("./models/organisation")

var app = express();

mongoose.connect("mongodb+srv://wmApp:w2wDesi@cluster0.x7wpr.mongodb.net/wmDB?retryWrites=true&w=majority");

app.use(bodyParser.urlencoded({extended : false}));
app.use(bodParser.json());

app.get("/", function(req, res) {
    res.json("Welcome to our App!");
});



app.get("/profile", function(req, res) {
    res.send("This is your Dashboard");
});


app.listen(PORT, function() {
   console.log("The App is starting at port " + PORT + " ..."); 
});