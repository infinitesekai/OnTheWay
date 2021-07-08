//get the request
var requestModal = document.getElementById("myRequest");

//get the button that open the request 
var btn=document.getElementById("requestBtn");

//get the span element to close the request
var span = document.getElementsByClassName("close")[0];

var buttonPrint = document.getElementsByClassName("buttonSubmit")[0];

var requestConfirm = document.getElementById("myHelp");

var helpBtn=document.getElementById("helpButton");

var span2 = document.getElementsByClassName("close")[1];

var buttonHelp = document.getElementsByClassName("buttonHelp")[0];

//when the user clicks the button, open request
btn.onclick = function(){
    requestModal.style.display="block";
}

//when user click close symbol close
span.onclick = function(){
    requestModal.style.display="none";
}

//when user click anywhere to close the reqyuest
window.onclick = function(event){
    if (event.target == requestModal){
        requestModal.style.display="none";
    }
}

buttonPrint.onclick = function(){
   alert("Submit successfully");
   requestModal.style.display="none";
}

helpBtn.onclick = function(){
    requestConfirm.style.display="block";
}

//when user click close symbol close
span2.onclick = function(){
    requestConfirm.style.display="none";
}

//when user click anywhere to close the reqyuest
window.onclick = function(event){
    if (event.target == requestConfirm){
        requestConfirm.style.display="none";
    }
}

buttonHelp.onclick = function(){
   alert("Help Confirmed.");
   requestConfirm.style.display="none";
}