class ColorChangingRect extends Rect {
  int _cnt = 0;
  int max = 100;

  ColorChangingRect(int x, int y, int w, int h, int start, int max) {
    super(x, y, w, h);
    this._cnt = start;
    this.max = max;
  }

  @Override
  void draw() {
    colorMode(HSB, 1);
    float h = map(this._cnt, 0, this.max, 0, 1);
    this._cnt ++;
    if (this._cnt >= this.max) {
      this._cnt = 0;
    }
    color c = color(h, 1, 1);
    this.c = c;
    super.draw();
  }
}

// Drawable Object Rect
class Rect extends BasicShape implements Drawable {
  ArrayList<Drawable> anime; // for playing animation
  
  Rect(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  @Override
  void play() {
    if (this.anime.size() == 0) {
      this.draw();
    } else {
      super.play();
    }
  }
  
  // draw rect object
  void draw() {
    fill(this.c);
    rect(this.x, this.y, this.w, this.h);
  }
}
