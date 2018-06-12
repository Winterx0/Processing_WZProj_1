import processing.video.*;
Movie video;

String PATH = "/Users/Josh/Desktop/Melissa.Video.Project";

void setup() {
  size(360, 640);
  frameRate(30);
 video = new Movie(this, PATH);
 video.play();
 video.speed(-2);
 video.volume(5);
}

void draw() {
  tint(255, 20);
  image(video, mouseX, mouseY);
  if (video.available()) {
    video.read();
}
 image(video, 0, 0);
  }

// Called every time a new frame is available to read
void movieEvent(Movie video) {
  video.read();
}
