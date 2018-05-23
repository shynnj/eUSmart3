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
	String tenLop = "CoVanHocTap";
	String tenTrang = "Quản lý thông tin cố vấn học tập";
	String trangDanhSach = "index.jsp?p=eAdviser/pages/covanhoctaps.jsp";
	String[] tk_value = { "maCoVanHocTap", "nhanVien", "dienThoaiCoQuan", "diaChiGuiThu", "diDong" };
	String[] tk_show = { "Mã Cố vấn học tập", "Nhân viên", "Điện thoại cơ quan", "Địa chỉ gửi thư", "Di động" };
%>

<%@ include file="../../ePartial/code-header.jsp"%>

<%
	ObjectDAO<CoVanHocTap> dao = new DAO_CoVanHocTap();

	ArrayList<CoVanHocTap> list = new ArrayList<CoVanHocTap>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
			if (listTemp.get(0) instanceof CoVanHocTap) {
				list = (ArrayList<CoVanHocTap>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<CoVanHocTap>();
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
						<th>Mã Cố vấn học tập</th>
						<th>Nhân viên</th>
						<th>Điện thoại cơ quan</th>
						<th>Địa chỉ liên hệ</th>
						<th>Di động</th>
						<th>Xử lý</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (CoVanHocTap obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaCoVanHocTap();
							String tenDoiTuong ="";
							if (obj.getNhanVien() != null && obj.getNhanVien().getTenNhanVien() != null) {
								 tenDoiTuong = obj.getNhanVien().getTenNhanVien();
							}
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaCoVanHocTap()%></td>
						<td><%=obj.getNhanVien() != null && obj.getNhanVien().getTenNhanVien()!=null
						? obj.getNhanVien().getTenNhanVien() : ""%></td>
						<td><%=obj.getDienThoaiCoQuan()%></td>
						<td><%=obj.getDiaChiGuiThu()%></td>
						<td><%=obj.getDiDong()%></td>
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