var owl; // 전역 변수로 owl 선언

$(document).ready(function () {
    imageAdvrt_load();
});

// << 마이페이지에서 슬라이드 광고 노출 >>
function imageAdvrt_load() {
    var cpath = $("body").data("contextPath");

    // 페이지 로드 시 Ajax 호출
    $.ajax({
        url: cpath + "/selectImgAdvrtIndex",
        type: "get",
        dataType: "json",
        success: function (data) {
            updateIndexImgAdvrt(data);

            // Owl Carousel 초기화 및 설정
            owl = $('.owl-carousel');
            owl.owlCarousel({
                items: 3,
                loop: true,
                margin: 35,
                autoplay: true,
                autoplayTimeout: 1800,
                autoplayHoverPause: true
            });
        },
        error: function (xhr, status, error) {
            alert("데이터 가져오기 실패:", error);
            console.error("AJAX 오류 발생", xhr, status, error.responseText);
        }
    });
}

function updateIndexImgAdvrt(data) {
    var cpath = $("body").data("contextPath");
    var IndexImgAdvrtHtml = ``;
    for (var i = 0; i < data.length; i++) {
        var ImgAdvrt = data[i];
        var companyId = ImgAdvrt.companyId;
        var imgadFile = ImgAdvrt.imgadFile;

        IndexImgAdvrtHtml += `<div class="owl-item">
                                <a href="${cpath}/company/companyDetail/${companyId}" class="">
                                <img class="img_Advrt_Index" src="${cpath}/recruit/ImgAdForm/${imgadFile}" alt="ImageJudge-Img">
                                </a>
                              </div>`;
    }

    $('#imgAdvrtIndex').html(IndexImgAdvrtHtml);

// << 메인페이지에서 배너 광고 노출 >>
	// 페이지 로드 시 Ajax 호출
    $.ajax({
        url: cpath + "/selectBannerAdvrtIndex",
        type: "get",			
        dataType: "json",
        success: function (BannerAdvrtList) {
			console.log("imgadFile : ",BannerAdvrtList);
            updateIndexBannerAdvrt(BannerAdvrtList);
        },
        error: function (xhr, status, error) {
            alert("데이터 가져오기 실패:", error);
            console.error("AJAX 오류 발생", xhr, status, error.responseText);
        }
    });
}

// 이하 슬라이드 제어 코드는 그대로 사용
$('.customNextBtn').click(function () {
    owl.trigger('next.owl.carousel');
});

$('.customPrevBtn').click(function () {
    owl.trigger('prev.owl.carousel', [300]);
});


function updateIndexBannerAdvrt(BannerAdvrtList){
	var cpath = $("body").data("contextPath");
	var imgadFile = '';
	
	if(BannerAdvrtList[0] == null){
		imgadFile = '';
		selectCmpAdvrtIndex();
	}else{
		imgadFile = BannerAdvrtList[0].imgadFile;
		var IndexBannerAdvrtHtml = `<img class="mainBanner" src="${cpath}/recruit/ImgAdForm/${imgadFile}" alt="banner" style="width:100%;">`;
    	$('#bannerAdvrtIndex').html(IndexBannerAdvrtHtml);
		selectCmpAdvrtIndex();
	}

}

// << 마이페이지에서 기업 광고 노출 >>
function selectCmpAdvrtIndex(){
	 var cpath = $("body").data("contextPath");

    // 페이지 로드 시 Ajax 호출
    $.ajax({
        url: cpath + "/selectCmpAdvrtIndex",
        type: "get",
        dataType: "json",
        success: function (data) {
            console.log("마이페이지에서 기업 광고 노출 : ",data);
			updateCmpAdvrtIndex(data);
        },
        error: function (xhr, status, error) {
            alert("데이터 가져오기 실패:", error);
            console.error("AJAX 오류 발생", xhr, status, error.responseText);
        }
    });
}

function updateCmpAdvrtIndex(data){
var cpath = $("body").data("contextPath");
	var IndexCmpAdvrtHtml ='';
	for (var i = 0; i < data.length; i++) {
	var CmpAdvrt = data[i];
	var companyLogo = CmpAdvrt.companyVO.comInfo.cominfoFile;
	var companyNm = CmpAdvrt.companyVO.companyNm;
	var companyRecruit =CmpAdvrt.lastrecruit;
	
	console.log(companyLogo , companyNm , companyRecruit);
	
	 IndexCmpAdvrtHtml += `
							<li class="open">
								<div class="box_product">
									<a href="#" rel="sponsored, nofollow"> 
										
										<span class="product_logo">
											<img src="${cpath}/recruit/cominfo/${companyLogo}" class="img" alt="`+companyNm+`">
										</span> 
										
										<strong class="poduct_tit">`+companyNm+`</strong>
										
										<em class="product_desc">`+companyRecruit+`</em> 
										
										<em class="product_desc open">
											<span>`+companyRecruit+`</span>
										</em> 
										
									</a> 
								</div>
							</li>	
						`;
	$('#_platinum').append(IndexCmpAdvrtHtml);
	}
}





