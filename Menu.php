<?php
    include 'header.php';
?>

<link rel="stylesheet" href="style.css">

<div class="Search-Bar">
    <form action="search.php" method="POST">
        <input type="text" name="search" placeholder="Search">
        <button type="submit" name="submit-search">Search</button>
    </form>
</div>

<h1> Our Menu </h1>
<h2> All Products </h2>

<div class="Products-container">
    <?php
        $sql = "SELECT * FROM products";
        $result = mysqli_query($conn, $sql);
        $query_results = mysqli_num_rows($result);

        if ($query_results > 0) {
            while($row = mysqli_fetch_array($result)){
                echo "<a href ='product.php?title=".$row['Product_Name']."&price=".$row['Price']."'><div class='products-box'>
                    <h3>".$row['Product_Name']."</h3>
                    <p>".$row['Price']."<p>
                </div>";
            }
        }
    ?>
</div>


<?php
    include 'footer.php';
?>