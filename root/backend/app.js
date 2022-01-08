const PORT = 8000;
var express     =  require("express"),
    mongoose    =  require("mongoose"),
    bodyParser  =  require("body-parser");

var userRoute    =  require("./routes/user"),
    profileRoute =  require("./routes/profile");

var app = express();

mongoose.connect("mongodb+srv://wmApp:w2wDesi@cluster0.x7wpr.mongodb.net/wmDB?retryWrites=true&w=majority");

app.use(express.urlencoded({extended : false}));
app.use(express.json());

app.use("/user", userRoute);
app.use("/profile", profileRoute);

app.route("/").get(function(req, res) {
    res.json("Welcome to our App!");
});

app.listen(PORT, function() {
   console.log("The App is starting at port " + PORT + " ..."); 
});