/**
 * Draws random squares and saves then to a PNG file.
 * @author: Alexandre Quessy
 * @date: 2015-01-14
 * @license: public domain
 * Language: Processing Java
 */
int square_size = 10;

size(1000, 200);
noStroke();

int num_x = width / square_size;
int num_y = height / square_size;
for (int x = 0; x < num_x; x++)
{
  for (int y = 0; y < num_y; y++)
  {
    int pos_x = x * square_size;
    int pos_y = y * square_size;
    fill(
      random(30) + 225, // red
      random(30) + 225, // green
      random(30) + 225, // blue
      255); 
    rect(pos_x, pos_y, square_size, square_size);
  }
}

save("random_squares.png");
