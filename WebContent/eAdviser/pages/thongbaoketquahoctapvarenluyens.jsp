<%@page import="eAdviser.modelDao.DAO_ThongBaoKetQuaHocTapVaRenLuyen"%>
<%@page import="eAdviser.model.ThongBaoKetQuaHocTapVaRenLuyen"%>
<%@page import="eCore.util.Util_Date"%>
<%@page import="eAdviser.modelDao.DAO_PhanCongCoVanHocTap"%>
<%@page import="eAdviser.model.PhanCongCoVanHocTap"%>
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
	if (session.getAttribute("maSo") == null) {
%>

<script type="text/javascript">
	alert("Bạn hãy chọn sổ cố vấn học tập.");
	window.location = "index.jsp?p=eAdviser/pages/chonsocovanhoctaps.jsp";
</script>
<%
	} else {
%>
<%
	String tenLop = "ThongBaoKetQuaHocTapVaRenLuyen";
	String tenTrang = "Quản lý thông báo kết quả và rèn luyện";
	String trangDanhSach = "index.jsp?p=eAdviser/pages/thongbaoketquahoctapvarenluyens.jsp";
	String[] tk_value = { "coVanHocTap", "soCoVanHocTap", "sinhVien", "maThongBaoKetQuaHocTapVaRenLuyen",
			"hocKy", "namHoc", "ketQuaHocTap", "xepLoaiHocTap", "ketQuaRenLuyen", "xepLoaiRenLuyen",
			"thongBaoCuThe" };
	String[] tk_show = { "Cố vấn học tập", "Sổ cố vấn học tập", "Sinh viên","Mã thông báo kết quả học tập và rèn luyện", "Học kỳ", "Năm học",
			"Kết quả học tập", "Xếp loại học tập", "Kết quả rèn luyện", "Xếp loại rèn luyện",
			"Thông báo cụ thể" };
%>

<%@ include file="../../ePartial/code-header.jsp"%>

<%
	ObjectDAO<ThongBaoKetQuaHocTapVaRenLuyen> dao = new DAO_ThongBaoKetQuaHocTapVaRenLuyen();

	ArrayList<ThongBaoKetQuaHocTapVaRenLuyen> list = new ArrayList<ThongBaoKetQuaHocTapVaRenLuyen>();
	String maSo = session.getAttribute("maSo").toString();
	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
			if (listTemp.get(0) instanceof ThongBaoKetQuaHocTapVaRenLuyen) {
				list = (ArrayList<ThongBaoKetQuaHocTapVaRenLuyen>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<ThongBaoKetQuaHocTapVaRenLuyen>();
	} else {
		list = dao.listByColumns("soCoVanHocTap", maSo);
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
						<th>Sinh viên</th>
						<th>Học kỳ</th>
						<th>Năm học</th>
						<th>Kết quả học tập</th>
						<th>Xếp loại học tập</th>
						<th>Kết quả rèn luyện</th>
						<th>Xếp loại rèn luyện</th>
						<th>Thông báo cụ thể</th>
						<th>Xử lý</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (ThongBaoKetQuaHocTapVaRenLuyen obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaThongBaoKetQuaHocTapVaRenLuyen();
							String tenDoiTuong = obj.getMaThongBaoKetQuaHocTapVaRenLuyen();
							if (obj.getCoVanHocTap() != null && obj.getCoVanHocTap().getNhanVien().getTenNhanVien() != null) {
								tenDoiTuong = obj.getCoVanHocTap().getNhanVien().getTenNhanVien();
							}
					%>
					<tr class="odd gradeX">
						<td><%=obj.getSoCoVanHocTap() != null && obj.getSoCoVanHocTap().getTenSoCoVanHocTap() != null
						? obj.getSoCoVanHocTap().getTenSoCoVanHocTap()
						: ""%></td>
						<td><%=obj.getCoVanHocTap() != null && obj.getCoVanHocTap().getNhanVien().getTenNhanVien() != null
						? obj.getCoVanHocTap().getNhanVien().getTenNhanVien()
						: ""%></td>
						<td><%=obj.getSinhVien() != null
						&& obj.getSinhVien().getHoDem() + " " + obj.getSinhVien().getTen() != null
								? obj.getSinhVien().getHoDem() + " " + obj.getSinhVien().getTen()
								: ""%></td>
						<td><%=obj.getHocKy()%></td>
						<td><%=obj.getNamHoc()%></td>
						<td><%=obj.ketQuaHocTap%></td>
						<td><%=obj.getXepLoaiHocTap()%></td>
						<td><%=obj.ketQuaRenLuyen%></td>
						<td><%=obj.getXepLoaiRenLuyen()%></td>
						<td><%=obj.getThongBaoCuThe()%></td>
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
<%}%>