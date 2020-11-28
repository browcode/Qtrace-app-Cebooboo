const update1 = document.getElementById("update1");
const update2 = document.getElementById("update2");
const update3 = document.getElementById("update3");
const update4 = document.getElementById("update4");
const update5 = document.getElementById("update5");

const mask = document.getElementById("mask");
const update1Info = document.getElementById("update1Info");


function showInfo(){
    mask.classList.add("appearMask");
    mask.classList.remove("disappearMask");
    update1Info.classList.add("appearInfo");
    update1Info.classList.remove("disappearInfo");
}

function hideInfo(){
    mask.classList.remove("appear");
    mask.classList.add("disappearMask");
    update1Info.classList.remove("appearInfo");
    update1Info.classList.add("disappearInfo");
}
update1.addEventListener("click", showInfo);
update2.addEventListener("click", showInfo);
update3.addEventListener("click", showInfo);
update4.addEventListener("click", showInfo);
update5.addEventListener("click", showInfo);
mask.addEventListener("click", hideInfo); 