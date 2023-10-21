<div id="sidebar" class="col-md-4">
<?php 
include 'config.php';
$sql="SELECT * FROM post 
LEFT JOIN category ON post.category=category.category_id 
LEFT JOIN user ON post.author=user.user_id";  
$result=mysqli_query($conn,$sql) or die("failed QUery for selction");
 if(mysqli_num_rows($result)>0){
    
?>
    <!-- recent posts box -->
    <div class="recent-post-container">
        <h4>Recent Posts</h4>
        <div class="recent-post">
            <?php while($row=mysqli_fetch_assoc($result)){ ?>
            <a class="post-img" href="">
                <img src="admin/upload/<?php echo $row['post_img'];?>" alt=""/>
            </a>
            <div class="post-content">
                <h5><a href="single.php?id=<?php echo $row['post_id'];?>">
                <span>
                    <i class="fa fa-tags" aria-hidden="true"></i>
                    <?php echo substr($row['description'],0,130)."...";?>
                </span>
                <span>
                    <i class="fa fa-calendar" aria-hidden="true"></i>
                    <?php echo $row['post_date'];?>
                </span>
                <a class="read-more" href="single.php?id=<?php echo $row['post_id'];?>">read more</a>
            </div>
            <?php }?>
        </div>
        
                        </div>
                     
        
    </div>
    
    <?php }?>
    <!-- /recent posts box -->
</div>
