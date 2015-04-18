/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkEmail(inputvalue){	
    var pattern=/^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
    if(pattern.test(inputvalue)){ 
        
    }else{   
        alert("Invalid Email (xxx@xxx.xx)");
        document.getElementById('username').value ="";      
    }
}


function chkpass()
{
    var pass = document.getElementById('pass').value;
    var repass = document.getElementById('repass').value;
    if(pass == ""){
        
    }else{
        if(pass != repass){
            alert("Password Not Match");
            document.getElementById('repass').value = "";
        }
    }
}

function sub(){
    var user = document.getElementById('username').value;
    var pass = document.getElementById('pass').value;
    var repass = document.getElementById('repass').value;
    var chksub;
    if(user == ""){
        alert("Please input E-mail");
        chksub = false;
    }else if(pass == ""){
        alert("Please input password");
        document.getElementById('pass').focus();
        chksub = false;
    }else if(repass == ""){
        alert("Please input password again");
        document.getElementById('repass').focus();
        chksub = false;
    }else if(pass != repass){
        chkpass();
        chksub = false;
    }else{
        chksub = true;
    }
    return chksub;
}