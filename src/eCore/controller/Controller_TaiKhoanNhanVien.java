package eCore.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Date;

import javax.persistence.ManyToOne;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.annotations.Type;

import eCore.dao.ObjectDAO;
import eCore.model.DonVi;
import eCore.model.Lop;
import eCore.model.NhanVien;
import eCore.model.NhomPhanQuyen;
import eCore.model.TaiKhoanNhanVien;
import eCore.modelDao.DAO_DonVi;
import eCore.modelDao.DAO_Lop;
import eCore.modelDao.DAO_NhanVien;
import eCore.modelDao.DAO_NhomPhanQuyen;
import eCore.modelDao.DAO_TaiKhoanNhanVien;
import eCore.util.Util_Date;

public class Controller_TaiKhoanNhanVien extends TaiKhoanNhanVien implements ZEController {
	ObjectDAO dao = new DAO_TaiKhoanNhanVien();

	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "eCore/pages/taikhoannhanviens.jsp";
	String duongDanTrangView = "eCore/pages/taikhoannhanvien.jsp";
	String tenCotTimDoiTuong = "maDangNhap";
	String maObj;
	String s_ngayTao;
	String s_ngayCapNhatMatKhau;
	String maNhomPhanQuyen;
	String maNhanVien;

	public String getMaNhanVien() {
		return maNhanVien;
	}

	public void setMaNhanVien(String maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public NhanVien getNhanVien() {
		ObjectDAO<NhanVien> dao_nhanVien = new DAO_NhanVien();
		ArrayList<NhanVien> list_nhanVien = dao_nhanVien.listByColumns("maNhanVien", getMaNhanVien());
		if(list_nhanVien.size()>0)
			return list_nhanVien.get(0);
		else
			return null;
	}

	public String getS_ngayTao() {
		return s_ngayTao;
	}

	public void setS_ngayTao(String s_ngayTao) {
		this.s_ngayTao = s_ngayTao;
	}

	public Date getNgayTao() {
		return Util_Date.stringToDate(getS_ngayTao());
	}

	public String getS_ngayCapNhatMatKhau() {
		return s_ngayCapNhatMatKhau;
	}

	public void setS_ngayCapNhatMatKhau(String s_ngayCapNhatMatKhau) {
		this.s_ngayCapNhatMatKhau = s_ngayCapNhatMatKhau;
	}

	public Date getNgayCapNhatMatKhau() {
		return Util_Date.stringToDate(getS_ngayCapNhatMatKhau());
	}

	public String getMaNhomPhanQuyen() {
		return maNhomPhanQuyen;
	}

	public void setMaNhomPhanQuyen(String maNhomPhanQuyen) {
		this.maNhomPhanQuyen = maNhomPhanQuyen;
	}

	public NhomPhanQuyen getNhomPhanQuyen() {
		ObjectDAO<NhomPhanQuyen> dao_nhomPhanQuyen = new DAO_NhomPhanQuyen();
		ArrayList<NhomPhanQuyen> list_nhomPhanQuyen = dao_nhomPhanQuyen.listByColumns("maNhomPhanQuyen",
				getMaNhomPhanQuyen());
		if (list_nhomPhanQuyen.size() > 0)
			return list_nhomPhanQuyen.get(0);
		else
			return null;
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

	public String getMaObj() {
		return maObj;
	}

	public void setMaObj(String maObj) {
		this.maObj = maObj;
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

		ArrayList<TaiKhoanNhanVien> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		ArrayList<TaiKhoanNhanVien> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		TaiKhoanNhanVien obj = new TaiKhoanNhanVien();
		 obj.maDangNhap=getMaDangNhap();
		 obj.matKhau=getMatKhau();
		 obj.anhDaiDien=getAnhDaiDien();
		 obj.ngayTao=getNgayTao();
		 obj.ngayCapNhatMatKhau=getNgayCapNhatMatKhau();
		 obj.cauHoiBiMat=getCauHoiBiMat();
		 obj.traLoiCauHoiBiMat=getTraLoiCauHoiBiMat();
		 obj.loaiTaiKhoan=getLoaiTaiKhoan();
		 obj.trangThaiHoatDong=isTrangThaiHoatDong();
		 obj.email=getEmail();
		 obj.hoVaTen=getHoVaTen();
		 obj.moTa=getMoTa();
		 obj.ghiChu=getGhiChu();
		 obj.thoiGianCapNhat=new Date();
		 obj.nhomPhanQuyen=getNhomPhanQuyen();
		 obj.nhanVien=getNhanVien();
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
		TaiKhoanNhanVien obj = new TaiKhoanNhanVien();
		obj.setMaDangNhap(maobj);
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
		ArrayList<TaiKhoanNhanVien> arr = dao.listByColumnLike(column, key);
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
