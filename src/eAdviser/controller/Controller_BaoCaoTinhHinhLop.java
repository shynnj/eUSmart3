package eAdviser.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import eAdviser.model.BaoCaoTinhHinhLop;
import eAdviser.model.BienBanSinhHoatLop;
import eAdviser.model.CoVanHocTap;
import eAdviser.model.SoCoVanHocTap;
import eAdviser.modelDao.DAO_BaoCaoTinhHinhLop;
import eAdviser.modelDao.DAO_CoVanHocTap;
import eAdviser.modelDao.DAO_SoCoVanHocTap;
import eCore.controller.ZEController;
import eCore.dao.ObjectDAO;

public class Controller_BaoCaoTinhHinhLop extends BaoCaoTinhHinhLop implements ZEController {

	ObjectDAO dao = new DAO_BaoCaoTinhHinhLop();
	String timKiemTheo;
	String tuKhoa;
	String duongDanTrang = "eAdviser/pages/baocaotinhhinhlops.jsp";
	String duongDanTrangView = "eAdviser/pages/baocaotinhhinhlop.jsp";
	String tenCotTimDoiTuong = "maBaoCaoTinhHinhLop";
	String maObj;
	String maCoVanHocTap;
	String maSoCoVanHocTap;

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
		ObjectDAO<CoVanHocTap> objdao_covanhoctap = new DAO_CoVanHocTap();
		ArrayList<CoVanHocTap> list = objdao_covanhoctap.listByColumns("maCoVanHocTap", getMaCoVanHocTap());
		if (list.size() > 0)
			return list.get(0);
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
		ObjectDAO<SoCoVanHocTap> objdao_socovanhoctap = new DAO_SoCoVanHocTap();
		ArrayList<SoCoVanHocTap> list_SoCoVanHocTap = objdao_socovanhoctap.listByColumns("maSoCoVanHocTap",
				getMaSoCoVanHocTap());
		if (list_SoCoVanHocTap.size() > 0)
			return list_SoCoVanHocTap.get(0);
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

		ArrayList<BaoCaoTinhHinhLop> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		ArrayList<BaoCaoTinhHinhLop> arr = dao.listByColumnLike(tenCotTimDoiTuong, maobj);
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
		if (!getMaSoCoVanHocTap().equals("null") && !getMaSoCoVanHocTap().equals("")) {
			BaoCaoTinhHinhLop obj = new BaoCaoTinhHinhLop();
			obj.soCoVanHocTap = getSoCoVanHocTap();
			obj.coVanHocTap = getCoVanHocTap();
			obj.maBaoCaoTinhHinhLop = getMaBaoCaoTinhHinhLop();
			obj.tenBaoCaoTinhHinhLop = getTenBaoCaoTinhHinhLop();
			obj.hocKy = getHocKy();
			obj.namHoc = getNamHoc();
			obj.soSinhVienTrongLop = getSoSinhVienTrongLop();
			obj.tinhHinhChung = getTinhHinhChung();
			obj.tuTuongChinhTri = getTuTuongChinhTri();
			obj.ketQuaHocTap = getKetQuaHocTap();
			obj.ketQuaRenLuyen = getKetQuaRenLuyen();
			obj.ketQuaCacHoatDongKhac = getKetQuaCacHoatDongKhac();
			obj.kienNghiDeXuat = getKienNghiDeXuat();
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
		return "FAIL";
	}

	@Override
	public String delete() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String maobj = request.getParameter("maobj");
		BaoCaoTinhHinhLop obj = new BaoCaoTinhHinhLop();
		obj.setMaBaoCaoTinhHinhLop(maobj);
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
		ArrayList<BaoCaoTinhHinhLop> arr = dao.listByColumnLike(column, key);
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
