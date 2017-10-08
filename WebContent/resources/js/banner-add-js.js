
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
	});
    
    
	