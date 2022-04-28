<?php
include 'header.php';
?>

<h1>Seach Page</h1>
<div class="Search-Bar">
    <form action="search.php" method="POST">
        <input type="text" name="search" placeholder="Search">
        <button type="submit" name="submit-search">Search</button>
    </form>
</div>
<div class="Products-container">
    <?php
        if(isset($_POST['submit-search'])) {
            $search = mysqli_real_escape_string($conn, $_POST['search']);
            $sql = "SELECT * FROM Products Where Product_Name LIKE '%$search%' OR Product_Desc LIKE '%$search%' ";
            $result = mysqli_query($conn, $sql);
            $query_results = mysqli_num_rows($result);

            if ($query_results > 0) {
                while ($row = mysqli_fetch_array($result)) {
                    echo "<a href ='product.php?title=".$row['Product_Name']."&price=".$row['Price']."'><div class='products-box'>
                    <h3>".$row['Product_Name']."</h3>
                    <p>".$row['Price']."<p>
                </div></a>";
                }
            } 

            else { 
                echo "There are no results matching your search, please try again";
            }
        }
    ?>
</div>

<?php
include 'footer.php';
?>