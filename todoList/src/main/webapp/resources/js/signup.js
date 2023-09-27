const checkObj = {
	"inputId" : false,
	"inputPw" : false,
	"inputPwRe" : false,
	"inputNickname" : false
}

let inputId = document.getElementById("inputId");
let inputPw = document.getElementById("inputPw");
let inputPwRe = document.getElementById("inputPwRe");
let pwMassage = document.getElementById("pwMessage");
let inputNickname = document.getElementById("inputNickname");
let nicknameMassage = document.getElementById("nameMassage")

inputId.addEventListener("change", () => {
	
	const regExp = /^[a-z][\w-_]{5,13}$/;
	
	if(regExp.test(inputId.value)) {
		inputId.style.backgroundColor = "green";
		inputId.style.color = "white";
	} else {
		inputId.style.backgroundColor = "red";
		inputId.style.color = "white";
	}
	
});

inputPwRe.addEventListener("keydown", () => {
	
	if(inputPw.value.length == 0) {
		inputPw.value = "";
		alert("비밀번호를 입력해주세요.");
		inputPw.focus();
		checkObj.inputPw = false;
	}
	
});


inputPw.addEventListener("keydown", () => {
	
	if((inputPw.value == inputPwRe.value) && inputPw.value.length != 0) {
		pwMassage.innerText = "비밀번호 일치";
		pwMassage.classList.add("confirm");
		pwMassage.classList.remove("error");
		checkObj.inputPw = true;
		checkObj.inputPwRe = true;
	} else {
		pwMassage.innerText = "비밀번호 불일치";
		pwMassage.classList.add("error");
		pwMassage.classList.remove("confirm");
		checkObj.inputPwRe = false;
	}
	
});

inputPwRe.addEventListener("keydown", () => {
	
	if((inputPw.value == inputPwRe.value) && inputPw.value.length != 0) {
		pwMassage.innerText = "비밀번호 일치";
		pwMassage.classList.add("confirm");
		pwMassage.classList.remove("error");
		checkObj.inputPw = true;
		checkObj.inputPwRe = true;
	} else {
		pwMassage.innerText = "비밀번호 불일치";
		pwMassage.classList.add("error");
		pwMassage.classList.remove("confirm");
		checkObj.inputPwRe = false;
	}
	
});

inputNickname.addEventListener("change", () => {
	
	const regExp = /^[가-힣]{2,5}$/;
	
	if(regExp.test(inputNickname.value)) {
		nicknameMassage.innerText = "정상입력";
		nicknameMassage.classList.add("confirm");
		nicknameMassage.classList.remove("error");
		checkObj.inputNickname = true;
	} else {
		nicknameMassage.innerText = "정상입력";
		nicknameMassage.classList.add("error");
		nicknameMassage.classList.remove("confirm");
		checkObj.inputNickname = false;
	}
	
});

function validate() {
	for(let key in checkObj) {
		if(!checkObj[key]) {
			return false;
		}
	}
	alert("회원가입 완료!");
	return true;

}






















