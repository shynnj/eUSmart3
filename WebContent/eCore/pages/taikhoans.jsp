<%@page import="eCore.modelDao.DAO_TaiKhoan"%>
<%@page import="eCore.model.TaiKhoan"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="eCore.modelDao.DAO_Lop"%>
<%@page import="eCore.model.Lop"%>
<%@page import="eCore.dao.ObjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String tenLop = "TaiKhoan";
	String tenTrang = "Quản lý tài khoản";
	String[] tk_value = { "maDangNhap", "ngayTao", "cauHoiBiMat", "loaiTaiKhoan", "hoVaTen", "email" };
	String[] tk_show = { "Mã đăng nhập", "Ngày tạo", "Câu hỏi bí mật", "Loại tài khoản", "Họ và tên", "Email" };
%>

<%@ include file="../../ePartial/code-header.jsp"%>

<%
	ObjectDAO<TaiKhoan> dao = new DAO_TaiKhoan();

	ArrayList<TaiKhoan> list = new ArrayList<TaiKhoan>();

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
			if (listTemp.get(0) instanceof TaiKhoan) {
				list = (ArrayList<TaiKhoan>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<TaiKhoan>();
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
						<th>Ảnh đại diện</th>
						<th>Mã đăng nhập</th>
<!-- 						<th>Mật khẩu</th> -->
						<th>Ngày tạo</th>
						<th>Ngày cập nhật mật khẩu</th>
						<th>Câu hỏi bí mật</th>
<!-- 						<th>Trả lời câu hỏi bí mật</th> -->
						<th>Loại tài khoản</th>
						<th>Trạng thái hoạt động</th>
						<th>Email</th>
						<th>Họ và tên</th>
						<th>Mô tả</th>
<!-- 						<th>Ghi chú</th> -->
						<th>Xử lí</th>
<!-- 						<th>Thời gian cập nhật</th> -->

					</tr>
				</thead>
				<tbody>
					<%
						for (TaiKhoan obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaDangNhap();
							String tenDoiTuong = obj.getHoVaTen();
					%>
					<tr class="odd gradeX">
						<td><%=obj.getAnhDaiDien()%></td>
						<td><%=obj.getMaDangNhap()%></td>
<%-- 						<td><%=obj.getMatKhau()%></td> --%>
						<td><%=obj.getNgayTao()%></td>
						<td><%=obj.getNgayCapNhatMatKhau()%></td>
						<td><%=obj.getCauHoiBiMat()%></td>
<%-- 						<td><%=obj.getTraLoiCauHoiBiMat()%></td> --%>
						<td><%=obj.getLoaiTaiKhoan()%></td>
						<td><%=obj.isTrangThaiHoatDong()%></td>
						<td><%=obj.getEmail()%></td>
<%-- 						<td><%=obj.getDonViCha() == null ? "" : obj.getDonViCha().getTenDonVi()%></td> --%>
						<td><%=obj.getMoTa()%></td>
<%-- 						<td><%=obj.getGhiChu()%></td> --%>
<%-- 						<td><%=obj.getThoiGianCapNhat()%></td> --%>
<%-- 						<td><%=obj.getNhomPhanQuyen()%></td> --%>
						
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