package eAdviser.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;

import eAdviser.model.CoVanHocTap;
import eAdviser.modelDao.DAO_CoVanHocTap;
import eCore.controller.ZEController;
import eCore.dao.ObjectDAO;
import eCore.model.NhanVien;

public class Controller_CoVanHocTap extends CoVanHocTap implements ZEController{

	ObjectDAO dao = new DAO_CoVanHocTap();
	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "eCore/pages/donvis.jsp";
	String duongDanTrangView = "eCore/pages/donvi.jsp";
	String tenCotTimDoiTuong = "maDonVi";
	String maObj;
	String maNhanVien;
	public String getTimKiemTheo() {
		return timKiemTheo;
	}
	public void setTimKiemTheo(String timKiemTheo) {
		this.timKiemTheo = timKiemTheo;
	}
	public String getTuKhoa() {
		return tuKhoa;
	}
	public void setTuKhoa(String tuKhoa) {
		this.tuKhoa = tuKhoa;
	}
	public String getDuongDanTrang() {
		return duongDanTrang;
	}
	public void setDuongDanTrang(String duongDanTrang) {
		this.duongDanTrang = duongDanTrang;
	}
	public String getDuongDanTrangView() {
		return duongDanTrangView;
	}
	public void setDuongDanTrangView(String duongDanTrangView) {
		this.duongDanTrangView = duongDanTrangView;
	}
	public String getTenCotTimDoiTuong() {
		return tenCotTimDoiTuong;
	}
	public void setTenCotTimDoiTuong(String tenCotTimDoiTuong) {
		this.tenCotTimDoiTuong = tenCotTimDoiTuong;
	}
	public String getMaObj() {
		return maObj;
	}
	public void setMaObj(String maObj) {
		this.maObj = maObj;
	}
	public String getMaNhanVien() {
		return maNhanVien;
	}
	public NhanVien getNhanVien() {
		ArrayList<NhanVien> list =dao.listByColumns("maNhanVien",getMaNhanVien());
		if(list.size()>0)
			return list.get(0);
		else
			return null;
	}
	public void setMaNhanVien(String maNhanVien) {
		this.maNhanVien = maNhanVien;
	}
	@Override
	public String addNew() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String viewDetail() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String viewDetailAndEdit() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String saveOrUpdate() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String delete() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String search() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String refresh() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String importData() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String exportData() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
}
