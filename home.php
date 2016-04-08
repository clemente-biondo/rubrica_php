<?php
$page_title = "Read Products";
include_once "header.php";
?>
<?php
include_once 'config/database.php';
include_once 'product.php';
include_once 'category.php';
// instantiate database and product object
$database = new Database();
$db = $database->getConnection();
//query product
$product = new Product($db);
$result = $product->readAll();
$num = $result->num_rows;
// display the products if there are any
if($num>0){
$cate = new Category($db);
echo"<h3 align='center'><a href='create_product.php'>  ADD  </a> </h3>";
echo "<table class='table table-hover table-responsive table-bordered'>";
echo "<tr><th>Product</th><th>Price</th><th>Description</th> <th>Category</th><th>Actions</th></tr>";
while($row = $result->fetch_array()) {
extract($row);
echo "<tr>";
echo "<td>{$name}</td><td>{$price}</td><td>{$description}</td>"; echo "<td>";
$cate->id = $category_id;
$cate->readName();
echo $cate->name; 
echo "</td>";
echo "<td>";
echo "<a href='update_product.php?id={$id}'>Edit</a> / ";
echo "<a href='delete_product.php?id={$id}' onclick='del({$id})'>del</a>";
echo "</td>";
echo "</tr>"; 
}
echo "</table>";
}
else{
echo "<div>No products found.</div>";
}

include_once "footer.php";
?>