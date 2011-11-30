package ee.itcollege.group04_2011.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;


/**
 * The persistent class for the VAHTKOND_INTSIDENDIS database table.
 * 
 */
@Entity
@RooToString
@RooEntity
@Table(name="VAHTKOND_INTSIDENDIS")
public class VahtkondIntsidendi implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="VAHTKOND_INTSIDENDIS_ID")
	private Long vahtkondIntsidendisId;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date alates;

	private String avaja;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date avatud;

	private String kirjeldus;

	private String kommentaar;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date kuni;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date muudetud;

	private String muutja;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date suletud;

	private String sulgeja;

	//bi-directional many-to-one association to PiirivalvurIntsidendi
	@OneToMany(mappedBy="vahtkondIntsidendi")
	private Set<PiirivalvurIntsidendi> piirivalvurIntsidendis;

	//bi-directional many-to-one association to Intsident
    @ManyToOne
	@JoinColumn(name="INTSIDENT_ID")
	private Intsident intsident;

	//bi-directional many-to-one association to Vahtkond
    @ManyToOne
	@JoinColumn(name="VAHTKOND_ID")
	private Vahtkond vahtkond;

    public VahtkondIntsidendi() {
    }

	public Long getVahtkondIntsidendisId() {
		return this.vahtkondIntsidendisId;
	}

	public void setVahtkondIntsidendisId(Long vahtkondIntsidendisId) {
		this.vahtkondIntsidendisId = vahtkondIntsidendisId;
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

	public String getKirjeldus() {
		return this.kirjeldus;
	}

	public void setKirjeldus(String kirjeldus) {
		this.kirjeldus = kirjeldus;
	}

	public String getKommentaar() {
		return this.kommentaar;
	}

	public void setKommentaar(String kommentaar) {
		this.kommentaar = kommentaar;
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

	public Set<PiirivalvurIntsidendi> getPiirivalvurIntsidendis() {
		return this.piirivalvurIntsidendis;
	}

	public void setPiirivalvurIntsidendis(Set<PiirivalvurIntsidendi> piirivalvurIntsidendis) {
		this.piirivalvurIntsidendis = piirivalvurIntsidendis;
	}
	
	public Intsident getIntsident() {
		return this.intsident;
	}

	public void setIntsident(Intsident intsident) {
		this.intsident = intsident;
	}
	
	public Vahtkond getVahtkond() {
		return this.vahtkond;
	}

	public void setVahtkond(Vahtkond vahtkond) {
		this.vahtkond = vahtkond;
	}
	
}