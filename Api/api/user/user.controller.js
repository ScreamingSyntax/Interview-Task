const {GetName:getNameService} = require("./user.service");

module.exports = {
    getName:(req,res)=>{
        getNameService((err,results)=>{
            return res.json({
                success:0,
                message:results
            })
        })
    }
}