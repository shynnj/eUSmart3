<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="eCore.modelDao.DAO_Lop"%>
<%@page import="eCore.model.Lop"%>
<%@page import="eCore.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "Lop";
	String tenTrang = "Quản lý Lớp";
	String[] tk_value = { "maLop", "tenLop", "khoa", "nienKhoa", "donVi" };
	String[] tk_show = { "Mã lớp", "Tên lớp", "Khóa", "Niên khóa", "Đơn vị" };
%>

<%@ include file="../../ePartial/code-header.jsp"%>

<%
	ObjectDAO<Lop> dao = new DAO_Lop();

	ArrayList<Lop> list = new ArrayList<Lop>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
	if (listTemp.get(0) instanceof Lop) {
				list = (ArrayList<Lop>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<Lop>();
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
						<th>Mã lớp</th>
						<th>Tên lớp</th>
						<th>Khóa</th>
						<th>Thời gian đào tạo</th>
						<th>Đơn vị quản lý</th>
						<th>Mô tả</th>
						<th>Xử lý</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (Lop obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaLop();
							String tenDoiTuong = obj.getTenLop();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getMaLop()%></td>
						<td><%=obj.getTenLop()%></td>
						<td><%=obj.getKhoa()%></td>
						<td><%=obj.getNienKhoa()%></td>
						<td><%=obj.getDonVi() == null ? "" : obj.getDonVi().getTenDonVi()%></td>
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