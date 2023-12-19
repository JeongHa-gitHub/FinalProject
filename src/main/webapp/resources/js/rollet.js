$(document).ready(function () {
    var prize = 'product03';

    $('#start-rotate').click(function () {
        if (prize == 'product01') {
            var degrees = 65;
            rotate(degrees);
            $('#resultImg').attr('src', '/FinalProject/resources/images/roulette_prodect_5.png');
            window.setTimeout(resultLayer, 5400);
        } else if (prize == 'product02') {
            var degrees = 120;
            rotate(degrees);
            $('#resultImg').attr('src', '/FinalProject/resources/images/roulette_prodect_5.png');
            window.setTimeout(resultLayer, 5400);
        } else if (prize == 'product03') {
            var degrees = 0;
            rotate(degrees);
            $('#resultImg').attr('src', '/FinalProject/resources/images/roulette_prodect_15.png');
            window.setTimeout(resultLayer, 5400);
        } else if (prize == 'product04') {
            var degrees = 220;
            rotate(degrees);
            $('#resultImg').attr('src', '/FinalProject/resources/images/roulette_prodect_5.png');
            window.setTimeout(resultLayer, 5400);
        } else if (prize == 'product05') {
            var degrees = 290;
            rotate(degrees);
            $('#resultImg').attr('src', '/FinalProject/resources/images/roulette_prodect_10.png');
            window.setTimeout(resultLayer, 5400);
        } else if (prize == 'product06') {
            var degrees = 160;
            rotate(degrees);
            $('#resultImg').attr('src', '/FinalProject/resources/images/roulette_prodect_10.png');
            window.setTimeout(resultLayer, 5400);
        }
    });

    function rotate(degrees) {
        $("#roulette-gift").rotate({
            angle: 0,
            animateTo: 360 * 5 + degrees,
            easing: $.easing.easeInOutElastic,
            duration: 5000
        });
    };

   function resultLayer() {
        $('.resultLayer').css('display', 'block');
    }
    
    $("#coupIssue").on("click",function(){
    	location.href="/FinalProject/";
    });

	/*
	요청URI : /FinalProject/rollet/couponInsert
	요청파라미터 : 로그인한아이디
	요청방식 : post
	*/
    $('#closeLayer').click(function () {
        $('.resultLayer').css('display', 'none');

        $("#roulette-gift").rotate({
            angle: 0,
            duration: 0
        });
        
        let user = $("#user").val();
        console.log("user : " + user);
        
        //json오브젝트
        let data = {"user":user};
        console.log("data : ", data);
        
        
        $.ajax({
        	url:"/FinalProject/rollet/couponInsert",
        	contentType:"application/json;charset=utf-8",
        	data:JSON.stringify(data),
        	type:"post",
        	dataType:"text",
        	success:function(result){
        		console.log("result : ",result);
        		
        		if(result=="success"){
        			alert("쿠폰 발급이 완료되었습니다");
        		}
        	}
        });
    });
});





