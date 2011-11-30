package ee.itcollege.group04_2011.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.Set;


/**
 * The persistent class for the RIIGI_ADMIN_YKSUSE_LIIK database table.
 * 
 */
@Entity
@Table(name="RIIGI_ADMIN_YKSUSE_LIIK")
public class RiigiAdminYksuseLiik implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="RIIGI_ADMIN_YKSUSE_LIK_ID")
	private Long riigiAdminYksuseLikId;

    @Temporal( TemporalType.DATE)
	private Date alates;

	private String avaja;

    @Temporal( TemporalType.DATE)
	private Date avatud;

	private String kommentaar;

	private String kood;

    @Temporal( TemporalType.DATE)
	private Date kuni;

    @Temporal( TemporalType.DATE)
	private Date muudetud;

	private String muutja;

	private String nimetus;

    @Temporal( TemporalType.DATE)
	private Date suletud;

	private String sulgeja;

	//bi-directional many-to-one association to RiigiAdminYksus
	@OneToMany(mappedBy="riigiAdminYksuseLiik")
	private Set<RiigiAdminYksus> riigiAdminYksuses;

	//bi-directional many-to-one association to VoimalikAlluvus
	@OneToMany(mappedBy="riigiAdminYksuseLiik1")
	private Set<VoimalikAlluvus> voimalikAlluvuses1;

	//bi-directional many-to-one association to VoimalikAlluvus
	@OneToMany(mappedBy="riigiAdminYksuseLiik2")
	private Set<VoimalikAlluvus> voimalikAlluvuses2;

    public RiigiAdminYksuseLiik() {
    }

	public Long getRiigiAdminYksuseLikId() {
		return this.riigiAdminYksuseLikId;
	}

	public void setRiigiAdminYksuseLikId(Long riigiAdminYksuseLikId) {
		this.riigiAdminYksuseLikId = riigiAdminYksuseLikId;
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

	public Set<RiigiAdminYksus> getRiigiAdminYksuses() {
		return this.riigiAdminYksuses;
	}

	public void setRiigiAdminYksuses(Set<RiigiAdminYksus> riigiAdminYksuses) {
		this.riigiAdminYksuses = riigiAdminYksuses;
	}
	
	public Set<VoimalikAlluvus> getVoimalikAlluvuses1() {
		return this.voimalikAlluvuses1;
	}

	public void setVoimalikAlluvuses1(Set<VoimalikAlluvus> voimalikAlluvuses1) {
		this.voimalikAlluvuses1 = voimalikAlluvuses1;
	}
	
	public Set<VoimalikAlluvus> getVoimalikAlluvuses2() {
		return this.voimalikAlluvuses2;
	}

	public void setVoimalikAlluvuses2(Set<VoimalikAlluvus> voimalikAlluvuses2) {
		this.voimalikAlluvuses2 = voimalikAlluvuses2;
	}
	
}