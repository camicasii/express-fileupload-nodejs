const helpers = require('../lib/helpers');
const router =  require('express').Router();
const fileUpload = require('express-fileupload')






router.get('/',(req,res)=>{    
    res.render("./upfile/upfile")

})

router.post('/a',async(req,res)=>{
    if(req.files===null){
        req.flash('message',"not file");
        return    res.redirect("/upfile")
    }
     
     let file = req.files.file;
     await file.mv(upfile_+ file.name,(e)=>{
         console.log(e)
         
     })     
     
     
     res.redirect("/upfile")
    
})







module.exports= {router,
    fileUpload};