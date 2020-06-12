/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var id;

function init()
{
    alert("You chose to delete an element");
}
function validate_length()
{
    id = document.forms["delete_rec"]["id"].value;
    if((id.length > 5) || (id === null)){
        alert("Invalid ID length");
        return false;
    }
}
window.onload = init();