package portFolioBasicData;

import java.sql.Date;

public class HistoryBean {
    private int id1;
    private Date id2;
    private Date id3;
    private String id4;
    private String id5;
    
    public HistoryBean(){

    }

    public HistoryBean(int id1, Date id2, Date id3, String id4, String id5){
    	this.id1 = id1;
    	this.id2 = id2;
    	this.id3 = id3;
    	this.id4 = id4;
    	this.id5 = id5;
    }

    public int getId1() {
        return id1;
    }

    public void setId1(int id1) {
        this.id1 = id1;
    }

    public Date getId2() {
        return id2;
    }

    public void setId2(Date id2) {
        this.id2 = id2;
    }

    public Date getId3() {
        return id3;
    }

    public void setId3(Date id3) {
        this.id3 = id3;
    }

    public String getId4() {
        return id4;
    }

    public void setId4(String id4) {
        this.id4 = id4;
    }

    public String getId5() {
        return id5;
    }

    public void setId5(String id5) {
        this.id5 = id5;
    }
}