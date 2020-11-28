const logo = document.getElementById("logo");
const tag = document.getElementById("tag");
const signinMessage = document.getElementById("signinMessage");
const signup = document.getElementById("signup");

function formatting(){
    logo.classList.add("displayLargeBold");
    tag.classList.add("textSmall");
    signinMessage.classList.add("textXSmall");
    signup.classList.add("primaryButton");
    signup.classList.add("textSmall");
}

