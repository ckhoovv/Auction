/**
 * 
 */
function applyCheck(needPoint, cntId) {
	var selectCount = 0;
	selectCount = document.getElementById(cntId).value;
	var sum = parseInt(needPoint * selectCount);
	if(selectCount == "" || selectCount == "0"){// 응모 횟수 입력 여부 
		//응모횟수가 0또는 미입력시 div창 띄우기
		document.getElementById(cntId+"LayerCnt").style.display="block";
	}else if( sum > mycoupon ){// 응모 포인트 부족 여부
		//응모에 필요한 총 응모권 수
		document.getElementById(cntId + "Sum").innerHTML = ("총"+sum+"개");
		//응모 포인트 부족시 div창 띄우기
		document.getElementById(cntId+"LayerLack").style.display="block";
	}else{
		//응모에 필요한 총 응모권 수
		document.getElementById(cntId + "Sum").innerHTML = ("총"+sum+"개"); 
		//차감 될 응모권 수
		document.getElementById(cntId + "SumView").innerHTML = ("총"+sum+"개");
		//응모 포인트 만족시 div창 띄우기
		document.getElementById(cntId+"LayerApply").style.display="block";		
	}
}

/* 레이어 닫기*/
function closeLayer(obj){
	document.getElementById(obj).style.display="none";			
}

function applyBtn(cntId){
	//응모 확인시
	var selectCount = 0;
	selectCount = document.getElementById(cntId).value;
	//확인 클릭시 필요한 총 응모권수 초기화
	document.getElementById(cntId + "Sum").innerHTML = ("총 "+0+"개")
	//확인클릭시 div창 닫기
	document.getElementById(cntId+"LayerApply").style.display="none";
	
}




