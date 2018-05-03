package eCore.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Type;

@Entity
public class ChucNang implements Comparable<ChucNang> {
	@Id
	public String maChucNang; // NOT Auto => System.getCrrent...
	public String tenHienThi;
	public String duongDan;
	public String hinhAnh;
	@Type(type = "text")
	public String moTa;
	@Type(type = "text")
	public String ghiChu;
	@ManyToOne(fetch = FetchType.LAZY)
	public ChucNang ChucNangCha;
	public Date thoiGianCapNhat;

	@ManyToMany(mappedBy = "chucNangs", fetch = FetchType.EAGER)
	private Set<NhomPhanQuyen> nhomPhanQuyens = new HashSet<>();

	public ChucNang() {
	}

	public ChucNang(String maChucNang, String tenHienThi, String duongDan, String hinhAnh, String moTa, String ghiChu,
			ChucNang ChucNangCha, Date thoiGianCapNhat) {
		this.maChucNang = maChucNang;
		this.tenHienThi = tenHienThi;
		this.duongDan = duongDan;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.ghiChu = ghiChu;
		this.ChucNangCha = ChucNangCha;
		this.thoiGianCapNhat = thoiGianCapNhat;
	}

	public String getMaChucNang() {
		return maChucNang;
	}

	public void setMaChucNang(String maChucNang) {
		this.maChucNang = maChucNang;
	}

	public String getTenHienThi() {
		return tenHienThi;
	}

	public void setTenHienThi(String tenHienThi) {
		this.tenHienThi = tenHienThi;
	}

	public String getDuongDan() {
		return duongDan;
	}

	public void setDuongDan(String duongDan) {
		this.duongDan = duongDan;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public ChucNang getChucNangCha() {
		return ChucNangCha;
	}

	public void setChucNangCha(ChucNang ChucNangCha) {
		this.ChucNangCha = ChucNangCha;
	}

	public Date getThoiGianCapNhat() {
		return thoiGianCapNhat;
	}

	public void setThoiGianCapNhat(Date thoiGianCapNhat) {
		this.thoiGianCapNhat = thoiGianCapNhat;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((duongDan == null) ? 0 : duongDan.hashCode());
		result = prime * result + ((ghiChu == null) ? 0 : ghiChu.hashCode());
		result = prime * result + ((hinhAnh == null) ? 0 : hinhAnh.hashCode());
		result = prime * result + ((maChucNang == null) ? 0 : maChucNang.hashCode());
		result = prime * result + ((ChucNangCha == null) ? 0 : ChucNangCha.hashCode());
		result = prime * result + ((moTa == null) ? 0 : moTa.hashCode());
		result = prime * result + ((tenHienThi == null) ? 0 : tenHienThi.hashCode());
		result = prime * result + ((thoiGianCapNhat == null) ? 0 : thoiGianCapNhat.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ChucNang other = (ChucNang) obj;
		if (duongDan == null) {
			if (other.duongDan != null)
				return false;
		} else if (!duongDan.equals(other.duongDan))
			return false;
		if (ghiChu == null) {
			if (other.ghiChu != null)
				return false;
		} else if (!ghiChu.equals(other.ghiChu))
			return false;
		if (hinhAnh == null) {
			if (other.hinhAnh != null)
				return false;
		} else if (!hinhAnh.equals(other.hinhAnh))
			return false;
		if (maChucNang == null) {
			if (other.maChucNang != null)
				return false;
		} else if (!maChucNang.equals(other.maChucNang))
			return false;
		if (ChucNangCha == null) {
			if (other.ChucNangCha != null)
				return false;
		} else if (!ChucNangCha.equals(other.ChucNangCha))
			return false;
		if (moTa == null) {
			if (other.moTa != null)
				return false;
		} else if (!moTa.equals(other.moTa))
			return false;
		if (tenHienThi == null) {
			if (other.tenHienThi != null)
				return false;
		} else if (!tenHienThi.equals(other.tenHienThi))
			return false;
		if (thoiGianCapNhat == null) {
			if (other.thoiGianCapNhat != null)
				return false;
		} else if (!thoiGianCapNhat.equals(other.thoiGianCapNhat))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ChucNang [maChucNang=" + maChucNang + ", tenHienThi=" + tenHienThi + ", duongDan=" + duongDan
				+ ", hinhAnh=" + hinhAnh + ", moTa=" + moTa + ", ghiChu=" + ghiChu + ", ChucNangCha=" + ChucNangCha
				+ ", thoiGianCapNhat=" + thoiGianCapNhat + "]";
	}

	@Override
	public int compareTo(ChucNang o) {
		return this.maChucNang.compareTo(o.maChucNang);
	}

}
