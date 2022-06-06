public interface PZObjectInterface {

    // all characters have to have the same instance variables like health, damage, some sort of x and y location, etc... 
	// - all characters and objects (like plant bullets) have to have "boolean collide(int x, int y)" to calculate if those two 

    /**
     * Method for detecting whether two objetcs are colliding
     * @param coordX - the X coordinate of other object
     * @param coordY - the y coordinate of other object
     * @param radius - how wide the other object is (because other object could be large)
     * 
     * @return TRUE if the two objects are within 'radius' px, FALSE otherwise
     */
    boolean areColliding(int coordX, int coordY, int radius);



}
