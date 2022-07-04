var check = false;
var form = document.joinForm;
//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
//(?=.*?문자) : 각각의 모든 대상을 '문자'로 검사한다.
var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
//같은 문자 4번 이상
var wordCheck = /(\w)\1\1\1/;
//공백검사
var spaceCheck = /\s/;

function checkId(){
    var xhr = new XMLHttpRequest();

    xhr.open("get", "joinOk.jsp?userId=" + form.userId.value);
    xhr.send();

    xhr.onreadystatechange = function(){
        if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){

        }
    }
}

document.querySelector("input[name='userPw']").addEventListener("blur", function(){
    if(!pwCheck.test(form.userPw.value)){
        document.getElementById("pwCheck").innerHTML = "비밀번호는 8자리 이상이어야 하며, 대문자/소문자/숫자/특수문자 모두 포함해야 합니다.";
        form.userPw.focus();
    }else if(hangleCheck.test(form.userPw.value)){
        document.getElementById("pwCheck").innerHTML = "한글은 사용하실 수 없습니다.";
        form.userPw.focus();
    }else if(wordCheck.test(form.userPw.value)){
        document.getElementById("pwCheck").innerHTML = "같은 문자를 4번 이상 사용하실 수 없습니다.";
        form.userPw.focus();
    }else if(form.userPw.value.search(form.userId.value) != -1){
        document.getElementById("pwCheck").innerHTML = "비밀번호에 아이디를 포함시킬 수 없습니다.";
        form.userPw.focus();
    }else if(spaceCheck.test(form.userPw.value)){
        document.getElementById("pwCheck").innerHTML = "공백을 사용하실 수 없습니다.";
        form.userPw.focus();
    }else{
        document.getElementById("pwCheck").innerHTML = "이 정도면 되었다.";
        form.rePw.focus();
        check = true;
    }
});

document.querySelector("input[name='rePw']").addEventListener("blur", function(){
    check = false;
    if(this.value != document.querySelector("input[name='userPw']").value){
        document.getElementById("pwReCheck").innerHTML = "비밀번호가 일치하지 않습니다.";
        form.userPw.focus();
    }else{
        document.getElementById("pwReCheck").innerHTML = "비밀번호가 일치합니다.";
        check = true;
    }
});

function join(){
    if(!form.userId.value){
        alert("아이디를 입력해주세요.");
        form.userId.focus();
        return;
    }

    if(form.userId.value.length < 4 || form.userId.value.length > 16) {
        alert("아이디는 4자 이상, 16자 이하로 입력해주세요.");
        form.userId.focus();
        return;
    }

    if(!form.userPw.value){
        alert("패스워드를 입력해주세요.");
        form.userPw.focus();
        return;
    }

    if(check){
        form.submit();
    }
}