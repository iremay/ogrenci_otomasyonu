package ogrenciotomasyonu;

public class ogrenci {
	protected int id;
	protected String ad;
    protected String soyad;
    protected String bolum;
  

    public ogrenci() {
    }
 
    public ogrenci (int id) {
        this.id = id;
    }
 

    public ogrenci(int id, String ad, String soyad, String bolum) {
		super();
		this.id = id;
		this.ad = ad;
		this.soyad = soyad;
		this.bolum = bolum;
	}

	public ogrenci(String ad, String soyad, String bolum) {
        this.ad = ad;
        this.soyad = soyad;
        this.bolum = bolum;
    }
 
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getAd() {
        return ad;
    }
 
    public void setAd(String ad) {
        this.ad= ad;
    }
 
    public String getSoyad() {
        return soyad;
    }
 
    public void setSoyad(String soyad) {
        this.soyad= soyad;
    }
 
    public String getBolum() {
        return bolum;
    }
 
    public void setBolum(String bolum) {
        this.bolum= bolum;
    }

}
