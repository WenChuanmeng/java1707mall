
	/* 用于高级查询分页 */
	function goPage(pageIndex) {
		$("#pageIndex").val(pageIndex);
		$("#searchForm").submit();
	}
	
	/* 删除商品  */
	function delProduct(id) {
		var isDel = confirm("确定删除？");
		if (isDel) {
			location.href= urlPRC + "/category/delCategory.action?id=" + id;
		}
	}
	
	/* 更改商品状态  */
	function updateStatus(id, status) {
		var isUpdate = confirm("确定修改？");
		if (isUpdate) {
			location.href= urlPRC + "/category/updateStatus.action?id=" + id + "&status=" + status;
		}
	}
	
	/* 批量删除  */
	function deleteAll() {
		var isDel = confirm("确定删除？");
		if (isDel) {
		$("#delForm").attr("action", urlPRC + "/category/delAll.action");
		$("#delForm").submit();
		}
	}
	
	/* 全选CheckBox */
	function selectAll() {
		$("input[name=selectIds]").prop("checked", $("#selectAlls").is(":checked"))
	}
	/* 回显 */
	$(function() {
		$("#categorySelect option[value='${condition.category.parentId}']").prop("selected", true);
	});
	
	/* 批量修改 */
	function updateAllStatus() {
		var isUpdate = confirm("确定修改？");
		if (isUpdate) {
		
			//var statusIds = $("#statusId").val();
			$("#delForm").attr("action", urlPRC + "/category/updateAllStatus.action");
			$("#delForm").submit();
		}
	}