/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var id;
var first_name;
var last_name;
var address;


function init()
{
    alert("You chose to update an element");
}

window.onload = init();
function validate_length()
{
    id = document.forms["update_1"]["id"].value;
    new_val = document.forms["update_1"]["new_val"].value;
    if((id.length > 5) || (id === null)){
        alert("Invalid ID length");
        return false;
    }
    else if((new_val.length > 15) || (new_val === null) || (new_val === ""))
    {
        alert("Invalid update value length");
        return false;
    }
}