const express = require("express");
const app = express();


const userRouter = require('./api/user/user.routes');

app.use(express.json());
app.use("/api/user/",userRouter);

const port = process.env.PORT || 3000

app.listen(port,()=>{
    console.log("Server running on port ",port);
});