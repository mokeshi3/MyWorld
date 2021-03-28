// for drawing
interface Drawable {
  void draw();
}

// for playing animation
interface Playable {
  void add_animation(Drawable d);
  void set_animation(ArrayList<Drawable> dl);
  void play();
}

abstract class Animation implements Playable {
  ArrayList<Drawable> anime;
  int _cnt = 0;

  void add_animation(Drawable d) {
    this.anime.add(d);
  }

  void set_animation(ArrayList<Drawable> dl) {
    this.anime = dl;
  }

  void play() {
    if(this._cnt < this.anime.size()) {
      this.anime.get(this._cnt).draw();
      this._cnt++;
    } else {
      this._cnt = 0;
    }
  }
}

// for changing color
interface Color {
  void set_color(color c);
  void set_color(int r, int g, int b);
  void add_color(int dr, int dg, int db);
}

// for positioning
interface Position {
  void set_position(int x, int y);
  void add_position(int dx, int dy);
}

interface Size {
  void set_size(int w, int h);
  void add_size(int w, int h);
}

abstract class Coloring implements Color {
  color c;

  void set_color(color c) {
    this.c = c;
  }

  void set_color(int r, int g, int b) {
    this.c = color(r, g, b);
  }

  void add_color(int r, int g, int b) {
    this.set_color((int)red(this.c)+r, (int)green(this.c)+g, (int)blue(this.c)+b);
  }
}

abstract class Positioning implements Position {
  int x, y;

  void set_position(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void add_position(int dx, int dy) {
    this.x += dx;
    this.y += dy;
  }
}

abstract class Sizing implements Size {
  int w, h;
  
  void set_size(int w, int h) {
    this.w = w;
    this.h = h;
  }

  void add_size(int dw, int dh) {
    this.w += dw;
    this.h += dh;
  }
}

abstract class BasicShape implements Position, Color, Size, Playable {
  int x, y, w, h; // position x, position y, width, height
  color c = color(255, 255, 255); // color
  ArrayList<Drawable> anime;

  int _cnt = 0;

  void add_animation(Drawable d) {
    this.anime.add(d);
  }

  void set_animation(ArrayList<Drawable> dl) {
    this.anime = dl;
  }

  void play() {
    if(this._cnt < this.anime.size()) {
      this.anime.get(this._cnt).draw();
      this._cnt++;
    } else {
      this._cnt = 0;
    }
  }
  void set_color(color c) {
    this.c = c;
  }

  void set_color(int r, int g, int b) {
    this.c = color(r, g, b);
  }

  void add_color(int r, int g, int b) {
    this.set_color((int)red(this.c)+r, (int)green(this.c)+g, (int)blue(this.c)+b);
  }

  void set_position(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void add_position(int dx, int dy) {
    this.x += dx;
    this.y += dy;
  }
  
  void set_size(int w, int h) {
    this.w = w;
    this.h = h;
  }

  void add_size(int dw, int dh) {
    this.w += dw;
    this.h += dh;
  }
}
