// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.entities;

import java.lang.String;

privileged aspect Ruumiyksus_Roo_ToString {
    
    public String Ruumiyksus.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Aadress: ").append(getAadress()).append(", ");
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Kood: ").append(getKood()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("Nimetus: ").append(getNimetus()).append(", ");
        sb.append("RiigiAdminYksus: ").append(getRiigiAdminYksus()).append(", ");
        sb.append("RuumiyksusId: ").append(getRuumiyksusId()).append(", ");
        sb.append("RuumiyksuseLiik: ").append(getRuumiyksuseLiik()).append(", ");
        sb.append("Ruumiyksuses: ").append(getRuumiyksuses() == null ? "null" : getRuumiyksuses().size()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("Voodikohts: ").append(getVoodikohts() == null ? "null" : getVoodikohts().size());
        return sb.toString();
    }
    
}
