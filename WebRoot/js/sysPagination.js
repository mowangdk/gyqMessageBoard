var pageNo_ = 1;	//当前页
var pageSize_ = 5;//每页行数
var reqMethod_;		//请求方法
var Pagination = {
	pageBottom :function(pageInfo,reqMethod,elem,isAppend) {
		reqMethod_ = reqMethod;
		pageNo_ = pageInfo.page;
		pageSize_ = pageInfo.limit;
		var pageCount = pageInfo.pageCount;
		var i = 1;
		//设置循环的起始位置
		//当前页数大于第三页并且当前页数+2小于等于总页数
		if (pageCount > 5) {
			if (pageInfo.page > 3 && pageInfo.page + 2 <= pageCount){
				//起始位置为当前页-2
				i = pageInfo.page - 2;
			//如果当前页+2大于总页数
			}else if (pageInfo.page + 2 > pageCount){
				//总页数-4
				i = pageCount - 4;
			}
		}
		//--------------------------------
		if (pageInfo.pageCount >= 5 && pageInfo.page <= 3){
			pageCount = 5;
		}else if (pageInfo.pageCount >= pageInfo.page + 2){
			pageCount = pageInfo.page + 2;
		}else if (pageInfo.pageCount < pageInfo.page + 2){
			pageCount = pageInfo.pageCount;
		}
		
		var p_html = '<div class="container-fluid" style="left:-20px;position: relative;">';
		p_html += '<div class="row" >';
		p_html += '<div class="col-md-12">';
		p_html += '<div class="btn-group btn-group-justified" role="group" aria-label="">';
		p_html += '<ul class="pagination pull-right" style="margin-left:10px;padding-top: 5px;">';
		p_html += '<li><b> 共' + pageInfo.pageCount + '页</b></li>';
		p_html += '<li><b> ' + pageInfo.rowCount + '行</b></li>';
		p_html += '<li><b>&nbsp;&nbsp;到</b></li>';
		p_html += '<li><input id="pageNo" type="text" data-pageCount="' + pageInfo.pageCount + '" value="' + pageInfo.page + '" style="width:50px;"/></li>';
		p_html += '<li><b>页</b></li>';
		p_html += '<button onclick="Pagination.toPage();return false;">刷新</button>';
		p_html += '</ul>';
		p_html += '<ul class="pagination pull-right">';
		if(pageInfo.page > 1){
			p_html += '<li><a href="javascript:void(0);" id="1" onclick="Pagination.toPage(1)">首页</a></li>';
			p_html += '<li><a href="javascript:void(0);" id="'+(pageInfo.page - 1)+'" onclick="Pagination.toPage('+(pageInfo.page - 1)+')">上一页</a></li>';
		}
		for (i; i < pageCount + 1; i++) {
			if(i == pageInfo.page){
				p_html += '<li class="active"><a href="javascript:void(0);">'+i+'</a></li>';
			}else{
				p_html += '<li class=""><a href="javascript:void(0);" onclick="Pagination.toPage('+i+')">'+i+'</a></li>';
			}
		}
		if(pageInfo.page != pageInfo.pageCount){
			p_html += '<li><a href="javascript:void(0);" id="'+(pageInfo.page + 1)+'" onclick="Pagination.toPage('+(pageInfo.page + 1)+')">下一页</a></li>';
			p_html += '<li><a href="javascript:void(0);" id="'+pageInfo.pageCount+'" onclick="Pagination.toPage('+pageInfo.pageCount+')">尾页</a></li>';
		}
		p_html += '</ul></div></div></div></div>';
		
		if(isAppend){
			$(elem).append(p_html);
		}else{
			$(elem).html(p_html);
		}
		$('#pageNo').unbind('input propertychange').bind('input propertychange', function() {
			Pagination.change($('#pageNo').val());
		});
	},
	change : function(str) { // 判断input 只能输入数字并且 不能大于total数
		var total = parseInt($('#pageNo').attr('data-pageCount'));
		if(str){
			var temp = str.replace(/\D/gi, "");
			if(temp){
				if(temp <= 0){
					document.getElementById("pageNo").value = 1;	
				}else if(temp > total){
					document.getElementById("pageNo").value = total;	
				}else{
					document.getElementById("pageNo").value = parseInt(temp);
				}
			}else{
				document.getElementById("pageNo").value = 1;	
			}
		}else{
			document.getElementById("pageNo").value = 1;
		}
	},
	toPage : function(pageNo){
		if(pageNo){
			pageNo_ = pageNo;
		}else{
			pageNo_ = $("#pageNo").val();
		}
		eval(reqMethod_);
	}
};