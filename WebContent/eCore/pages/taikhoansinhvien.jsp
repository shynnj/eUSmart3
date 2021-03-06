<%@page import="eCore.model.NhomPhanQuyen"%>
<%@page import="eCore.modelDao.DAO_NhomPhanQuyen"%>
<%@page import="java.util.Date"%>
<%@page import="eCore.util.Util_Date"%>
<%@page import="eCore.model.Lop"%>
<%@page import="eCore.model.TaiKhoan"%>
<%@page import="eCore.model.TaiKhoanNhanVien"%>
<%@page import="eCore.model.TaiKhoanSinhVien"%>
<%@page import="java.util.ArrayList"%>
<%@page import="eCore.modelDao.DAO_TaiKhoan"%>
<%@page import="eCore.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "TaiKhoanSinhVien";
	String tenTrang = "Quản lý Tài Khoản Sinh Viên";
	String trangDanhSach = "index.jsp?p=eCore/pages/taikhoansinhviens.jsp";
	String[] tk_value = { "maDangNhap", "ngayTao", "cauHoiBiMat", "loaiTaiKhoan", "hoVaTen", "email" };
	String[] tk_show = { "Mã đăng nhập", "Ngày tạo", "Câu hỏi bí mật", "Loại tài khoản", "Họ và tên", "Email" };
%>
<%@ include file="../../ePartial/code-header.jsp"%>

<%
	String mode = session.getAttribute("mode") + "";
	String tenTrangChiTiet = "";
	tenTrangChiTiet = mode.equals("addNew") ? "Thêm mới" : tenTrangChiTiet;
	tenTrangChiTiet = mode.equals("viewDetail") ? "Xem thông tin chi tiết" : tenTrangChiTiet;
	tenTrangChiTiet = mode.equals("viewDetailAndEdit") ? "Chỉnh sửa thông tin" : tenTrangChiTiet;
	tenTrangChiTiet = mode.equals("null") ? "" : tenTrangChiTiet;

	boolean modeView = mode.equals("viewDetail");
	boolean modeEdit = mode.equals("viewDetailAndEdit");

	TaiKhoanSinhVien obj = null;
	if (session.getAttribute("obj") != null) {
		if (session.getAttribute("obj") instanceof TaiKhoanSinhVien) {
			obj = (TaiKhoanSinhVien) session.getAttribute("obj");
		}
	}
%>
<div class="row">
	<div class="col-lg-12">
		<h4 class="page-header"><%=tenTrang%>
			-
			<%=tenTrangChiTiet%>
		</h4>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<form action="luuDuLieu<%=tenLop%>.action" method="post">
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading" style="text-align: left;">
					<div class="row">
						<div class="col-md-5">
							<p style="color: red; display: inline;"><%=msg%></p>
						</div>
						<div class="col-md-7">
							<%@ include file="../../ePartial/processform.jsp"%>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row" style="padding: 10px">
						<div class="row">
							<div class="col-lg-6">
								<div class="form-group">
									<label>Mã đăng nhập</label> <input class="form-control"
										name="maDangNhap"
										value="<%=(obj != null ? obj.getMaDangNhap() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Mật khẩu</label> <input class="form-control"
										name="matKhau" type="password"
										value="<%=(obj != null ? obj.getMatKhau() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Họ và tên</label> <input class="form-control"
										name="hoVaTen"
										value="<%=(obj != null ? obj.getHoVaTen() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Câu hỏi bí mật</label> <input class="form-control"
										name="cauHoiBiMat"
										value="<%=(obj != null ? obj.getCauHoiBiMat() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Trả lời câu hỏi bí mật</label> <input
										class="form-control" name="traLoiCauHoiBiMat" type="password"
										value="<%=(obj != null ? obj.getTraLoiCauHoiBiMat() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<input class="form-control"
										name="s_ngayTao" type="hidden"
										value="<%=(obj != null ? Util_Date.dateToString(obj.getNgayTao()) : new Date())%>"
										>
								</div>
								<div class="form-group">
									<label>Trạng thái hoạt động</label> <input class="form-control"
										name="trangThaiHoatDong"
										value="<%=(obj != null ? obj.isTrangThaiHoatDong() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Email</label> <input class="form-control" name="email"
										value="<%=(obj != null ? obj.getEmail() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Nhóm phân quyền</label> <select class="form-control"
										name="maNhomPhanQuyen">
										<option></option>
										<%
											ObjectDAO dao_nhomPhanQuyen = new DAO_NhomPhanQuyen();
											ArrayList<NhomPhanQuyen> listNhomPhanQuyen = dao_nhomPhanQuyen.listAll();
											for (int i = 0; i < listNhomPhanQuyen.size(); i++) {
												NhomPhanQuyen npq = listNhomPhanQuyen.get(i);
												if (obj != null && obj.getNhomPhanQuyen() != null
														&& obj.getNhomPhanQuyen().getMaNhomPhanQuyen().equals(npq.maNhomPhanQuyen)) {
										%>
										<option value="<%=npq.maNhomPhanQuyen%>" selected="selected"><%=npq.maNhomPhanQuyen%></option>
										<%
											} else {
										%>
										<option value="<%=npq.maNhomPhanQuyen%>"><%=npq.maNhomPhanQuyen%></option>
										<%
											}
										%>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Mã sinh viên</label> <input class="form-control"
										name="maSinhVien"
										value="<%=(obj != null && obj.getSinhVien()!=null? obj.getSinhVien().getMaSinhVien() :"" )%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="form-group">
									<label>Mô tả</label>
									<textarea class="form-control" cols="80" id="editor1" rows="5"
										name="moTa" <%=(modeView ? " disabled " : "")%>><%=(obj != null ? obj.getMoTa() : "")%></textarea>
								</div>
								<div class="form-group">
									<label>Ghi chú</label>
									<textarea class="form-control" cols="80" id="editor2" rows="5"
										name="ghiChu" <%=(modeView ? " disabled " : "")%>><%=(obj != null ? obj.getGhiChu() : "")%></textarea>
								</div>
							</div>
						</div>
						<div class="panel-footer" style="text-align: left;">
							<div class="col-md-5"></div>
							<div class="col-md-7">
								<%@ include file="../../ePartial/processform.jsp"%>
							</div>
						</div>
						<!-- /.col-lg-6 (nested) -->
						<!-- /.col-lg-6 (nested) -->
					</div>
					<!-- /.row (nested) -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
</form>