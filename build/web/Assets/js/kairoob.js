/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkEmail(inputvalue) {
    var pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
    if (pattern.test(inputvalue)) {

    } else {
        alert("Invalid Email (xxx@xxx.xx)");
        document.getElementById('username').value = "";
    }
}


function chkpass()
{
    var pass = document.getElementById('pass').value;
    var repass = document.getElementById('repass').value;
    if (pass == "") {

    } else {
        if (pass != repass) {
            alert("Password Not Match");
            document.getElementById('repass').value = "";
        }
    }
}

function sub() {
    var user = document.getElementById('username').value;
    var pass = document.getElementById('pass').value;
    var repass = document.getElementById('repass').value;
    var pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
    var chksub;
    if (pattern.test(user)) {
        if (pass == "" || repass == "") {
            alert("Please enter empty field");
            chksub = false;
        }
        if (pass != repass) {
            alert("Password are not match");
            document.getElementById('pass').value = "";
            document.getElementById('repass').value = "";
            chksub = false;
        } else {
            chksub = true;
        }
    } else {
        alert("Invalid Email (xxx@xxx.xx)");
        document.getElementById('username').value = "";
        chksub = false;
    }

    return chksub;
}

function addtocart(){
    document.getElementById("addcart").submit();
}
