class Utility
{

  /* Constructor definition */
  public Utility()
  {
  };

  /* Function definition */
  public float getTexture(PVector vector,
    int resolution, float deviation)
  {
    var a = min(vector.x, vector.y);
    var b = max(vector.x, vector.y);
    var value = a / b;

    var sum = 0f;
    for (var n = 1; n < resolution; n++)
    {
      var twoN = pow(2, n);
      var angle = (PI * twoN * value) / deviation;
      var term = sin(angle);

      sum += (1 / pow(3, n)) * term;
    }
    sum *= 2f / 3;

    return sum + 0.5;
  }
}
