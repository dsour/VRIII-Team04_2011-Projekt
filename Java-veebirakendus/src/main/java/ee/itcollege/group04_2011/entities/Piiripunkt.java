package ee.itcollege.group04_2011.entities;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;


/**
 * The persistent class for the PIIRIPUNKT database table.
 * 
 */
@Entity
@RooToString
@RooEntity
public class Piiripunkt implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="PIIRIPUNKT_ID")
	private Long piiripunktId;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date alates;

	private String avaja;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date avatud;

	@Column(name="GPS_LATITUDE")
	private BigDecimal gpsLatitude;

	@Column(name="GPS_LONGITUIDE")
	private BigDecimal gpsLongituide;

	private String kommentaar;

	private String kood;

	@Column(name="KORGUS_MEREPINNAST")
	private BigDecimal korgusMerepinnast;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date kuni;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date muudetud;

	private String muutja;

	private String nimetus;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date suletud;

	private String sulgeja;

	//bi-directional many-to-one association to AmetPiiripunkti
	@OneToMany(mappedBy="piiripunkt")
	private Set<AmetPiiripunkti> ametPiiripunktis;

	//bi-directional many-to-one association to PiiriloiguHaldaja
	@OneToMany(mappedBy="piiripunkt")
	private Set<PiiriloiguHaldaja> piiriloiguHaldajas;

	//bi-directional many-to-one association to PiiripunktiAlluvus
	@OneToMany(mappedBy="piiripunkt")
	private Set<PiiripunktiAlluvus> piiripunktiAlluvuses;

	//bi-directional many-to-one association to PiiripunktiOrgYksus
	@OneToMany(mappedBy="piiripunkt")
	private Set<PiiripunktiOrgYksus> piiripunktiOrgYksuses;

	//bi-directional many-to-one association to Vahtkond
	@OneToMany(mappedBy="piiripunkt")
	private Set<Vahtkond> vahtkonds;

    public Piiripunkt() {
    }

	public Long getPiiripunktId() {
		return this.piiripunktId;
	}

	public void setPiiripunktId(Long piiripunktId) {
		this.piiripunktId = piiripunktId;
	}

	public Date getAlates() {
		return this.alates;
	}

	public void setAlates(Date alates) {
		this.alates = alates;
	}

	public String getAvaja() {
		return this.avaja;
	}

	public void setAvaja(String avaja) {
		this.avaja = avaja;
	}

	public Date getAvatud() {
		return this.avatud;
	}

	public void setAvatud(Date avatud) {
		this.avatud = avatud;
	}

	public BigDecimal getGpsLatitude() {
		return this.gpsLatitude;
	}

	public void setGpsLatitude(BigDecimal gpsLatitude) {
		this.gpsLatitude = gpsLatitude;
	}

	public BigDecimal getGpsLongituide() {
		return this.gpsLongituide;
	}

	public void setGpsLongituide(BigDecimal gpsLongituide) {
		this.gpsLongituide = gpsLongituide;
	}

	public String getKommentaar() {
		return this.kommentaar;
	}

	public void setKommentaar(String kommentaar) {
		this.kommentaar = kommentaar;
	}

	public String getKood() {
		return this.kood;
	}

	public void setKood(String kood) {
		this.kood = kood;
	}

	public BigDecimal getKorgusMerepinnast() {
		return this.korgusMerepinnast;
	}

	public void setKorgusMerepinnast(BigDecimal korgusMerepinnast) {
		this.korgusMerepinnast = korgusMerepinnast;
	}

	public Date getKuni() {
		return this.kuni;
	}

	public void setKuni(Date kuni) {
		this.kuni = kuni;
	}

	public Date getMuudetud() {
		return this.muudetud;
	}

	public void setMuudetud(Date muudetud) {
		this.muudetud = muudetud;
	}

	public String getMuutja() {
		return this.muutja;
	}

	public void setMuutja(String muutja) {
		this.muutja = muutja;
	}

	public String getNimetus() {
		return this.nimetus;
	}

	public void setNimetus(String nimetus) {
		this.nimetus = nimetus;
	}

	public Date getSuletud() {
		return this.suletud;
	}

	public void setSuletud(Date suletud) {
		this.suletud = suletud;
	}

	public String getSulgeja() {
		return this.sulgeja;
	}

	public void setSulgeja(String sulgeja) {
		this.sulgeja = sulgeja;
	}

	public Set<AmetPiiripunkti> getAmetPiiripunktis() {
		return this.ametPiiripunktis;
	}

	public void setAmetPiiripunktis(Set<AmetPiiripunkti> ametPiiripunktis) {
		this.ametPiiripunktis = ametPiiripunktis;
	}
	
	public Set<PiiriloiguHaldaja> getPiiriloiguHaldajas() {
		return this.piiriloiguHaldajas;
	}

	public void setPiiriloiguHaldajas(Set<PiiriloiguHaldaja> piiriloiguHaldajas) {
		this.piiriloiguHaldajas = piiriloiguHaldajas;
	}
	
	public Set<PiiripunktiAlluvus> getPiiripunktiAlluvuses() {
		return this.piiripunktiAlluvuses;
	}

	public void setPiiripunktiAlluvuses(Set<PiiripunktiAlluvus> piiripunktiAlluvuses) {
		this.piiripunktiAlluvuses = piiripunktiAlluvuses;
	}
	
	public Set<PiiripunktiOrgYksus> getPiiripunktiOrgYksuses() {
		return this.piiripunktiOrgYksuses;
	}

	public void setPiiripunktiOrgYksuses(Set<PiiripunktiOrgYksus> piiripunktiOrgYksuses) {
		this.piiripunktiOrgYksuses = piiripunktiOrgYksuses;
	}
	
	public Set<Vahtkond> getVahtkonds() {
		return this.vahtkonds;
	}

	public void setVahtkonds(Set<Vahtkond> vahtkonds) {
		this.vahtkonds = vahtkonds;
	}
	
}