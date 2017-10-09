    
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
	
	
	/* 用于商品图片的回显 */
    $(function() {
			var div = $('#J_imageView');
			var imgArray = [];
			div.html('');
			for ( var int = 0; int < strs.length; int++) {
				imgArray.push(strs[int]);
				$("#J_imageView").append('<img src="/pic/' + strs[int] + '" width="50px" height="80px">');
			} 
			$("#subImages").val(imgArray.join(","));
		});
    /* 回显  */
    $(function() {
    	$("#status option[value='"+status+"']").prop("selected", true);
    });
    
    /* 二级联动的回显 */
    $(function(){
        $.ajax({
        	url : urlPRC + "/category/categoryParent.action",
        	async:false,
            type: 'POST',
            dataType: 'JSON',
            //error: function() {alert('加载数据异常，请重试!');},
            success: function(data) {
                //$("#departmentId").empty();
               /* $.each(eval(data), function(data,textStatus,ajax) {
                    $("<option id='op' value='"+data.id+"'>"+data.name+"</option>").appendTo($("#categoryParentId"));
                });*/
                for(var i=0;i<data.length;i++){
                	
                	if (parenId != 0) {
                		if  (data[i].id != parenId) {
                    		$("<option id='op' value='"+data[i].id+"'>"+data[i].name+"</option>").appendTo($("#categoryParentId"));
                    	} else {
                    		$("<option value='" + data[i].id + "'selected='selected' >" + data[i].name + "</option>").appendTo($("#categoryParentId"));
                    	}
                	} else if (parenId == 0) {
                		if  (data[i].id != childId) {
                    		$("<option id='op' value='"+data[i].id+"'>"+data[i].name+"</option>").appendTo($("#categoryParentId"));
                    	} else {
                    		$("<option value='" + data[i].id + "'selected='selected' >" + data[i].name + "</option>").appendTo($("#categoryParentId"));
                    	}
                	}
                	
                }
                
              }
          });
        
        if (parenId !=0 ) {
        	$("#categoryChildId option:gt(0)").remove();
            $.ajax({
            	url : urlPRC + "/category/category.action",
            	data:"parentId="+parenId,
            	async:false,
            	type: 'POST',
            	dataType: 'JSON',
                error: function() { alert('加载数据异常，请重试!'); },
                success: function(data,textStatus,ajax) {
                    
               	 if ($("#categoryParentId").val() != 0) {
               		 
               		 for(var i=0;i<data.length;i++){
               			 if  (data[i].id != childId) {
               				 $("<option id='op' value='"+data[i].id+"'>"+data[i].name+"</option>").appendTo($("#categoryChildId"));
               			 } else {
               				 $("<option value='" + data[i].id + "'selected='selected' >" + data[i].name + "</option>").appendTo($("#categoryChildId"));
               			 }
               		 }
               	 }
                    } 
                
             });
        } else if (parenId == 0) {
        	$("#categoryChildId option:gt(0)").remove();
            $.ajax({
            	url : urlPRC + "/category/category.action",
            	data:"parentId="+childId,
            	async:false,
            	type: 'POST',
            	dataType: 'JSON',
                error: function() { alert('加载数据异常，请重试!'); },
                success: function(data,textStatus,ajax) {
                    
               	 if ($("#categoryParentId").val() != 0) {
               		 
               		 for(var i=0;i<data.length;i++){
               			 if  (data[i].id != childId) {
               				 $("<option id='op' value='"+data[i].id+"'>"+data[i].name+"</option>").appendTo($("#categoryChildId"));
               			 } else {
               				 $("<option value='" + data[i].id + "'selected='selected' >" + data[i].name + "</option>").appendTo($("#categoryChildId"));
               			 }
               		 }
               	 }
                    } 
                
             });
        	
        }
    	 
         
         var categoryParentVal = $("#categoryParentId").val();
 		var categoryVal = $("#categoryChildId").val();
 		
 		if (categoryVal != '') {
 			$("#categoryId").val(categoryVal);
 		} else {
 			$("#categoryId").val(categoryParentVal);
 		}
     
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
     
         
    