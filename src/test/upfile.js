const helpers = require('../lib/helpers');
const router =  require('express').Router();
const fileUpload = require('express-fileupload')

const {isLoggedIn, isNotLoggedIn} =require('../lib/auth');



router.get('/',isLoggedIn,(req,res)=>{    
    res.render("./upfile/upfile")

})

router.post('/a',isLoggedIn,async(req,res)=>{
    if(req.files===null){
       
        console.log("null");
        req.flash('message',"not file");
        return    res.redirect("/upfile")
    }
    const check = [	'image/jpeg','image/png']
    const a = req.files.file.mimetype;
    console.log(req.body);
    console.log(req.files.file);
    

    console.log(check.indexOf(a)===1);    
    
      


     if(check.indexOf(a)===1){
     let file = req.files.file;
     await file.mv(upfile_+ file.name,(e)=>console.log("subido"))  
     res.redirect("/upfile")
     
     }
     else{
        req.flash('message',"Ingrese un tipo de archivo valido");
        res.redirect("/upfile")
     }

     
     
     
    
})

module.exports= {router,
    fileUpload};