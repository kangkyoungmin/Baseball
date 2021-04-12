
$(document).ready(function(){
	 $('#batter01').click(function (){
    $.ajax({
        type : "post", 
        url : "js/data_by_batter.jsp?type=2",
        dataType : "html",
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("batter data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#pitcher01').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/data_by_pitcher.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#tablesortip').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/data_by_pitcher_sortbyIP.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});

$(document).ready(function(){
	 $('#tablesorth').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/data_by_battersortbyH.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});

$(document).ready(function(){
	 $('#bat03').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_bat03.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});

$(document).ready(function(){
	 $('#bat04').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_bat04.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#bat05').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_bat05.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#bat06').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_bat06.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#bat07').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_bat07.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#bat08').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_bat08.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#bat09').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_bat09.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#pit03').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_pit03.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#pit04').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_pit04.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#pit05').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_pit05.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#pit06').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_pit06.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#pit07').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_pit07.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


$(document).ready(function(){
	 $('#pit08').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_pit08.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});

$(document).ready(function(){
	 $('#pit09').click(function (){
    $.ajax({
        type : "POST", //전송방식을 지정한다 (POST,GET)
        url : "js/monthjs/data_pit09.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
        dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
        error : function(){
            alert("데이터 로딩 실패");
        },
        success : function(playerresult){
            $("#playerresult").html(playerresult); //div에 받아온 값을 넣는다.
            alert("pitcher data...");
        }
		 
	 });
         
    });
});


