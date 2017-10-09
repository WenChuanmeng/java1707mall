$(function() {
				$("#username").blur(function() {
					var username = $("#username").val();
					$.ajax({
						url : urlPRC + "/register/checkUsername.shtml",
						type : "post",
						data : "username=" + username,
						dataType : "json",
						success : function(data) {
							if (data.isExist) {
								$("#usernameSpan").html("用户名已经存在");
								$("#usernameSpan").css("color", "red");
							} else {
								$("#usernameSpan").html("用户名可以使用");
								$("#usernameSpan").css("color", "green");
							}
						}
					
					});
				});
			});
			
			$(function () {
				$("#repassword").blur(function () {
						if ($("#repassword").val() == $("#password").val()) {
							$("#repasswordSpan").html("");
						}
						if ($("#repassword").val() != $("#password").val()) {
							$("#repasswordSpan").html("两次密码不一致");
							$("#repasswordSpan").css("color", "red");
						}
				});
			});
			
			$(function() {
				$("#sub").bind("click", function(event) {
					if ($("#repassword").val() != $("#password").val()) {
						$("#repasswordSpan").html("两次密码不一致");
						$("#repasswordSpan").css("color", "red");
						return false;
					}
				});
			})