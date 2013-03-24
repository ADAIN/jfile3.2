package egovframework.com.jfile.mapper;

import java.util.List;

import egovframework.com.jfile.service.JFileDetails;
import egovframework.com.jfile.service.impl.JFileVO;

public interface JFileMapper {
	
	public void addAttachFile(JFileDetails fileVo);
	
	public JFileVO selectAttachFile(JFileVO fileVO);
	
	public List<JFileDetails> selectAttachFiles(JFileVO fileVO);
	
	public void updateAttachFileDeleteYnByFileId(JFileVO fileVO);
	
//	public void updateAttachFileDownloadCount(final String fileId);
	
	public void updateAttachFileDownloadCount(JFileVO fileVO);
	
	public void removeAttachFile(JFileVO fileVO);
	
	public Object[] getAttachFileSeqs(String fileId);
	
	public void updateAttachFileDeleteYn(JFileVO fileVO);
	
	public boolean isExistingAttachFileInfo(JFileVO fileVO);
	
	public void updateAttachFileDownloadCountBySequence(JFileVO jfileVO);
	
	public void updateAttachFileDownloadCountByFileId(String fileId);
}
