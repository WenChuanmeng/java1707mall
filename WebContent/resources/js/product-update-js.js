    
	/* 上传图片  */
	function uploadPic() {
		var options={
				url : urlPRC + "/product/uploadPic.action",
				dataType : "json",
				type : "post",
				success : function(data) {
					$("#imgId").attr("src", "/pic/" + data.fileName);
					$("#imgSrc").val(data.fileName);
				}
		};
		$("#form-add").ajaxSubmit(options);
	}
    
    /* 回显  */
    $(function() {
    	$("#status option[value='"+status+"']").prop("selected", true);
    });
    
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
    