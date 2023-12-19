package kr.or.ddit.common.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.dao.AttachDao;
import kr.or.ddit.common.vo.AttachVO;
import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Slf4j
@Service
public class UploadController {
	@Autowired
	AttachDao attachDao;
	
	@Value("#{appInfo.recruitFiles}")
	private Resource rootFolder;
	
	//공통 파일업로드(파일업로드 + ATTACH 테이블에 insert)
	public int uploadAjaxAction(MultipartFile[] uploadFile, String pkCd) {
		log.info("uploadAjaxAction에 왔다");
		log.info("uploadFile : " + uploadFile);
		
//		String uploadFolder 
//			= "D:\\finalprojectDoc\\uploadFiles\\frBoard";
		
		//make folder 시작 ---------------------------
//		File uploadPath = new File(uploadFolder, getFolder());
		File uploadPath = null;
		try {
			uploadPath = new File(rootFolder.getFile()+"/frBoard", getFolder());
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		log.info("upload Path : " + uploadPath);
		
		//만약 년/월/일 해당 폴더가 없다면 생성
		if(uploadPath.exists()==false) {
			uploadPath.mkdirs();
		}
		//make folder 끝 ---------------------------
		
		int seq = 0;
		
		//배열로부터 하나씩 파일을 꺼내오자
		for(MultipartFile multipartFile : uploadFile) {
			log.info("-----------------------");
			log.info("Upload File Name : " + multipartFile.getOriginalFilename());//파일명
			log.info("Upload File Size : " + multipartFile.getSize());//크기
			log.info("Upload MIME : " + multipartFile.getContentType());//이미지, 한글, 워드..
			
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
			//uploadFileName : asdfjlsfdakfsd_개똥이.jpg
			File saveFile = new File(uploadPath, uploadFileName);
			
			try {
				//파일 복사가 일어남
				multipartFile.transferTo(saveFile);
				
				//이미지인지 체킹
//				if(checkImageType(saveFile)) {	//이미지라면..
//					FileOutputStream thumbnail = new FileOutputStream(
//							new File(uploadPath, "s_" + uploadFileName)
//							);
//					//섬네일 생성
//					Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumbnail,100,100);
//					thumbnail.close();
//				}
				
				//4) productVO.setFilename(파일full경로+명);
//				String filename = "/" + getFolder().replaceAll("\\\\","/") + "/" + uploadFileName;
				
				AttachVO attachVO = new AttachVO();
				attachVO.setPkCd(pkCd);
				attachVO.setSeq(++seq);
				attachVO.setFrbattOriginalnm(multipartFile.getOriginalFilename());
				attachVO.setFrbattSavename("/" + getFolder().replaceAll("\\\\","/") + "/" + uploadFileName);//웹경로
				attachVO.setFrbattMime(multipartFile.getContentType());
				attachVO.setFrbattFilesize(multipartFile.getSize());
				
				log.info("uploadAjaxAction->attachVO : " + attachVO);
				
				attachDao.insertAttach(attachVO);
				
			} catch (IllegalStateException e) {
				log.error(e.getMessage());
			} catch (IOException e) {
				log.error(e.getMessage());
			}//tnd catch
		}//end for
		return seq;
	}//uploadAjaxAction
	
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












