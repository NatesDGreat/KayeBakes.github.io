<?php
    include 'header.php';
?>

<link rel="stylesheet" href="style.css">

<div class="Products-container">
    <?php
        $title = mysqli_real_escape_string($conn, $_GET['title']);
        $price = mysqli_real_escape_string($conn, $_GET['price']);

        $sql = "SELECT * FROM products WHERE Product_Name='$title' AND Price='$price'";
        $result = mysqli_query($conn, $sql);
        $query_results = mysqli_num_rows($result);

        if ($query_results > 0) {
            while($row = mysqli_fetch_array($result)){
                echo "<div class='products-box'>
                    
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