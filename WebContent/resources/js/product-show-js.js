
/* 用于高级查询分页 */
	function goPage(pageIndex) {
		$("#pageIndex").val(pageIndex);
		$("#searchForm").submit();
	}
	
	/* 删除商品  */
	function delProduct(id) {
		var isDel = confirm("确定删除？");
		if (isDel) {
			location.href = urlPRC + "/product/delProduct.action?id=" + id;
		}
	}
	
	/* 更改商品状态  */
	function updateStatus(id, status) {
		var isUpdate = confirm("确定修改？");
		if (isUpdate) {
			location.href = urlPRC + "/product/updateStatus.action?id=" + id + "&status=" + status;
		}
	}
	
	/* 批量删除  */
	function deleteAll() {
		var isDel = confirm("确定删除？");
		if (isDel) {
		$("#delForm").attr("action", urlPRC + "/product/delAll.action");
		$("#delForm").submit();
		}
	}
	
	/* 全选CheckBox */
	function selectAll() {
		$("input[name=selectIds]").prop("checked", $("#selectAlls").is(":checked"))
	}
	
	/* 更改商品根据id */
	function update(id) {
		location.href=urlPRC + "/product/toUpdateProduct.action?id=" + id;
	}
	
	/* 批量修改 */
	function updateAllStatus() {
		var isUpdate = confirm("确定修改？");
		if (isUpdate) {
		
			//var statusIds = $("#statusId").val();
			$("#delForm").attr("action", urlPRC + "${prc }/product/updateAllStatus.action");
			$("#delForm").submit();
		}
	}