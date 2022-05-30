import java.util.ArrayList;

public class MinimumHeap<T extends Comparable<T>>
{
  //instance vars
  private ArrayList<T> _heap;

  /**
   * default constructor  ---  inits empty heap
   */
  public MinimumHeap()
  {
    _heap = new ArrayList<T>();
  }

  /**
   * toString()  ---  overrides inherited method
   * @return a level-order traversal of the tree (simple version)
   */
  public String toString()
  {
      // level-order traversal of the tree
      String retString = "";
      for (T i : _heap) retString += i;
      return retString;
  }


  /**
   * boolean isEmpty()
   * @return true if no meaningful elements in heap, false otherwise
   */
  public boolean isEmpty()
  {
      return _heap.isEmpty();
  }//O(1)


  /**
   * Integer peekMin()
   * @return min value in heap
   * @Postcondition Heap remains unchanged.
   */
  public T peekMin()
  {
      if (isEmpty()) return null;
      return _heap.get(0);
  }//O(1)


  /**
   * Inserts an element in the heap
   * @param value to be added
   * @Postcondition Tree exhibits heap property.
   * @ALGO add as leaf, then "float" it up
   */
  public void add( T addVal )
  {
    int posVal = _heap.size();
    int posParent = findParent(posVal);
    _heap.add(addVal);

    while (_heap.get(posParent).compareTo(_heap.get(posVal)) > 0) {
      swap(posVal, posParent);
      posVal = posParent;
      posParent = findParent(posVal);
    }
  }//O(logn)


  /**
   * Removes least element in heap.
   * @return least element in heap
   * @Postcondition Tree maintains heap property.
   */
  public T removeMin()
  {
    if (isEmpty()) return null;


    int posLast = _heap.size()-1;
    int curPos = 0;
    int minPos = -1;

    T smallest = _heap.get(curPos);

    // swap and remove
    swap(posLast, curPos);
    _heap.remove(posLast);

    if (_heap.size() == 1) return smallest;

    // re-sort and maintain invariant
    while (_heap.size() > (curPos * 2) + 2) {

      // System.out.println("heap: " + _heap);
      // System.out.println("curPos: " + curPos);
      // System.out.println("minPos: " + minPos);
      minPos = minChildPos(curPos);
      if (_heap.get(minPos).compareTo(_heap.get(curPos)) > 0) {
        break;
      }
      swap(curPos, minPos);
      curPos = minPos;
    }
    return smallest; 
  }//O(logn)


  /**
   * minChildPos(int)  ---  helper fxn for removeMin()
   * Returns index of least child, or
   * -1 if no children, or if input pos is not in ArrayList
   * Postcondition: Tree unchanged
   */
  private int minChildPos( int pos )
  {
      int indxChildLeft = (pos * 2) + 1;
      int indxChildRight = (pos * 2) + 2;

      if (minOf(_heap.get(indxChildLeft), _heap.get(indxChildRight)).compareTo(_heap.get(indxChildLeft)) == 0) {
        return indxChildLeft;
      }
      else {
          return indxChildRight;
      }
  }//O(1)


  //~~~~~~~~~~~~~ aux helper fxns ~~~~~~~~~~~~~~
  private T minOf( T a, T b )
  {
    if ( a.compareTo(b) < 0 )
      return a;
    else
      return b;
  }

  //swap for an ArrayList
  private void swap( int pos1, int pos2 )
  {
    _heap.set( pos1, _heap.set( pos2, _heap.get(pos1) ) );	
  }
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


  private int findParent(int childIndex) {
    return (childIndex-1) / 2;
  }



  //main method for testing
  public static void main( String[] args )
  {
    MinimumHeap<Integer> pile = new MinimumHeap<Integer>();
    
    pile.add(2);
    System.out.println(pile);
    pile.add(4);
    System.out.println(pile);
    pile.add(6);
    System.out.println(pile);
    pile.add(8);
    System.out.println(pile);
    pile.add(10);
    System.out.println(pile);
    pile.add(1);
    System.out.println(pile);
    pile.add(3);
    System.out.println(pile);
    pile.add(5);
    System.out.println(pile);
    pile.add(7);
    System.out.println(pile);
    pile.add(9);
    System.out.println(pile);
    
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    System.out.println("removing " + pile.removeMin() + "...");
    System.out.println(pile);
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
  }//end main()

}//end class ALHeap