import java.util.ArrayList;

public class Tester {

    public static void cleanUpAL(ArrayList<Integer> al) {
        int size = al.size();
        if (size < 2) return;
       
        Integer prevUnique = al.get(0);
        Integer curVal;
        
        int i = 1;
        while (i < al.size()) {
          curVal = al.get(i);
          if (!curVal.equals(prevUnique)) {
            prevUnique = curVal; 
            i ++;
          }
          else al.remove(i);
        } // end while loop
     }


    public static void main(String[] args) {
        
        ArrayList<Integer> al = new ArrayList<Integer>();

        for (int i = 0; i < 5; i++) {
            al.add(4);
        }

        for (int i = 0; i < 3; i++) {
            al.add(5);
        }

        for (int i = 6; i < 12; i++) {
            al.add(i);
        }

        System.out.println(al);
        System.out.println(al.size());

        cleanUpAL(al);

        System.out.println(al);
        System.out.println(al.size());
    }

}