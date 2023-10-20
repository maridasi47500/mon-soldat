window.onload=function(){
	  setTimeout(
		      function() {
			            //document.getElementsByClassName('cetteimg')[0].style.display='none';
			            document.getElementsByClassName('cetteimg')[0].remove();
			            document.getElementsByTagName('main')[0].style='background:url(/assets/paris);background-size:cover;';

			          }, 5000);
}
function addpic(me){
document.getElementsByTagName("main")[0].innerHTML+="<img src=\"/uploads/"+me.value+"\" class=\"cetteautrimg\" />" ;
	  setTimeout(
		      function() {
			            document.getElementsByClassName('cetteimg')[0].remove();
			            document.getElementsByClassName('cetteautrimg')[0].remove();

			          }, 10000);
}
function changebg(me){
document.getElementsByTagName("main")[0].style.background="url(/uploads/"+me.value+")";
document.getElementsByTagName("main")[0].style.backgroundSize="cover";
}
function changestuff(me){
document.getElementsByTagName("main")[0].innerHTML+="<img src=\"/uploads/"+me.value+"\" class=\"cetteautrimg\" />" ;
	  setTimeout(
		      function() {
			            document.getElementsByClassName('cetteautrimg')[0].remove();

			          }, 10000);
}
