/*C16466214 
Aron O'Neill
DT228
*/

void setup()
{
  size(600, 600);
  loadData();
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

void draw()
{
  
}