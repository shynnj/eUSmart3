<%@page import="eCore.util.Util_Date"%>
<%@page import="eAdviser.modelDao.DAO_SoCoVanHocTap"%>
<%@page import="eAdviser.model.SoCoVanHocTap"%>
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
	String tenLop = "SoCoVanHocTap";
	String tenTrang = "Quản lý sổ Cố vấn học tập";
	String trangDanhSach = "index.jsp?p=eAdviser/pages/socovanhoctaps.jsp";
	String[] tk_value = { "lop","maSoCoVanHocTap", "tenSoCoVanHocTap", "ngayBD", "ngayKT"};
	String[] tk_show = { "Lớp", "Mã sổ cố vấn học tập", "Tên sổ cố vấn học tập", "Ngày bắt đầu", "Ngày kết thúc" };
%>

<%@ include file="../../ePartial/code-header.jsp"%>

<%
	ObjectDAO<SoCoVanHocTap> dao = new DAO_SoCoVanHocTap();

	ArrayList<SoCoVanHocTap> list = new ArrayList<SoCoVanHocTap>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
			if (listTemp.get(0) instanceof SoCoVanHocTap) {
				list = (ArrayList<SoCoVanHocTap>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<SoCoVanHocTap>();
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
						<th>Lớp</th>
						<th>Mã sổ cố vấn học tập</th>
						<th>Tên sổ cố vấn học tập</th>
						<th>Ngày bắt đầu</th>
						<th>Ngày kết thúc</th>
						<th>Xử lý</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (SoCoVanHocTap obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaSoCoVanHocTap();
							String tenDoiTuong ="";
							if (obj.getLop() != null && obj.getLop().getTenLop() != null) {
								 tenDoiTuong = obj.getLop().getTenLop();
							}
					%>
					<tr class="odd gradeX">
						<td><%=obj.getLop() != null && obj.getLop().getTenLop()!=null
						? obj.getLop().getTenLop() : ""%></td>
						<td><%=obj.getMaSoCoVanHocTap()%></td>
						<td><%=obj.getTenSoCoVanHocTap()%></td>
						<td><%=Util_Date.dateToString2(obj.getNgayBD())%></td>
						<td><%=Util_Date.dateToString2(obj.getNgayKT())%></td>
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