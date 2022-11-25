if (process.env.NODE_ENV != 'production'){
   require('dotenv').config();
}
const express = require('express');
const app = express();
const cors = require('cors')
const bodyParser = require("body-parser")
const cookieParser = require("cookie-parser")

const PORT = process.env.PORT || 3001;
const CLIENT_PORT = process.env.CLIENT_PORT
const SECRET = process.env.SECRET



app.use(express.json())
var whitelist = [CLIENT_PORT]
var corsOptions = {
   origin : function (origin, callback){
      if(whitelist.indexOf(origin) !== -1){
         callback(null, true)

      }else{
         callback(new Error ('Not Allowed by CORS'))
      }
   }
}

app.use(cors({
   origin: corsOptions,
   methods: ["GET", "POST", "DELETE", "PUT"],
   credentials: true,

}));
app.use(cookieParser())


app.use(bodyParser.urlencoded({ extended: true}))


const uploadRoute = require('./routes/Upload');
app.use('/upload', uploadRoute);


app.listen(PORT, (req, res) => {
   console.log(`Server running on ${PORT}..`)
});