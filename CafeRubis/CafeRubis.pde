/*C16466214 
Aron O'Neill
DT228
*/

void setup()
{
  size(600, 600);
  loadData();
  displayProducts();
  printProducts();
}

ArrayList<Product> products = new ArrayList<Product>();

ArrayList<Product> bill = new ArrayList<Product>();

void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  for(TableRow row:table.rows())
  {
    Product product = new Product(row); //Star is the data type, star is the name then Star(row)   
    products.add(product); // star info is added to the array list called stars
  }
}

void printProducts()
{
  int x = 70;
  int y = 85;
  
  fill(0);
  for (Product p : products)
  {
    text(p.name, x, y);
    text(nf(p.price), x + 160, y);
    y = y + 65;
  }
}

void displayProducts()
{
  int rectx1 = 60;
  int rectx2 = 200;
  int recty1 = 50;
  int recty2 = 58;
  
  for (Product p : products)
  {
    fill(255);
    rect(rectx1, recty1, rectx2, recty2);
    recty1 = recty1 + 65;
  }
}

void mousePressed()
{
 if (mousePressed < rectx2) 
 {
   
 }
}

void draw()
{
  int x1 = 350;
  int y1 = 50;
  String names = "Your Bill";
  String title = "Cafe Rubis Till System";
  
  textSize(16);
  text(title, 220, 10, 200, 450);
  
  fill(255);
  rect(x1, y1, 200, 450);
  fill(0);
  text(names, 420, 60, 200, 450);
  line(300, 50, 300, 500);
  
}

void mousePressed()
{
 if (mousePressed ) 
 {
   
 }
}