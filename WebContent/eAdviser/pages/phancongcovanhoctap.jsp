<%@page import="eCore.util.Util_Date"%>
<%@page import="eCore.model.NamHoc"%>
<%@page import="eCore.modelDao.DAO_NamHoc"%>
<%@page import="eAdviser.model.SoCoVanHocTap"%>
<%@page import="eAdviser.modelDao.DAO_SoCoVanHocTap"%>
<%@page import="eAdviser.modelDao.DAO_CoVanHocTap"%>
<%@page import="eAdviser.model.PhanCongCoVanHocTap"%>
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
String tenLop = "PhanCongCoVanHocTap";
String tenTrang = "Quản lý phân công cố vấn học tập";
String trangDanhSach = "index.jsp?p=eAdviser/pages/phancongcovanhoctaps.jsp";
String[] tk_value = { "coVanHocTap", "soCoVanHocTap", "namHoc", "maPhanCong", "thoiGianBatDau","thoiGianKetThuc" };
String[] tk_show = { "Cố vấn học tập", "Sổ cố vấn học tập", "Năm học", "Mã phân công", "Thời gian bắt đầu","Thời gian kết thúc" };
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

	PhanCongCoVanHocTap obj = session.getAttribute("obj") != null ? (PhanCongCoVanHocTap) session.getAttribute("obj") : null;
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
									<label>Cố vấn học tập</label> <select class="form-control"
										name="maCoVanHocTap" <%=(modeView ? " disabled " : "")%>>
										<option value=""></option>
										<%
											ObjectDAO objdaoCoVanHocTap = new DAO_CoVanHocTap();
											ArrayList<CoVanHocTap> listCoVanHocTap= objdaoCoVanHocTap.listAll();
											for (CoVanHocTap cvht : listCoVanHocTap) {
										%>
										<option value="<%=cvht.maCoVanHocTap%>" <%=obj != null && obj.getCoVanHocTap().maCoVanHocTap.equals(cvht.maCoVanHocTap) ? "selected" : ""%>
										><%=cvht.nhanVien.tenNhanVien%></option>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Sổ cố vấn học tập</label> <select class="form-control"
										name="maSoCoVanHocTap" <%=(modeView ? " disabled " : "")%>>
										<option value=""></option>
										<%
											ObjectDAO objdaoSoCoVanHocTap = new DAO_SoCoVanHocTap();
											ArrayList<SoCoVanHocTap> listSoCoVanHocTap= objdaoSoCoVanHocTap.listAll();
											for (SoCoVanHocTap scvht : listSoCoVanHocTap) {
										%>
										<option value="<%=scvht.maSoCoVanHocTap%>" <%=obj != null && obj.getSoCoVanHocTap().maSoCoVanHocTap.equals(scvht.maSoCoVanHocTap) ? "selected" : ""%>
										><%=scvht.tenSoCoVanHocTap%></option>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Năm học</label> <select class="form-control"
										name="maNamHoc" <%=(modeView ? " disabled " : "")%>>
										<option value=""></option>
										<%
											ObjectDAO objdaoNamHoc = new DAO_NamHoc();
											ArrayList<NamHoc> listNamHoc= objdaoNamHoc.listAll();
											for (NamHoc nh : listNamHoc) {
										%>
										<option value="<%=nh.maNamHoc%>" <%=obj != null && obj.getNamHoc().getMaNamHoc().equals(nh.maNamHoc) ? "selected" : ""%>
										><%=nh.tenNamHoc%></option>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Mã phân công</label> <input class="form-control"
										name="maPhanCong"
										value="<%=(obj != null ? obj.getMaPhanCong() : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<label>Thời gian bắt đầu</label> <input type="date" class="form-control"
										name="s_thoiGianBatDau"
										value="<%=(obj != null ? Util_Date.dateToString(obj.getThoiGianBatDau()) : "")%>"
										<%=(modeView ? " disabled " : "")%>>
								</div>
								<div class="form-group">
									<label>Thời gian kết thúc</label> <input type="date" class="form-control"
										name="s_thoiGianKetThuc"
										value="<%=(obj != null ? Util_Date.dateToString(obj.getThoiGianKetThuc()) : "")%>"
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