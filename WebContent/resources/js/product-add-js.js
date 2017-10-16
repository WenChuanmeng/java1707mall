
/*添加商品*/
function subForm() {
	var options = {
		url : urlPRC + "/product/addProductByJson.action",
		type : "post",
		datatype : "json",
		data : $("#form-add").serialize(),
		success : function (data) {
			/*if (data.status == 0) {
				alert(data.msg);
			} else {
				alert(data.msg);
			}*/
			if (data.status == 0) {
				layer.confirm(
						"添加成功", 
						{btn:['关闭','跳转到列表界面']}, 
						function(index){
							layer.close(index)
						},
						function () {
							window.location.href= urlPRC + "/product/pageList.action"
						}
					);
			} else {
				layer.msg("添加失败");
			}
		}
	};
	
	$.ajax(options);
}

/* 上传图片  */
function uploadPic() {
		var options={
				url : urlPRC + "/uploadPic/uploadPic.action",
				dataType : "json",
				type : "post",
				success : function(data) {
					$("#imgId").attr("src", data.filePath);
					$("#mainImage").val(data.fileName);
				}
		};
		$("#form-add").ajaxSubmit(options);
	}

	/* 商品分类二级联动 开始 */
	$(function() {
        $.ajax({
            url : urlPRC + "/category/categoryParent.action",
            dataType:"json",
            success:function(data,textStatus,ajax){
               //append_template(data, "province");
               var html = "<option value=''>-请选择-</option>";
               for(var i=0;i<data.length;i++){
                   html +="<option value='"+data[i].id+"'>"+data[i].name+"</option>";
               }
                $("#categoryParentId").html(html);
            }
        });
    });
    
    function selectCategories(obj) {
    	$("#categoryId").val($("#categoryParentId").val());
        var parentId = $(obj).val();
        //清空子类下拉框中的内容，出第一项外
        $("#categoryChildId option:gt(0)").remove();
        $.ajax({
            url : urlPRC + "/category/category.action",
            data:"parentId="+parentId,
            dataType:"json",
            success:function(data,textStatus,ajax){
               //append_template(data, "city");
               
               var html = "<option value=''>-请选择-</option>";
               for(var i=0;i<data.length;i++){
                   html +="<option value='"+data[i].id+"'>"+data[i].name+"</option>";
               }
               $("#categoryChildId").html(html);
            }
        });
    }
    
    function selectId() {
		var categoryParentVal = $("#categoryParentId").val();
		var categoryVal = $("#categoryChildId").val();
		
		if (categoryVal != '') {
			$("#categoryId").val(categoryVal);
		} else {
			$("#categoryId").val(categoryParentVal);
		}
	}
    
	
   //封装其通用内容
    function append_template(jsonData,target){
        var length = jsonData.length;
        var html = "<option value=''>-请选择-</option>";
        for(var i=0;i<length;i++){
            html +="<option value='"+data[i].id+"'>"+data[i].name+"</option>";
        }
        $("#"+target).html(html);
    }; 
	/* 商品分类二级联动 结束 */
    
    
    var myKindEditor ;
    KindEditor.ready(function(K) {
    	
    	var kingEditorParams = {
    			//指定上传文件参数名称
    			filePostName  : "pictureFile",
    			//指定上传文件请求的url。
    			uploadJson : urlPRC + '/uploadPic/pic.action',
    			//上传类型，分别为image、flash、media、file
    			dir : "image",
    			afterBlur: function () { this.sync(); }
    	}
    	
    	var editor = K.editor(kingEditorParams);
		K('#picFileUpload').click(function() {
			editor.loadPlugin('multiimage', function() {
				editor.plugin.multiImageDialog({
					clickFn : function(urlList) {
						var div = K('#J_imageView');
						var imgArray = [];
						div.html('');
						K.each(urlList, function(i, data) {
							var urlStr = data.url;
 							var urlIndex = urlStr.lastIndexOf("/") + 1;
 							var fileName = urlStr.substr(urlIndex, urlStr.length);
 							imgArray.push(fileName);
 							div.append('<img src="' + urlStr + '" width="50px" height="80px">');
 						});
						$("#subImages").val(imgArray.join(","));
						editor.hideDialog();
					}
				});
			});
		});
		//富文本编辑器
		myKindEditor = KindEditor.create('#form-add[name=detail]', kingEditorParams);
	});
    
    
	