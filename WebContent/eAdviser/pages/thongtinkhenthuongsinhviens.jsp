<%@page import="eAdviser.modelDao.DAO_PhanCongCoVanHocTap"%>
<%@page import="eAdviser.model.PhanCongCoVanHocTap"%>
<%@page import="eCore.modelDao.DAO_TaiKhoanNhanVien"%>
<%@page import="eCore.model.TaiKhoanNhanVien"%>
<%@page import="eCore.util.Util_Date"%>
<%@page import="eAdviser.model.ThongTinKhenThuongSinhVien"%>
<%@page import="eAdviser.modelDao.DAO_ThongTinKhenThuongSinhVien"%>
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
	String tenLop = "ThongTinKhenThuongSinhVien";
	String tenTrang = "Quản lý thông tin khen thưởng sinh viên";
	String trangDanhSach = "index.jsp?p=eAdviser/pages/thongtinkhenthuongsinhviens.jsp";
	String[] tk_value = { "soCoVanHocTap","sinhVien", "maThongTinKhenThuongSinhVien", "noiDungKhenThuong", "thoiGianKhenThuong"	};
	String[] tk_show = { "Sổ cố vấn học tập","Sinh viên", "Mã thông tin khen thưởng sinh viên", "Nội dung khen thưởng",
			"Thời gian khen thưởng"};
%>

<%@ include file="../../ePartial/code-header.jsp"%>





<%
	ObjectDAO<ThongTinKhenThuongSinhVien> dao = new DAO_ThongTinKhenThuongSinhVien();

	ArrayList<ThongTinKhenThuongSinhVien> list = new ArrayList<ThongTinKhenThuongSinhVien>();
	String maSo = session.getAttribute("maSo").toString();
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
	ObjectDAO<PhanCongCoVanHocTap> dao_PhanCongCoVanHocTap = new DAO_PhanCongCoVanHocTap();
	ArrayList<PhanCongCoVanHocTap> list_PhanCongCoVanHocTap = new ArrayList();
	if (list_CoVanHocTap.size() > 0){
		maCoVanHocTap = list_CoVanHocTap.get(0).getMaCoVanHocTap();
	 list_PhanCongCoVanHocTap = dao_PhanCongCoVanHocTap
			.listByColumns("coVanHocTap", maCoVanHocTap);}

	if (session.getAttribute("checkTimKiem") != null) {
		ArrayList listTemp = (ArrayList) session.getAttribute("arr");
		if (listTemp.size() > 0) {
			if (listTemp.get(0) instanceof ThongTinKhenThuongSinhVien) {
				list = (ArrayList<ThongTinKhenThuongSinhVien>) listTemp;
			} else {
				session.setAttribute("checkTimKiem", null);
				list = dao.pagination((long) recordPerPage, (long) Long.parseLong(pid) * recordPerPage);
			}
		} else
			list = new ArrayList<ThongTinKhenThuongSinhVien>();
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
						<th>Sinh Viên</th>
						<th>Mã khen thưởng</th>
						<th>Nội dung khen thưởng</th>
						<th>Thời gian khen thưởng</th>
						<th>Xử lý</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (ThongTinKhenThuongSinhVien obj : list) {
							//Bat buoc co de bo vao doan code xem chi tiet, chinh sua va xoa
							String maDoiTuong = obj.getMaThongTinKhenThuongSinhVien();
							String tenDoiTuong = "";
							if (obj.getSoCoVanHocTap() != null && obj.getSoCoVanHocTap().getTenSoCoVanHocTap() != null) {
								tenDoiTuong = obj.getSoCoVanHocTap().getTenSoCoVanHocTap();
							}
					%>
					<tr class="odd gradeX">
						<td><%=obj.getSoCoVanHocTap() != null && obj.getSoCoVanHocTap().getTenSoCoVanHocTap() != null ? obj.getSoCoVanHocTap().getTenSoCoVanHocTap() : ""%></td>
						<td><%=obj.getSinhVien().getHoDem()+" "+ obj.getSinhVien().getTen()%></td>
						<td><%=obj.getMaThongTinKhenThuongSinhVien()%></td>
						<td><%=obj.getNoiDungKhenThuong()%></td>
						<td><%=Util_Date.dateToString2(obj.getThoiGianKhenThuong())%></td>
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
<%} %>

