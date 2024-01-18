// import from package
const express = require("express");
const mongoose = require("mongoose");

// import from other files
const authRouter = require("./routes/auth");

// init
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://levanquanghuy8:Khanhhuyen_2003@cluster0.jzlaaw8.mongodb.net/?retryWrites=true&w=majority"

// middleware
// CLIENT -> (middleware) -> SERVER -> CLIENT
app.use(express.json());
app.use(authRouter);



// connections
mongoose.connect(DB).then(() => {
    console.log('Connect successfully');
}).catch((e) => {
    console.log(e);
});

app.listen(PORT, "0.0.0.0", function () {
    console.log(`Connect at port ${PORT}`);
}); // can be access anywhere


