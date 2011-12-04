package ee.itcollege.group04_2011.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ee.itcollege.group04_2011.entities.IntsidendiLiik;
import ee.itcollege.group04_2011.entities.Intsident;
import ee.itcollege.group04_2011.entities.IsikIntsidendi;
import ee.itcollege.group04_2011.entities.Objekt;
import ee.itcollege.group04_2011.entities.ObjektiLiik;
import ee.itcollege.group04_2011.entities.Piiriloik;
import ee.itcollege.group04_2011.entities.Piiririkkuja;
import ee.itcollege.group04_2011.entities.Piirivalvur;
import ee.itcollege.group04_2011.entities.PiirivalvurIntsidendi;
import ee.itcollege.group04_2011.entities.Vahtkond;
import ee.itcollege.group04_2011.entities.VahtkondIntsidendi;

/**
 * Servlet implementation class InsertTestData
 */
public class InsertTestData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertTestData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		boolean ok = false;
		
		try {
		    Class.forName("org.hsqldb.jdbcDriver");
		    Connection conn = DriverManager.getConnection("jdbc:hsqldb:file:${user.home}/i377/Team04/db","sa","");

		    out.println("Using database: " +
		        conn.getMetaData().getDatabaseProductName() + " " +
		        conn.getMetaData().getDatabaseProductVersion() + " at " +
		        conn.getMetaData().getURL());
		    
		    Piiriloik piiriloik = new Piiriloik();
		    piiriloik.setNimetus("Narva");
		    piiriloik.persist();
		    
		    IntsidendiLiik ilI = new IntsidendiLiik();
		    ilI.setNimetus("Relvad");
		    ilI.persist();
		    
		    Intsident intsident = new Intsident();
		    intsident.setKood("P100");
		    intsident.setPiiriloik(piiriloik);
		    intsident.setNimetus("Karu lasi jalga");
		    intsident.setIntsidendiLiik(ilI);
		    intsident.persist();
		    
		    Piiririkkuja karu = new Piiririkkuja();
		    karu.setEesnimi("Karu");
		    karu.persist();
		    
		    Piiririkkuja poder = new Piiririkkuja();
		    poder.setEesnimi("Põder");
		    poder.persist();
		    
		    IsikIntsidendi i = new IsikIntsidendi();
		    i.setIntsident(intsident);
		    i.setPiiririkkuja(karu);
		    i.persist();
		    
		    IsikIntsidendi ii = new IsikIntsidendi();
		    ii.setIntsident(intsident);
		    ii.setPiiririkkuja(poder);
		    ii.persist();
		    
		    Vahtkond vahtkond = new Vahtkond();
		    vahtkond.setKood("V1");
		    vahtkond.setAvaja("ylem");
		    vahtkond.setNimetus("Öine");
		    vahtkond.persist();
		    
		    Vahtkond vahtkond2 = new Vahtkond();
		    vahtkond2.setKood("V2");
		    vahtkond2.setAvaja("ylem");
		    vahtkond2.setNimetus("Priitahtlik");
		    vahtkond2.persist();
		    
		    VahtkondIntsidendi viI = new VahtkondIntsidendi();
		    viI.setIntsident(intsident);
		    viI.setVahtkond(vahtkond);
		    viI.persist();
		    
		    VahtkondIntsidendi viII = new VahtkondIntsidendi();
		    viII.setIntsident(intsident);
		    viII.setVahtkond(vahtkond);
		    viII.persist();
		    
		    ObjektiLiik ol = new ObjektiLiik();
		    ol.setNimetus("Objekt");
		    ol.persist();
		    
		    Objekt oI = new Objekt();
		    oI.setObjektiLiik(ol);
		    oI.setNimetus("Kahtlane kott");
		    oI.persist();
		    
		    Objekt oII = new Objekt();
		    oII.setObjektiLiik(ol);
		    oII.setNimetus("Sõnnikuhark");
		    oII.persist();
		    
		    Piirivalvur pI = new Piirivalvur();
		    pI.setEesnimed("Raivo");
		    pI.setPerekonnanimi("Relvavend");
		    pI.persist();
		    
		    PiirivalvurIntsidendi piI = new PiirivalvurIntsidendi();
		    piI.setPiirivalvur(pI);
		    piI.setIntsident(intsident);
		    piI.persist();
		    
		    ok = true;
		    /*
		    Statement s = conn.createStatement();
		    s.execute("CREATE TABLE ....");
		    ...
		    */
		} catch (Exception e) {
		    out.println("Error: " + e.getMessage());
		}
		out.println(ok);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
