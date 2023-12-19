/**
 * 
 */

const fSocOpen = ()=>{
	console.log("소켓 연결");
	
	//let messageList = $(".chat-message").data("messageList");
	let region = $(".chat-message").data("region");
	
		console.log("messageList",messageList);
		let jsonMessage = JSON.parse(messageList);
		
		let chatCode = '';
		/* Queue에 저장된 메세지 출력하기 */
		for(let i=0; i<jsonMessage.length; i++){
			if(jsonMessage[i].region==region){
				for(j=0; j<jsonMessage[i].chatMessage.length; j++){
					if(jsonMessage[i].chatMessage[j].sender=="server"){
					// 보낸사람이 서버라면 메세지 가운데 찍히게
					console.log("chatMessage[i]",jsonMessage[i].chatMessage[j]);
						chatCode += `
								<div class="chtWrap">
											<div class="message-server">${jsonMessage[i].chatMessage[j].message }</div>
										</div>
							`;
					}else if(jsonMessage[i].chatMessage[j].sender==`${chatName}`){
					// 보낸사람이 본인이라면 오른쪽에 찍히게
						chatCode += `<div class="chtWrap">
											<div class="message-right">
												<div class="message-sender-form">${jsonMessage[i].chatMessage[j].sender }</div>
												<div class="message-form">${jsonMessage[i].chatMessage[j].message }</div>
											</div>
										</div>
							`;
					}else{
					// 보낸사람이 다른사람이라면 왼쪽에 찍히게
						chatCode += `<div class="chtWrap">
											<div class="message-left">
												<div class="message-sender-form">${jsonMessage[i].chatMessage[j].sender }</div>
												<div class="message-form">${jsonMessage[i].chatMessage[j].message }</div>
											</div>
										</div>
							`;
					}
				}
			}
		}
		$(".chat-message").html(chatCode);

	/*$(".chat-message").append(code);*/

	// 입장메세지 보내기
	let message = `${chatName}님이 입장했습니다.`;
	let data = {
		"sender":"server"
		, "message":message
	};
	
	webSocket.send(JSON.stringify(data));
	
}

const fSocMsg = () =>{
	console.log("서버소켓에서 나에게 메세지를 보냈을 때",event.data);
	let data = JSON.parse(event.data);
	let sender = data.sender;
	let message = data.message;
	
	let chatCode = ``;
	
	
		
		if(sender=="server"){
			chatCode +=`<div class="chtWrap">
							<div class="message-server">${message}</div>
						</div>
						`;
		}else if(sender==`${chatName}`){
			chatCode +=`<div class="chtWrap">
							<div class="message-right">
								<div class="message-sender-form">${sender}</div>
								<div class="message-form">${message}</div>
							</div>
						</div>
					`;
		}else{
			chatCode +=`<div class="chtWrap">
							<div class="message-left">
								<div class="message-sender-form">${sender}</div>
								<div class="message-form">${message}</div>
							</div>
						</div>
					`;
		}
		$(".chat-message").append(chatCode);
	}
	
	
	


const fSocClose = (e) => {
	console.log(e);
}

// 도메인이 없어서 임시로 localhost로든 ip로든 테스트할 수 있도록
let domainName = location.href.split("/")[2];
let webSocket = new WebSocket(`ws://${domainName}/FinalProject/chat`);

//클라이언트 소켓
webSocket.onopen = fSocOpen; // 연결된 순간 onopen 이벤트 발생
webSocket.onmessage = fSocMsg;
webSocket.onclose = fSocClose;
//서버 -> 클라이언트


keydown = () => {
	if(event.keyCode==13){
		$("#sendMessage").trigger("click");
	}
}

$(function(){
	
	let cPath = this.body.dataset.contextPath;


	/* 보내기 버튼 클릭했을 때 이벤트 */
	$("#sendMessage").on("click",function(){
		
		let message = $("input[name=message]").val();
		let data = {
			"sender":`${chatName}`
			, "message":message
		};
		webSocket.send(JSON.stringify(data));
		/*webSocket.send(message);*/
	
		$("input[name=message]").val("");
	})
	
	$("#disconnectionBtn").on("click",function(){
		webSocket.close();
		location.href = `${cPath}/`;
	})
	
	
})