class FadeText
{
  float fade = 255;
  float x = mouseX;
  float y = mouseY;
  
  void fade(float amount)
  {
    textSize(30);
    fill(100,fade);
    text("+" + amount, x, y);
    y -= 3;
    fade -= 3 * fadeText.size();
  }
  
  boolean isFaded()
  {
    if (fade <= 0)
    {
      fade = 255;
      return true; 
    }
      else
      {
        return false; 
      }
  }
}
