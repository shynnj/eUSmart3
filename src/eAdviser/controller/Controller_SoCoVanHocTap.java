package eAdviser.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import eAdviser.model.CoVanHocTap;
import eAdviser.model.SoCoVanHocTap;
import eAdviser.modelDao.DAO_CoVanHocTap;
import eAdviser.modelDao.DAO_SoCoVanHocTap;
import eCore.controller.ZEController;
import eCore.dao.ObjectDAO;
import eCore.model.DonVi;
import eCore.model.Lop;
import eCore.model.NhanVien;
import eCore.modelDao.DAO_Lop;
import eCore.modelDao.DAO_NhanVien;
import eCore.util.Util_Date;

public class Controller_SoCoVanHocTap extends SoCoVanHocTap implements ZEController {

	ObjectDAO dao = new DAO_SoCoVanHocTap();
	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "eAdviser/pages/socovanhoctaps.jsp";
	String duongDanTrangView = "eAdviser/pages/socovanhoctap.jsp";
	String tenCotTimDoiTuong = "maSoCoVanHocTap";
	String maObj;
	String maLop;
	String s_ngayBD;
	String s_ngayKT;

	public String getS_ngayBD() {
		return s_ngayBD;
	}

	public void setS_ngayBD(String s_ngayBD) {
		this.s_ngayBD = s_ngayBD;
	}

	public Date getNgayBatDau() {
		return Util_Date.stringToDate(getS_ngayBD());
	}

	public String getS_ngayKT() {
		return s_ngayKT;
	}

	public void setS_ngayKT(String s_ngayKT) {
		this.s_ngayKT = s_ngayKT;
	}

	public Date getNgayKetThuc() {
		return Util_Date.stringToDate(getS_ngayKT());
	}

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

	public String getMaLop() {
		return maLop;
	}

	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}

	public Lop getLop() {
		ObjectDAO dao_lop = new DAO_Lop();
		ArrayList<Lop> list_lop = dao_lop.listByColumns("maLop", getMaLop());
		if (list_lop.size() > 0)
			return list_lop.get(0);
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

		ArrayList<SoCoVanHocTap> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		ArrayList<SoCoVanHocTap> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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

		SoCoVanHocTap obj = new SoCoVanHocTap();
		obj.lop = getLop();
		obj.maSoCoVanHocTap = getMaSoCoVanHocTap();
		obj.tenSoCoVanHocTap = getTenSoCoVanHocTap();
		obj.ngayBD = getNgayBatDau();
		obj.ngayKT = getNgayKetThuc();
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
		SoCoVanHocTap obj = new SoCoVanHocTap();
		obj.setMaSoCoVanHocTap(maobj);
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
		ArrayList<SoCoVanHocTap> arr = dao.listByColumnLike(column, key);
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
