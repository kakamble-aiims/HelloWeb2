/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var request;  
function sendInfo()  
{  
var v=document.forms["search_rec"]["id"].value;  
var url="search_reco.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  

function sendNameInfo()  
{  
var v=document.forms["search_rec"]["name"].value;  
var url="search_reco_name.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}

function getInfo(){  
    if(request.readyState===4){  
        var v=document.forms["search_rec"]["name"].value;
        var val=request.responseText;
        var elems = val.trim().split("\t");
        //var newRow = "<tr><td>"+elems[0]+"</td><td>"+elems[1]+"</td><td>"+elems[2]+"</td><td>"+elems[3]+"</td><td>"+address+"</td><td>"+elems[5]+"</td></tr>";
        //console.log(newRow);
        var tableRef = document.getElementById('search_table').getElementsByTagName('tbody')[0];
        var newText = document.createTextNode(elems[0]);
        var valCheck = document.getElementById('search_table'); //find('tr').eq(newText).eq(1).text()
        var fl = 0;
        for (var r = 0, n = valCheck.rows.length; r < n; r++) {
            for (var c = 0; c < 1; c++) {
                var check = valCheck.rows[r].cells[c].innerHTML;
                console.log(check);
                if(check === elems[0] || v === "")
                {
                    fl = 1;
                    break;
                }
                if(fl === 1)
                    break;
            }
        }
        if (fl === 0)
        {
            var newRow = tableRef.insertRow();
            var newCell = newRow.insertCell(0);
            newCell.appendChild(newText);
            newCell = newRow.insertCell(1);
            newText = document.createTextNode(elems[1]);
            newCell.appendChild(newText);
            newCell = newRow.insertCell(2);
            newText = document.createTextNode(elems[2]);
            newCell.appendChild(newText);
            newCell = newRow.insertCell(3);
            newText = document.createTextNode(elems[3]);
            newCell.appendChild(newText);
            newCell = newRow.insertCell(4);
            var address = elems[4].trim();
            newText = document.createTextNode(address);
            newCell.appendChild(newText);
            newCell = newRow.insertCell(5);
            newText = document.createTextNode(elems[5]);
            newCell.appendChild(newText);
        }
    }  
}