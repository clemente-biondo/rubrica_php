<?php
class Category{
	private $conn;
	// object properties
	public $id;
	public $name;
	
	function __construct($db){
		$this->conn = $db;
	}
	
	function readName(){
		$query = "SELECT name FROM categories
                WHERE id =  " . $this->id ;
		$result = $this->conn->query($query);
        $row = $result->fetch_array();      
        $this->name = $row['name'];		
	}
	
	    function readAll(){
			$query = "SELECT id, name
					FROM categories
					ORDER BY name ASC";
	
			$result = $this->conn->query($query);
			return $result;
		}
}
?>