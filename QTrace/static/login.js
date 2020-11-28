const logo = document.getElementById("logo");
const tag = document.getElementById("tag");
const signup = document.getElementById("signup");
const signin = document.getElementById("signin");
const username = document.getElementById("username");
const password = document.getElementById("password");

function formatting(){
    logo.classList.add("MdisplayMediumBold");
    tag.classList.add("MtextSmall");
    signin.classList.add("primaryButton");
    signin.classList.add("MlinkSmall");
    signup.classList.add("secondaryButton");
    signup.classList.add("MlinkSmall");
    username.classList.add("MtextMedium");
    password.classList.add("MtextMedium");
}