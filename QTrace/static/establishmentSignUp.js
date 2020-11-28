const logo = document.getElementById("logo");
const tag = document.getElementById("tag");
var labels = document.querySelectorAll(".labels");
var inputs = document.getElementsByTagName("input");
const agreement = document.getElementsByTagName("p");
const signup = document.getElementById("signup");
const signin = document.getElementById("signin");
var subMessages = document.querySelectorAll(".subMessage");
const signinMessage = document.getElementById("signinMessage");
const QTraceLogo = document.getElementById("QTraceLogo");

var w = document.documentElement.clientWidth;
window.addEventListener("resize", function(){
    w = document.documentElement.clientWidth
    formatting();
})


function formatting(){
    if (w < 600){
        logo.classList.add("MdisplaySmallBold");
        tag.classList.add("MtextSmall")
        for (var i = 0; i < labels.length; i++){
            labels[i].classList.add("MtextSmall");
        }
        for (var j = 0; j < inputs.length; j++){
            inputs[j].classList.add("MtextMedium")
        }
        for (var k = 0; k < subMessages.length; k++){
            subMessages[k].classList.add("MtextSmall");
        }
        agreement[0].classList.add("MtextXSmall");  
        signup.classList.add("primaryButton");
        signup.classList.add("MtextSmall");
        signin.classList.add("secondaryButton");
        signin.classList.add("MtextSmall");
        signinMessage.classList.add("MtextXSmall");
    }
    else{
        QTraceLogo.classList.add("displaySmallBold");
        logo.classList.remove("MdisplaySmallBold");
        logo.classList.add("displayLargeBold");
        tag.classList.remove("MtextSmall");
        tag.classList.add("textLarge");
        tag.innerHTML = "A smarter way to handle Outbreaks";
        for (var i = 0; i < labels.length; i++){
            labels[i].classList.add("MtextSmall");
        }
        for (var j = 0; j < inputs.length; j++){
            inputs[j].classList.add("MtextMedium")
        }
        for (var k = 0; k < subMessages.length; k++){
            subMessages[k].classList.add("MtextSmall");
        }
        agreement[0].classList.add("MtextXSmall");  
        signup.classList.add("primaryButton");
        signup.classList.add("MtextSmall");
        signin.classList.add("secondaryButton");
        signin.classList.add("MtextSmall");
        signinMessage.classList.add("MtextXSmall");
    }   

}