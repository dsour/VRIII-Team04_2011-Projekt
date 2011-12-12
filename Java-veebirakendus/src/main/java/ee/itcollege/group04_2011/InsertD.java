package ee.itcollege.group04_2011;

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

public class InsertD {

	public InsertD(){
		Piiriloik pL = new Piiriloik();
		pL.setNimetus("Narva");
	    pL.persist();

	    IntsidendiLiik ilI = new IntsidendiLiik();
	    ilI.setNimetus("Relvad");
	    ilI.persist();
	    
	    Intsident intsident = new Intsident();
	    intsident.setKood("P100");
	    intsident.setPiiriloik(pL);
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
	}
	
	
}
