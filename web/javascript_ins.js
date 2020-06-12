/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var id;
var name;
var age;
var occupation;
var address;
var hobbies;


function init()
{
    alert("You chose to insert an element");
}

window.onload = init();
function validate_length()
{
    id = document.forms["fine_form_1"]["id"].value;
    name = document.forms["fine_form_1"]["first_name"].value;
    age = document.forms["fine_form_1"]["age"].value;
    occupation = document.forms["fine_form_1"]["occupation"].value;
    address = document.forms["fine_form_1"]["address"].value;
    occupation = document.forms["fine_form_1"]["address"].value;
    if((id.length > 5) || (id === null)){
        alert("Invalid ID length");
        return false;
    }
    else if((name.length > 30) || (name === null) || (name === ""))
    {
        alert("Invalid name length");
        return false;
    }
    else if((age.length > 2) || (id === null))
    {
        alert("Invalid age length");
        return false;
    }
    else if((occupation.length > 25) || (occupation === null) || (occupation === ""))
    {
        alert("Invalid occupation length");
        return false;
    }
    else if((address === null) || (address === ""))
    {
        alert("Please enter address");
        return false;
    }
    else if((hobbies.length > 100) || (hobbies === null) || (hobbies === ""))
    {
        alert("Invalid hobbies length");
        return false;
    }
}