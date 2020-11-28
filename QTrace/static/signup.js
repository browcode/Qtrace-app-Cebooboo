const signupMessage = document.getElementById("signupMessage");
const signinMessage = document.getElementById("signinMessage");
const tag = document.getElementById("tag");
const citizen = document.getElementById("citizen");
const establishment = document.getElementById("establishment");


function formatting(){
    signupMessage.classList.add("MdisplayLargeBold");
    signinMessage.classList.add("MtextXSmall");
    tag.classList.add("textSmall");
    citizen.classList.add("primaryButton");
    citizen.classList.add("textSmall");
    establishment.classList.add("secondaryButton");
    establishment.classList.add("textXSmall");
}