package eAdviser.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import eAdviser.model.CoVanHocTap;
import eAdviser.model.PhanCongCoVanHocTap;
import eAdviser.model.SoCoVanHocTap;
import eAdviser.model.ThongBaoKetQuaHocTapVaRenLuyen;
import eAdviser.modelDao.DAO_CoVanHocTap;
import eAdviser.modelDao.DAO_PhanCongCoVanHocTap;
import eAdviser.modelDao.DAO_SoCoVanHocTap;
import eAdviser.modelDao.DAO_ThongBaoKetQuaHocTapVaRenLuyen;
import eCore.controller.ZEController;
import eCore.dao.ObjectDAO;
import eCore.model.SinhVien;
import eCore.modelDao.DAO_SinhVien;

public class Controller_ThongBaoKetQuaHocTapVaRenLuyen extends ThongBaoKetQuaHocTapVaRenLuyen implements ZEController {

	ObjectDAO dao = new DAO_ThongBaoKetQuaHocTapVaRenLuyen();
	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "eAdviser/pages/thongbaoketquahoctapvarenluyens.jsp";
	String duongDanTrangView = "eAdviser/pages/thongbaoketquahoctapvarenluyen.jsp";
	String tenCotTimDoiTuong = "maThongBaoKetQuaHocTapVaRenLuyen";
	String maObj;
	String maCoVanHocTap;
	String maSoCoVanHocTap;
	String maSinhVien;

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

	public String getMaCoVanHocTap() {
		return maCoVanHocTap;
	}

	public void setMaCoVanHocTap(String maCoVanHocTap) {
		this.maCoVanHocTap = maCoVanHocTap;
	}
	
	public CoVanHocTap getCoVanHocTap() {
		ObjectDAO<CoVanHocTap> dao_CoVanHocTap = new DAO_CoVanHocTap();
		ArrayList<CoVanHocTap> list_coVanHocTap = dao_CoVanHocTap.listByColumns("maCoVanHocTap", getMaCoVanHocTap());
		System.out.println(list_coVanHocTap.size());
		if (list_coVanHocTap.size() > 0)
			return list_coVanHocTap.get(0);
		else
			return null;
	}

	public String getMaSoCoVanHocTap() {
		return maSoCoVanHocTap;
	}

	public void setMaSoCoVanHocTap(String maSoCoVanHocTap) {
		this.maSoCoVanHocTap = maSoCoVanHocTap;
	}
	
	public SoCoVanHocTap getSoCoVanHocTap() {
		ObjectDAO dao_soCoVanHocTap = new DAO_SoCoVanHocTap();
		ArrayList<SoCoVanHocTap> list = dao_soCoVanHocTap.listByColumns("maSoCoVanHocTap", getMaSoCoVanHocTap());
		if(list.size()>0)
			return list.get(0);
		else
			return null;
	}
	
	public String getMaSinhVien() {
		return maSinhVien;
	}

	public void setMaSinhVien(String maSinhVien) {
		this.maSinhVien = maSinhVien;
	}
	
	public SinhVien getSinhVien(){
		ObjectDAO dao_sinhVien = new DAO_SinhVien();
		ArrayList<SinhVien> list_sinhvien = dao_sinhVien.listByColumns("maSinhVien", getMaSinhVien());
		if(list_sinhvien.size()>0)
			return list_sinhvien.get(0);
		else
			return null;
	}
	
	@Override
	public String addNew() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("mode", "addNew");
		session.setAttribute("p", duongDanTrangView);
		session.setAttribute("msg", null);
		session.setAttribute("obj", null);
		return "SUCCESS";
	}

	@Override
	public String viewDetail() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();

		String maobj = request.getParameter("maobj");

		session.setAttribute("mode", "viewDetail");

		ArrayList<ThongBaoKetQuaHocTapVaRenLuyen> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
		if (arr.size() > 0) {
			session.setAttribute("obj", arr.get(0));
			session.setAttribute("p", duongDanTrangView);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}

	@Override
	public String viewDetailAndEdit() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("msg", null);

		String maobj = request.getParameter("maobj");
		session.setAttribute("mode", "viewDetailAndEdit");
		ArrayList<ThongBaoKetQuaHocTapVaRenLuyen> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
		if (arr.size() > 0) {
			session.setAttribute("obj", arr.get(0));
			session.setAttribute("p", duongDanTrangView);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}

	@Override
	public String saveOrUpdate() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();

		ThongBaoKetQuaHocTapVaRenLuyen obj = new ThongBaoKetQuaHocTapVaRenLuyen();
		obj.coVanHocTap = getCoVanHocTap();
		obj.soCoVanHocTap=getSoCoVanHocTap();
		obj.sinhVien=getSinhVien();
		obj.maThongBaoKetQuaHocTapVaRenLuyen = getMaThongBaoKetQuaHocTapVaRenLuyen();
		obj.hocKy = getHocKy();
		obj.namHoc = getNamHoc();
		obj.ketQuaHocTap=getKetQuaHocTap();
		obj.xepLoaiHocTap=getXepLoaiHocTap();
		obj.ketQuaRenLuyen=getKetQuaRenLuyen();
		obj.xepLoaiRenLuyen=getXepLoaiRenLuyen();
		obj.thongBaoCuThe=getThongBaoCuThe();
		obj.moTa = getMoTa();
		obj.ghiChu = getGhiChu();
		obj.thoiGianCapNhat = new Date();
		if (dao.saveOrUpdate(obj)) {
			session.setAttribute("msg", "Cập nhật dữ liệu thành công");
			session.setAttribute("obj", obj);
			session.setAttribute("mode", "viewDetailAndEdit");
			session.setAttribute("p", duongDanTrangView);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}

	@Override
	public String delete() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String maobj = request.getParameter("maobj");
		ThongBaoKetQuaHocTapVaRenLuyen obj = new ThongBaoKetQuaHocTapVaRenLuyen();
		obj.setMaThongBaoKetQuaHocTapVaRenLuyen(maobj);
		if (dao.delete(obj)) {
			session.setAttribute("msg", "Xóa dữ liệu thành công");
			session.setAttribute("p", duongDanTrang);
			return "SUCCESS";
		} else {
			return "FAIL";
		}
	}

	@Override
	public String search() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String column = getTimKiemTheo();
		String key = getTuKhoa();
		ArrayList<ThongBaoKetQuaHocTapVaRenLuyen> arr = dao.listByColumnLike(column, key);
		session.setAttribute("arr", arr);
		session.setAttribute("checkTimKiem", "true");
		session.setAttribute("p", duongDanTrang);
		return "SUCCESS";
	}

	@Override
	public String refresh() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("arr", null);
		session.setAttribute("msg", null);
		session.setAttribute("checkTimKiem", null);
		session.setAttribute("p", duongDanTrang);
		return "SUCCESS";
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
