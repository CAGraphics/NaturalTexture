Texture naturalTexture;

void setup()
{
  surface.setTitle("Natural Texture");

  surface.setResizable(false);
  surface.setLocation(displayWidth / 3, floor(0.1 * displayHeight));
  
  createNaturalTexture();
  size(720, 720);
}
      
void createNaturalTexture()
{
  naturalTexture = new Texture();
}

void draw()
{
  background(0);

  naturalTexture.render();
  //save("Texture.jpg");
  //noLoop();
}
