
$(document).ready(function(){
	 $('#batter').click(function (){
    $.ajax({
        type : "post", 
        url : "js/data_batter.jsp",
        dataType : "html",
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(resulttable){
            $("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
            alert("batter data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#pitcher').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/data_pitcher.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(resulttable){
            $("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	$('#yearSelect').on('change',function(){
		if(this.value != "2019"){
		$.ajax({
		type: "post",
		url: "js/nodata.jsp",
		dataType: "html",
		success: function(resulttable){
			$("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
			}
		});
		
		}
	});

});

$(document).ready(function(){
	$('#yearSelect').on('change',function(){
		if(this.value == "2019"){
		$.ajax({
		type: "post",
		url: "js/data_batter.jsp",
		dataType: "html",
		success: function(resulttable){
			$("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
			}
		});
		
		}
	});

});

$(document).ready(function(){
	$('#seasonSelect').on('change',function(){
		if(this.value == "regular"){
		$.ajax({
		type: "post",
		url: "js/data_batter.jsp",
		dataType: "html",
		success: function(resulttable){
			$("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
			}
		});
		
		}
	});

});

$(document).ready(function(){
	$('#seasonSelect').on('change',function(){
		if(this.value == "post"){
		$.ajax({
		type: "post",
		url: "js/nodata.jsp",
		dataType: "html",
		success: function(resulttable){
			$("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
			}
		});
		
		}
	});

});


$(document).ready(function(){
	$('#teamSelect').on('change',function(){
		if(this.value == "SK"){
		$.ajax({
		type: "post",
		url: "js/team_search_bat_sk.jsp",
		dataType: "html",
		success: function(resulttable){
			$("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
			}
		});
		
		}
	});

});

$(document).ready(function(){
	$('#teamSelect').on('change',function(){
		if(this.value == "한화"){
		$.ajax({
		type: "post",
		url: "js/team_search_pit_hh.jsp",
		dataType: "html",
		success: function(resulttable){
			$("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
			}
		});
		
		}
	});

});


$(document).ready(function(){
	$('#teamSelect').on('change',function(){
		if(this.value == "KT"){
		$.ajax({
		type: "post",
		url: "js/team_search_bat_kt.jsp",
		dataType: "html",
		success: function(resulttable){
			$("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
			}
		});
		
		}
	});

});

$(document).ready(function(){
	$('#teamSelect').on('change',function(){
		if(this.value == "기아"){
		$.ajax({
		type: "post",
		url: "js/team_search_pit_kia.jsp",
		dataType: "html",
		success: function(resulttable){
			$("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
			}
		});
		
		}
	});

});



$(document).ready(function(){
	$('#teamSelect').on('change',function(){
		if(this.value == "삼성"|| this.value == "롯데"){
		$.ajax({
		type: "post",
		url: "js/nodata.jsp",
		dataType: "html",
		success: function(resulttable){
			$("#resulttable").html(resulttable); //div에 받아온 값을 넣는다.
			}
		});
		
		}
	});

});



