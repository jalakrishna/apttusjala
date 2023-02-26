public class BaseTrigger {

    String name ;
    public BaseTrigger(String name) {
        this.name = name;
    }


    public void m1(){
        System.debug(name);
    }
}