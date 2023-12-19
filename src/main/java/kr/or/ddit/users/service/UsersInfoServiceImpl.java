package kr.or.ddit.users.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.users.dao.UsersInfoDAO;
import kr.or.ddit.users.vo.UsersVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class UsersInfoServiceImpl implements UsersInfoService{

	private final UsersInfoDAO dao;
	
	@Value("#{appInfo.recruitFiles}")
	private Resource uploadFolder;
	
	@Override
	public MemberVO retrieveUsers(String memId) {
		MemberVO member = dao.selectUsers(memId);
		if(member == null)
			throw new UsernameNotFoundException(memId);
		return member;
	}

	@Override
	public int editPost(MemberVO memberVO) throws IOException {
		int result = this.dao.editMemberPost(memberVO);
		
		MultipartFile multipartFile = memberVO.getUploadFiles();
		
		//파일업로드 시작 ////////////////////////////////////////////
		log.info("uploadAjaxAction에 왔다");
		log.info("uploadFile : " + multipartFile);
		
//		String uploadFolder 
//			= "C:\\finalprojectDoc\\uploadFiles\\usersInfo";
		
		File saveFolderTemp = uploadFolder.getFile();
		
		//make folder 시작 ---------------------------
		//파일이 있을 때에만 실행
		if(multipartFile.getOriginalFilename().length()>0) {
//		File uploadPath = new File(uploadFolder, getFolder());
//		log.info("upload Path : " + uploadPath);
		File uploadPath = new File(saveFolderTemp+"/usersInfo", getFolder());
		
		//만약 년/월/일 해당 폴더가 없다면 생성
		if(uploadPath.exists()==false) {
			uploadPath.mkdirs();
		}
		//make folder 끝 ---------------------------
		
			log.info("-----------------------");
			log.info("Upload File Name : " + multipartFile.getOriginalFilename());
			log.info("Upload File Size : " + multipartFile.getSize());
			log.info("Upload File MIME : " + multipartFile.getContentType());
			
			//IE 처리 => 경로를 제외한 파일명만 추출 
			//c:\\upload\\image01.jpg => image01.jpg
			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			
			log.info("only file name : " + uploadFileName);
			
			//------------- 같은날 같은 이미지를 업로드 시 파일 중복 방지 시작 -------------
			//java.util.UUID => 랜덤값 생성
			UUID uuid = UUID.randomUUID(); //임의의 값을 생성
			//원래의 파일 이름과 구분하기 위해 _를 붙임
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			//------------- 같은날 같은 이미지를 업로드 시 파일 중복 방지 끝 -------------			
			
			//File 객체 설계(복사할 대상 경로 , 파일명)
//			File saveFile = new File(uploadFolder, uploadFileName);
			//uploadPath : D:\\A_TeachingMaterial\\06_spring\\springProj\\src\\
			//					main\\webapp\\resources\\upload\\2022\\07\\22
			File saveFile = new File(uploadPath, uploadFileName);
			
			UsersVO usersVO = memberVO.getUsers();
			try {
				//파일 복사가 일어남
				multipartFile.transferTo(saveFile);
				
				//4) 웹경로세팅
				usersVO.setUsersImg("/" + getFolder().replaceAll("\\\\","/") + "/" + uploadFileName);
//				String filename = "/" + getFolder().replaceAll("\\\\","/") + "/" + uploadFileName;
				memberVO.setUsers(usersVO);
				
			} catch (IllegalStateException e) {
				log.error(e.getMessage());
			} catch (IOException e) {
				log.error(e.getMessage());
			}//tnd catch
		}// end if
		//파일업로드 끝 ////////////////////////////////////////////
		
		result += this.dao.editUsersPost(memberVO);
		
		return result;
	}

	@Override
	public int exitPost(String memId) {
		return this.dao.exitPost(memId);
	}
	
	//년/월/일 폴더 생성
	public static String getFolder() {
		//2022-07-22 형식(format) 지정
		//간단한 날짜 형식
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		//날짜 객체 생성(java.util패키지)
		Date date = new Date();
		//2022-07-22
		String str = sdf.format(date);
		
		return str.replace("-", File.separator);
	}
	
	//용량이 큰 파일을 섬네일 처리를 하지 않으면
	//모바일과 같은 환경에서 많은 데이터를 소비해야 하므로
	//이미지의 경우 특별한 경우가 아니면 섬네일을 제작해야 함.
	//섬네일은 이미지만 가능함.
	//이미지 파일의 판단
	public static boolean checkImageType(File file) {
		/*
		 .jpeg / .jpg(JPEG 이미지)의 MIME 타입 : image/jpeg
		 */
		//MIME 타입을 통해 이미지 여부 확인
		//file.toPath() : 파일 객체를 path객체로 변환
		try {
			String contentType = Files.probeContentType(file.toPath());
			log.info("contentType : " + contentType);
			//MIME 타입 정보가 image로 시작하는지 여부를 return
			return contentType.startsWith("image");
		} catch (IOException e) {
			e.printStackTrace();
		}
		//이 파일이 이미지가 아닐 경우
		return false;
	}
	
}
