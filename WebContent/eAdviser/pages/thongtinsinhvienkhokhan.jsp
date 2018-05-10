<%@page import="eAdviser.model.ThongTinSinhVienKhoKhan"%>
<%@page import="eAdviser.model.ThongTinKhenThuongSinhVien"%>
<%@page import="eCore.model.SinhVien"%>
<%@page import="eCore.modelDao.DAO_SinhVien"%>
<%@page import="eAdviser.modelDao.DAO_SoCoVanHocTap"%>
<%@page import="eAdviser.model.ThongTinSinhVien"%>
<%@page import="eCore.util.Util_Date"%>
<%@page import="eAdviser.model.SoCoVanHocTap"%>
<%@page import="eCore.modelDao.DAO_Lop"%>
<%@page import="eCore.model.NhanVien"%>
<%@page import="eCore.modelDao.DAO_NhanVien"%>
<%@page import="eAdviser.model.CoVanHocTap"%>
<%@page import="eCore.model.Lop"%>
<%@page import="eCore.model.DonVi"%>
<%@page import="java.util.ArrayList"%>
<%@page import="eCore.modelDao.DAO_DonVi"%>
<%@page import="eCore.dao.ObjectDAO"%>
<%@page import="eCore.model.ChucNang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "ThongTinSinhVienKhoKhan";
	String tenTrang = "Quản lý thông tin  sinh viên khó khăn";
	String trangDanhSach = "index.jsp?p=eAdviser/pages/thongtinsinhvienkhokhans.jsp";
	String[] tk_value = { "soCoVanHocTap", "sinhVien", "maThongTinSinhVienKhoKhan", "hoanCanhGiaDinh",
			"lyDo","deXuat","thoiGianGhiNhan" };
	String[] tk_show = { "Sổ cố vấn học tập", "Sinh viên", "Mã thông tin sinh viên khó khăn","Hoàn cảnh gia đình",
			"Lý do", "Đề xuất","Thời gian ghi nhận" };
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

	ThongTinSinhVienKhoKhan obj = null;
	if (session.getAttribute("obj") != null) {
		if (session.getAttribute("obj") instanceof ThongTinSinhVienKhoKhan) {
			obj = (ThongTinSinhVienKhoKhan) session.getAttribute("obj");
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
									<label>Sổ cố vấn học tập</label> <select class="form-control"
										name="maSoCoVanHocTap" <%=(modeView ? " disabled " : "")%>>
										<%
											ObjectDAO objdao = new DAO_SoCoVanHocTap();
											ArrayList<SoCoVanHocTap> listSoCoVanHocTap = objdao.listAll();
											for (SoCoVanHocTap scvht : listSoCoVanHocTap) {
												if (obj != null && obj.getSoCoVanHocTap() != null
														&& obj.getSoCoVanHocTap().getMaSoCoVanHocTap().equals(scvht.getMaSoCoVanHocTap())) {
										%>
										<option value="<%=scvht.maSoCoVanHocTap%>" selected="selected"><%=scvht.getTenSoCoVanHocTap()%>
										</option>
										<%
											} else {
										%>
										<option value="<%=scvht.maSoCoVanHocTap%>"><%=scvht.getTenSoCoVanHocTap()%>
										</option>
										<%
											}
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Sinh viên</label> <select class="form-control"
										name="maSinhVien" <%=(modeView ? " disabled " : "")%>>
										<%
											ObjectDAO objdaosv = new DAO_SinhVien();
											ArrayList<SinhVien> listSinhVien = objdaosv.listAll();
											for (SinhVien sv : listSinhVien) {
												if (obj != null && obj.getSinhVien() != null
														&& obj.getSinhVien().getMaSinhVien().equals(sv.getMaSinhVien())) {
										%>
										<option value="<%=sv.maSinhVien%>" selected="selected"><%=sv.getHoDem() + " " + sv.getTen()%>
										</option>
										<%
											} else {
										%>
										<option value="<%=sv.maSinhVien%>"><%=sv.getHoDem() + " " + sv.getTen()%>
										</option>
										<%
											}
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Mã thông tin sinh viên khó khăn</label> <input
										class="form-control" name="maThongTinSinhVienKhoKhan"
										value="<%=(obj != null ? obj.getMaThongTinSinhVienKhoKhan() : "")%>"
										<%=(modeView || modeEdit ? " readonly " : "")%>>
								</div>
								<div class="form-group">
									<label>Lý do</label> <textarea class="form-control"
										name="lyDo" 								
										<%=(modeView ? " disabled " : "")%>><%=(obj != null ? obj.getLyDo() : "")%></textarea>
								</div>
								<div class="form-group">
									<label>Đề xuất</label> <textarea class="form-control"
										name="deXuat" 								
										<%=(modeView ? " disabled " : "")%>><%=(obj != null ? obj.getDeXuat() : "")%></textarea>
								</div>
								<div class="form-group">
									<label>Thời gian ghi nhận</label> <input type="date" class="form-control"
										name="s_thoiGianGhiNhan"
										value="<%=(obj != null ? Util_Date.dateToString(obj.getThoiGianGhiNhan()) : "")%>"
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