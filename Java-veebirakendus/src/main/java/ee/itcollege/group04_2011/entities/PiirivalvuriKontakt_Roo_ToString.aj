// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.entities;

import java.lang.String;

privileged aspect PiirivalvuriKontakt_Roo_ToString {
    
    public String PiirivalvuriKontakt.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Alates: ").append(getAlates()).append(", ");
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Kontakt: ").append(getKontakt()).append(", ");
        sb.append("KontaktiLiik: ").append(getKontaktiLiik()).append(", ");
        sb.append("Kuni: ").append(getKuni()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("PeamineKontakt: ").append(getPeamineKontakt()).append(", ");
        sb.append("Piirivalvur: ").append(getPiirivalvur()).append(", ");
        sb.append("PiirivalvuriKontaktId: ").append(getPiirivalvuriKontaktId()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
