class Texture
{

  /* Constructor definition */
  public Texture()
  {
  };

  /* Function definition */
  public void render()
  {
    var utility = new Utility();

    loadPixels();
    for (var x = 0; x < width; x++)
    {
      for (var y = 0; y < height; y++)
      {
        var pxIndex = x + y * width;

        var vector = new PVector(x, y);
        var resolution = 30;
        var deviation = 0.6;
        var texture = utility.getTexture(vector, resolution, deviation);
        var hue = map(texture, 0, 1, 0, 255);

        pixels[pxIndex] = color(hue, hue, hue);
      }
    }
    updatePixels();
  }
}
