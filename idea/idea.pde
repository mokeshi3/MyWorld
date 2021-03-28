// manager of drawable objects.
class Canvas {
  ArrayList<Drawable> things = new ArrayList<Drawable>(); // list of drawable objects
  ArrayList<Playable> animations = new ArrayList<Playable>(); // list of playable objects
  
  // add s to list
  void add(Drawable s) {
    this.things.add(s);
  }
  
  // draw things that list contains
  void draw() {
    for(Drawable s : this.things){
      s.draw();
    }
  }
  
  // reset canvas
  void clean() {
    for(int i = this.things.size()-1;i >= 0;i--) {
      this.things.remove(i);
    }
  }
}
