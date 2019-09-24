/**
 * 
 */

function move() {
	var elem = document.getElementByid("donation_bar");
	var width = 1;
	var id = setinterval(frame, 10);
	function frame() {
		if (width >= 100) {
			clearinterval(id);
		}else{
			width++;
			elem.style.width = width + '%';
		}
	}
}