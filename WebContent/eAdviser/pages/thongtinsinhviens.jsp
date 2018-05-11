<%@page import="eAdviser.modelDao.DAO_ThongTinSinhVien"%>
<%@page import="eAdviser.model.ThongTinSinhVien"%>
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
	String tenLop = "ThongTinSinhVien";
	String tenTrang = "Quản lý thông tin sinh viên";
	String trangDanhSach = "index.jsp?p=eAdviser/pages/thongtinsinhviens.jsp";
	String[] tk_value = { "soCoVanHocTap","sinhVien", "maThongTinSinhVien", "doiTuongChinhSach", "canBoLop",
			"email", "dienThoaiDiDong", "dienThoaiGiaDinh", "diaChiBaoTin"};
	String[] tk_show = { "Sổ cố vấn học tập","Sinh viên", "Mã thông tin sinh viên", "Đối tượng chính sách",
			"Cán bộ lớp", "Email", "Điện thoại di động", "Điện thoại gia đình", "Địa chỉ báo tin"};
%>

<%@ include file="../../ePartial/code-header.jsp"%>

<%
	ObjectDAO<ThongTinSinhVien> dao = new DAO_ThongTinSinhVien();

	ArrayList<ThongTinSinhVien> list = new ArrayList<ThongTinSinhVien>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
			if (listTemp.get(0) instanceof ThongTinSinhVien) {
				list = (ArrayList<ThongTinSinhVien>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<ThongTinSinhVien>();
	} else {
		list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
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
						<th>Sinh Viên</th>
						<th>Mã thông tin sinh viên</th>
						<th>Cán bộ lớp</th>
						<th>Email</th>
						<th>Điện thoại di động</th>
						<th>Điện thoại gia đình</th>
						<th>Địa chỉ báo tin</th>
						<th>Xử lý</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (ThongTinSinhVien obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaThongTinSinhVien();
							String tenDoiTuong = "";
							if (obj.getSoCoVanHocTap() != null && obj.getSoCoVanHocTap().getTenSoCoVanHocTap() != null) {
								tenDoiTuong = obj.getSoCoVanHocTap().getTenSoCoVanHocTap();
							}
					%>
					<tr class="odd gradeX">
						<td><%=obj.getSoCoVanHocTap() != null && obj.getSoCoVanHocTap().getTenSoCoVanHocTap() != null ? obj.getSoCoVanHocTap().getTenSoCoVanHocTap() : ""%></td>
						<td><%=obj.getSinhVien().getHoDem()+" "+ obj.getSinhVien().getTen()%></td>
						<td><%=obj.getMaThongTinSinhVien()%></td>
						<td><%=obj.getDoiTuongChinhSach()%></td>
						<td><%=obj.getEmail()%></td>
						<td><%=obj.getDienThoaiDiDong()%></td>
						<td><%=obj.getDienThoaiGiaDinh()%></td>
						<td><%=obj.getDiaChiBaoTin()%></td>
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