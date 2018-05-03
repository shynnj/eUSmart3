<%@page import="eCore.modelDao.DAO_DonVi"%>
<%@page import="eCore.model.DonVi"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="eCore.modelDao.DAO_Lop"%>
<%@page import="eCore.model.Lop"%>
<%@page import="eCore.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "DonVi";
	String tenTrang = "Quản lý Đơn Vị";
	String[] tk_value = { "maDonVi", "tenDonVi", "email", "soDienThoai", "diaChiLienHe","donViCha" };
	String[] tk_show = { "Mã đơn vị", "Tên đơn vị", "Email", "Số điện thoại", "Địa chỉ liên hệ","Đơn vị cha" };
%>

<%@ include file="../../ePartial/code-header.jsp"%>

<%
	ObjectDAO<DonVi> dao = new DAO_DonVi();

	ArrayList<DonVi> list = new ArrayList<DonVi>();

	list = session.getAttribute("checkTimKiem") != null ? (ArrayList<DonVi>) session.getAttribute("arr")
			: dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
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
						<th>Mã đơn vị</th>
						<th>Tên đơn vị</th>
						<th>Email</th>
						<th>Số điện thoại</th>
						<th>Địa chỉ liên hệ</th>
						<th>Đơn vị cha</th>
						<th>Mô tả</th>
						<th>Xử lý</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (DonVi obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaDonVi();
							String tenDoiTuong = obj.getTenDonVi();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaDonVi()%></td>
						<td><%=obj.getTenDonVi()%></td>
						<td><%=obj.getEmail()%></td>
						<td><%=obj.getSoDienThoai()%></td>
						<td><%=obj.getDiaChiLienHe()%></td>
						<td><%=obj.getDonViCha() == null ? "" : obj.getDonViCha().getTenDonVi()%></td>
						<td><%=obj.getMoTa()%></td>
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