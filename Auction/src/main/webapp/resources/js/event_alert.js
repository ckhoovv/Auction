/**
 * 
 */
function applyCheck(needPoint, cntId) {
	var selectCount = 0;
	selectCount = document.getElementById(cntId).value;
	
	if(selectCount == "" || selectCount == "0"){// 응모 횟수 입력 여부     
		document.getElementById(cntId+"LayerCnt").style.display="block";
	}else if( parseInt(needPoint * selectCount) > 1000 ){  	// 벳볼 포인트 부족 여부
		document.getElementById(cntId+"LayerLack").style.display="block";
	}else{			
		document.getElementById(cntId+"LayerApply").style.display="block";		
	}
}

/* 레이어 닫기*/
function closeLayer(obj){	
	document.getElementById(obj).style.display="none";			
}