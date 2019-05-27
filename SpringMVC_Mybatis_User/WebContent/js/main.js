function del() {
	let r = confirm("确定删除该用户吗？")
	if (r == true) {
		window.history.go(0);
		return true;
	} else {
		return false;
	}
}

function check() {

	var uname = $("#uname").val();
	if (uname == null || uname == "") {
		$("#unamenullerr").html("名字不能为空！");
		return false;
	}

	var usex = $("#usex").val();
	if (usex == null || usex == "") {
		$("#usexnullerr").html("性别不能为空！");
		return false;
	}
	return submit_confirm();
}

function submit_confirm() {

	let r = confirm("确定添加用户吗？")
	if (r == true) {
		return true;
	} else {
		return false;
	}
	return false;
}

function reset_confirm() {
	let r = confirm("确定重置用户信息吗？")
	if (r == true) {
		return true;
	} else {
		return false;
	}
}

function back_confirm() {

	let go = confirm("确定放弃编辑并返回用户列表吗？");
	if (go == true) {
		window.history.go(-1);
		return true;
	} else {
		return false;
	}
}

function edit_confirm() {

	let go = confirm("确定提交该用户信息吗？");
	if (go == true) {
		window.history.go(-1);
		return true;
	} else {
		return false;
	}
}



// id确认 https://www.jb51.net/article/107346.htm
// 分页https://www.cnblogs.com/xuan584521/p/6562246.html
