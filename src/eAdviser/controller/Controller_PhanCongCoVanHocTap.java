package eAdviser.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import eAdviser.model.CoVanHocTap;
import eAdviser.model.PhanCongCoVanHocTap;
import eAdviser.model.SoCoVanHocTap;
import eAdviser.modelDao.DAO_CoVanHocTap;
import eAdviser.modelDao.DAO_PhanCongCoVanHocTap;
import eAdviser.modelDao.DAO_SoCoVanHocTap;
import eCore.controller.ZEController;
import eCore.dao.ObjectDAO;
import eCore.model.NamHoc;
import eCore.modelDao.DAO_NamHoc;
import eCore.util.Util_Date;

public class Controller_PhanCongCoVanHocTap extends PhanCongCoVanHocTap implements ZEController {

	ObjectDAO dao = new DAO_PhanCongCoVanHocTap();
	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "eAdviser/pages/phancongcovanhoctaps.jsp";
	String duongDanTrangView = "eAdviser/pages/phancongcovanhoctap.jsp";
	String tenCotTimDoiTuong = "maPhanCong";
	String maObj;
	String maCoVanHocTap;
	String maSoCoVanHocTap;
	String maNamHoc;
	String s_thoiGianBatDau;
	String s_thoiGianKetThuc;

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
		ObjectDAO dao_CoVanHocTap = new DAO_CoVanHocTap();
		ArrayList<CoVanHocTap> list_coVanHocTap = dao_CoVanHocTap.listByColumns("maCoVanHocTap", getMaCoVanHocTap());
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
		ObjectDAO dao_SoCoVanHocTap = new DAO_SoCoVanHocTap();
		ArrayList<SoCoVanHocTap> list_soCoVanHocTap = dao_SoCoVanHocTap.listByColumns("maSoCoVanHocTap",
				getMaSoCoVanHocTap());
		if (list_soCoVanHocTap.size() > 0)
			return list_soCoVanHocTap.get(0);
		else
			return null;
	}

	public String getMaNamHoc() {
		return maNamHoc;
	}

	public void setMaNamHoc(String maNamHoc) {
		this.maNamHoc = maNamHoc;
	}

	public NamHoc getNamHoc() {
		ObjectDAO dao_NamHoc = new DAO_NamHoc();
		ArrayList<NamHoc> list_namHoc = dao_NamHoc.listByColumns("maNamHoc", getMaNamHoc());
		if (list_namHoc.size() > 0)
			return list_namHoc.get(0);
		else
			return null;
	}

	public String getS_thoiGianBatDau() {
		return s_thoiGianBatDau;
	}

	public void setS_thoiGianBatDau(String s_thoiGianBatDau) {
		this.s_thoiGianBatDau = s_thoiGianBatDau;
	}

	public Date getThoiGianBatDau() {
		return Util_Date.stringToDate(getS_thoiGianBatDau());
	}

	public String getS_thoiGianKetThuc() {
		return s_thoiGianKetThuc;
	}

	public void setS_thoiGianKetThuc(String s_thoiGianKetThuc) {
		this.s_thoiGianKetThuc = s_thoiGianKetThuc;
	}

	public Date getThoiGianKetThuc() {
		return Util_Date.stringToDate(getS_thoiGianKetThuc());
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

		ArrayList<PhanCongCoVanHocTap> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		ArrayList<PhanCongCoVanHocTap> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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

		PhanCongCoVanHocTap obj = new PhanCongCoVanHocTap();
		obj.coVanHocTap = getCoVanHocTap();
		obj.soCoVanHocTap=getSoCoVanHocTap();
		obj.namHoc=getNamHoc();
		obj.maPhanCong = getMaPhanCong();
		obj.thoiGianBatDau = getThoiGianBatDau();
		obj.thoiGianKetThuc = getThoiGianKetThuc();
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
		PhanCongCoVanHocTap obj = new PhanCongCoVanHocTap();
		obj.setMaPhanCong(maobj);
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
		ArrayList<PhanCongCoVanHocTap> arr = dao.listByColumnLike(column, key);
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
