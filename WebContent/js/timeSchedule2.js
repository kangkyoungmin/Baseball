	today=new Date();
    var week=["일","월","화","수","목","금","토"];
    var dayOfweek,before_date;
    var check=false;
    var yy,mm,dd,r_mm,r_dd;
    var allData;
	let club_name={"1":["두산","image/DS.png","잠실"],"2":["NC","image/NC.png","진해"],"3":["롯데","image/LT.png","사직"],"4":["LG","image/LG.png","잠실"], "5":["KIA","image/KIA.png","광주"],"6":["삼성","image/SS.png","대구"],"7":["키움","image/KW.png","고척"],"8":["한화","image/HH.png","대전"],"9":["SK","image/SK.png","문학"],"10":["KT","image/KT.png","수원"]};
    function reset(){
    	yy = today.getFullYear()-2;
        mm = today.getMonth() + 4; mm = (mm < 10) ? '0' + mm : mm; //월 변경  +1 하는 이유는 자바스크립트에서 0이 1월이라 
        dd = today.getDate(); dd = (dd < 10) ? '0' + dd : dd;//10일 이전이면 숫자 자릿수 맞추기 위함
		dayOfweek=week[new Date(today).getDay()];
        before_date=String(yy)+String(mm)+String(dd);
        document.getElementById("currentdate").innerHTML=yy+'.'+mm+'.'+dd+'('+dayOfweek+')';
		var reset_yy=String(today.getFullYear()-2);
		reset_yy=reset_yy.substring(2,4);
		allData='{"year":"'+reset_yy+'","month":"'+mm+'","day":"'+dd+'"}';
		console.log(allData);
		$.ajax({
        url:"http://localhost:8000/webproject_jdbc_2/Schedule.do",
        type:'GET',
		datatype:'json',
        data: {jsonInfo:allData},
        success:function(json){
			showgameinfo(json);	
			self.close();
        },
        error:function(jqXHR, textStatus, errorThrown){
            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
        }
    });	
    }
	if(check==false) reset();


   
    function dateAddDel(beforeDate, addNumber, type) {
    	
        if (type == "d") {    //일
        	before_date = new Date(yy, mm - 1, dd + addNumber);
        }
        else if (type == "m") {   //월
        	before_date = new Date(yy, mm - 1, dd + (addNumber * 31));
        }
        else if (type == "y") {   //년
        	before_date = new Date(yy + addNumber, mm - 1, dd);
        }
        dayOfweek=week[new Date(before_date).getDay()];

        
        yy = before_date.getFullYear();
        mm = before_date.getMonth() + 1; 
		r_mm = (mm < 10) ? '0' + mm : mm; //월 변경  +1 하는 이유는 자바스크립트에서 0이 1월이라 
        dd = before_date.getDate(); 
		r_dd = (dd < 10) ? '0' + dd : dd;//10일 이전이면 숫자 자릿수 맞추기 위함
        
        return '' + yy + '.' +  r_mm  + '.' + r_dd+"("+dayOfweek+")";
    }
        
    
    function left()
    {
    	check=true;
    	document.getElementById("currentdate").innerHTML=dateAddDel(before_date,-1,'d');
		console.log(r_mm,r_dd);
		var left_yy=String(before_date.getFullYear());
		left_yy=left_yy.substring(2,4);
		allData='{"year":"'+left_yy+'","month":"'+r_mm+'","day":"'+r_dd+'"}';
	//	allData='{"year":"'+before_date.getFullYear()+'","month":"'+before_date.getMonth()+'","day":"'+before_date.getDate()+'"}';
		console.log(allData);
		$.ajax({
        url:"http://localhost:8000/webproject_jdbc_2/Schedule.do",
        type:'GET',
        data: {jsonInfo:allData},
        success:function(json){
			showgameinfo(json);	
        },
        error:function(jqXHR, textStatus, errorThrown){
            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
            self.close();
        }
    });	
    }
    
    function right()
    {
    	check=true;
    	document.getElementById("currentdate").innerHTML=dateAddDel(before_date,1,'d');
		var right_yy=String(before_date.getFullYear());
		right_yy=right_yy.substring(2,4);
		allData='{"year":"'+right_yy+'","month":"'+r_mm+'","day":"'+r_dd+'"}';		console.log(allData);
	//	allData={'year':before_date.getFullYear(),'month':before_date.getMonth(),'day':before_date.getDate()};
		$.ajax({
        url:"http://localhost:8000/webproject_jdbc_2/Schedule.do",
        type:'GET',
        data: {jsonInfo:allData},
        success:function(json){
			showgameinfo(json);	
        },
        error:function(jqXHR, textStatus, errorThrown){
            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
            self.close();
        }
    });	

    }
	function showgameinfo(obj) {   
		var div = document.querySelector('#schedule_table2');	
		let hname,aname,himg,aimg,hresult,aresult,loc,gresult;	
		
		let html='';
        for (var i = 0; i < obj.length; i++) {
			for(v in club_name){
				if(obj[i].home_id==v) {
					hname=club_name[v][0];
					himg=club_name[v][1];
				}
				if(obj[i].away_id==v){
					aname=club_name[v][0];
					aimg=club_name[v][1];
				} 
				if(obj[i].location_id==v){
					loc=club_name[v][2];
				}
			}
			if(obj[i].home_result==null || obj[i].away_result==null) gresult="경기 예정";
			else gresult=obj[i].home_result+" : "+obj[i].away_result;
			let home_img='<input type="image" alt="" src="./'+himg+'" style="width:180px; height:150px;">'
			let away_img='<input type="image" alt="" src="./'+aimg+'" style="width:180px; height:150px;">'
			
            html += '<table id="s_table"><tr id="location"><td>' + hname +" VS "+aname+"("+loc+")"+'</td></tr><tr id="image"><td>'+home_img+away_img+
			'</td></tr><tr><td id="gameresult">'+gresult+'</td></tr></table>';
        }
 
        div.innerHTML = html;
	  }
	

	