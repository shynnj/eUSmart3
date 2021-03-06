<%@page import="eCore.modelDao.DAO_TaiKhoanNhanVien"%>
<%@page import="eCore.model.TaiKhoanNhanVien"%>
<%@page import="eAdviser.modelDao.DAO_BaoCaoTinhHinhLop"%>
<%@page import="eAdviser.model.BaoCaoTinhHinhLop"%>
<%@page import="eAdviser.modelDao.DAO_BienBanSinhHoatLop"%>
<%@page import="eAdviser.model.BienBanSinhHoatLop"%>
<%@page import="eAdviser.modelDao.DAO_CoVanHocTap"%>
<%@page import="eAdviser.model.CoVanHocTap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="eCore.modelDao.DAO_Lop"%>
<%@page import="eCore.model.Lop"%>
<%@page import="eCore.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String tenLop = "BaoCaoTinhHinhLop";
String tenTrang = "Quản lý báo cáo tình hình lớp";
String trangDanhSach = "index.jsp?p=eAdviser/pages/baocaotinhhinhlops.jsp";
String[] tk_value = { "soCoVanHocTap", "coVanHocTap", "maBaoCaoTinhHinhLop", "tenBaoCaoTinhHinhLop",
		"hocKy", "namHoc", "soSinhVienTrongLop", "tinhHinhChung" };
String[] tk_show = { "thuộc Sổ cố vấn học tập", "Cố vấn học tập", "Mã báo cáo tình hình lớp",
		"Tên báo cáo tình hình lớp", "Học kỳ", "Năm học", "Số sinh viên trong lớp", "Tình hình chung" };
%>

<%@ include file="../../ePartial/code-header.jsp"%>

<%
	ObjectDAO<BaoCaoTinhHinhLop> dao = new DAO_BaoCaoTinhHinhLop();

	ArrayList<BaoCaoTinhHinhLop> list = new ArrayList<BaoCaoTinhHinhLop>();
	
//lấy mã cố vấn học tập
	String maDangNhap1 = session.getAttribute("maDangNhap").toString();
	ObjectDAO<TaiKhoanNhanVien> dao_TaiKhoanNhanVien = new DAO_TaiKhoanNhanVien();
	ArrayList<TaiKhoanNhanVien> list_TaiKhoanNhanVien = dao_TaiKhoanNhanVien.listByColumns("maDangNhap",
			maDangNhap1);
	String maNhanVien = "";
	if (list_TaiKhoanNhanVien.size() > 0)
		maNhanVien = list_TaiKhoanNhanVien.get(0).getNhanVien().getMaNhanVien();

	String maCoVanHocTap = "";
	ObjectDAO<CoVanHocTap> dao_CoVanHocTap = new DAO_CoVanHocTap();
	ArrayList<CoVanHocTap> list_CoVanHocTap = dao_CoVanHocTap.listByColumns("nhanVien", maNhanVien);
	if (list_CoVanHocTap.size() > 0)
		maCoVanHocTap = list_CoVanHocTap.get(0).getMaCoVanHocTap();
	//kết thúc đoạn lấy mã cố vấn học tập
	
	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
			if (listTemp.get(0) instanceof BaoCaoTinhHinhLop) {
				list = (ArrayList<BaoCaoTinhHinhLop>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<BaoCaoTinhHinhLop>();
	} else {
		//hiện ra danh sách theo mã cố vấn học tập
		if (list_CoVanHocTap.size() > 0)
			list = dao.listByColumns("coVanHocTap", list_CoVanHocTap.get(0).getMaCoVanHocTap());
		else
			list = dao.listAll();
	} 
	
%>


<div class="row">
	<div class="col-lg-12">
		<h4 class="page-header"><%=tenTrang%>
			<p style="color: red; display: inline;"><%=msg%></p>
		</h4>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<%@ include file="../../ePartial/panel-heading.jsp"%>
		<!-- /.panel-heading -->
		<div class="panel-body">
			<table width="100%"
				class="table table-striped table-bordered table-hover"
				id="dataTables-example">
				<thead>
					<tr>
						<th>Sổ cố vấn học tập</th>
						<th>Cố vấn học tập</th>
						<th>Mã báo cáo tình hình lớp</th>
						<th>Tên báo cáo tình hình lớp</th>
						<th>Học kỳ</th>
						<th>Năm học</th>
						<th>Tình hình chung</th>
						<th>Xử lý</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (BaoCaoTinhHinhLop obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaBaoCaoTinhHinhLop();
							String tenDoiTuong = obj.getMaBaoCaoTinhHinhLop();
							if (obj.getSoCoVanHocTap() != null && obj.getSoCoVanHocTap().getTenSoCoVanHocTap() != null) {
								tenDoiTuong = obj.getSoCoVanHocTap().getTenSoCoVanHocTap();
							}
					%>
					<tr class="odd gradeX">
						<td><%=obj.getSoCoVanHocTap() != null && obj.getSoCoVanHocTap().getTenSoCoVanHocTap() != null 
						? obj.getSoCoVanHocTap().getTenSoCoVanHocTap() : ""%></td>
						<td><%=obj.getCoVanHocTap() != null && obj.getCoVanHocTap().getNhanVien().getTenNhanVien() != null 
						? obj.getCoVanHocTap().getNhanVien().getTenNhanVien() : "" %></td>
						<td><%=obj.getMaBaoCaoTinhHinhLop()%></td>
						<td><%=obj.getTenBaoCaoTinhHinhLop()%></td>
						<td><%=obj.getHocKy()%></td>
						<td><%=obj.getNamHoc()%></td>
						<td><%=obj.getTinhHinhChung()%></td>
						<td style="text-align: center;"><%@ include
								file="../../ePartial/menupullcuadoituong.jsp"%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<!-- /.table-responsive -->
			<!-- Phan trang -->
			<%@ include file="../../ePartial/phantrang.jsp"%>
			<!-- ket thuc phan trang -->
		</div>
		<!-- /.panel-body -->
	</div>
	<!-- /.panel -->
</div>
<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<!-- Modal Tìm kiếm-->
<%@ include file="../../ePartial/timkiemModel.jsp"%>
