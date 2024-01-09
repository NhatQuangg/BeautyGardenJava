package bean;

public class khachhangbean {
	private long makhachhang;
	private String hotenkh;
	private String diachikh;
	private String sodienthoaikh;
	private String emailkh;
	private String tendangnhapkh;
	private String matkhaukh;
	public khachhangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public khachhangbean(long makhachhang, String hotenkh, String diachikh, String sodienthoaikh, String emailkh,
			String tendangnhapkh, String matkhaukh) {
		super();
		this.makhachhang = makhachhang;
		this.hotenkh = hotenkh;
		this.diachikh = diachikh;
		this.sodienthoaikh = sodienthoaikh;
		this.emailkh = emailkh;
		this.tendangnhapkh = tendangnhapkh;
		this.matkhaukh = matkhaukh;
	}
	public long getMakhachhang() {
		return makhachhang;
	}
	public void setMakhachhang(long makhachhang) {
		this.makhachhang = makhachhang;
	}
	public String getHotenkh() {
		return hotenkh;
	}
	public void setHotenkh(String hotenkh) {
		this.hotenkh = hotenkh;
	}
	public String getDiachikh() {
		return diachikh;
	}
	public void setDiachikh(String diachikh) {
		this.diachikh = diachikh;
	}
	public String getSodienthoaikh() {
		return sodienthoaikh;
	}
	public void setSodienthoaikh(String sodienthoaikh) {
		this.sodienthoaikh = sodienthoaikh;
	}
	public String getEmailkh() {
		return emailkh;
	}
	public void setEmailkh(String emailkh) {
		this.emailkh = emailkh;
	}
	public String getTendangnhapkh() {
		return tendangnhapkh;
	}
	public void setTendangnhapkh(String tendangnhapkh) {
		this.tendangnhapkh = tendangnhapkh;
	}
	public String getMatkhaukh() {
		return matkhaukh;
	}
	public void setMatkhaukh(String matkhaukh) {
		this.matkhaukh = matkhaukh;
	}
	
}
