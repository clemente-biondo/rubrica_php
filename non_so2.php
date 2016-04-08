<?php
    // include database and object file
    include_once 'database.php';
    include_once 'product.php';
    // get database connection
    $database = new Database();
    $db = $database->getConnection();
    $product = new Product($db);
 
    // set product id to be deleted
    $product->id = $_GET['id'];
    // delete the product
    if($product->delete()){
        $msg = "Object was deleted.";
    }
    else{
        $msg = "Unable to delete object.";
    }
?>
<script>	
	alert("<?php echo $msg ?>");
	window.location = "index.php";
</script>