<?php include 'header.php';
 ?>
    <div id="main-content">
        <div class="container">
            <div class="row">
               
                <div class="col-md-8">
                    <!-- post-container -->
                    <?php
                   include 'config.php';
                   


                   
                   
                   $limit=3;
                   if(isset($_GET['page'])){
                         $page=$_GET['page'];
                   }else{
                          $page=1;
                   }
                   
                   $offset=($page-1)*$limit;
                   $sql="SELECT * FROM post 
                    LEFT JOIN category ON post.category=category.category_id 
                    LEFT JOIN user ON post.author=user.user_id
                    
                    ORDER BY post.post_id DESC LIMIT {$offset},{$limit}";  
                   $result=mysqli_query($conn,$sql) or die("failed QUery for selction");
                     if(mysqli_num_rows($result)>0){
                        while($row=mysqli_fetch_assoc($result)){
                            
                    
                    
                    ?>
                    

                    <div class="post-container">
                        <div class="post-content">
                            <div class="row">
                                <div class="col-md-4">
                                    <a class="post-img" href="single.php?id=<?php echo $row['post_id'];?>"><img src="admin/upload/<?php echo $row['post_img'];?>" alt=""/></a>
                                </div>
                                <div class="col-md-8">
                                    <div class="inner-content clearfix">
                                        <h3><a href='single.php?id=<?php echo $row['post_id'];?>'><?php echo $row['title'];?></a></h3>
                                        <div class="post-information">
                                            <span>
                                                <i class="fa fa-tags" aria-hidden="true"></i>
                                                <a href='category.php'><?php echo $row['category_name'];?></a>
                                            </span>
                                            <span>
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                                <a href='author.php'><?php echo $row['username'];?></a>
                                            </span>
                                            <span>
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                                <?php echo $row['post_date'];?>
                                            </span>
                                        </div>
                                        <p class="description">
                                        <?php echo substr($row['description'],0,130)."...";?>
                                        </p>
                                        <a class='read-more pull-right' href='single.php?id=<?php echo $row['post_id'];?>'>read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    

                    
                    
                       
                        <!--<ul class='pagination'>
                            <li class="active"><a href="">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">3</a></li>
                        </ul>
                    </div>--><!-- /post-container -->
                    <?php
                        }
                        
                         $sql2="SELECT * FROM post";
                         $result1=mysqli_query($conn,$sql2) or dir("failed");
                         if(mysqli_num_rows($result1)>0){
                           $total_rescords= mysqli_num_rows($result1);
                          
                           $total_page=ceil($total_rescords / $limit);
                           echo "<ul class='pagination admin-pagination'>";
                           for($i=1;$i<=$total_page;$i++){
                               if($i==$page){
                                   $active="active";
       
                               }else{
                                   $active="";
                               }
                               echo '<li class='.$active.'> <a href="category.php?cid='.$cat_id.'&page='.$i.'">'.$i.'</a></li>';
                           }
                           echo "</ul>";
                         }
                        
                    }else{
                       echo"no posts";
                     }
                    ?>
                </div>
                
                <?php include 'sidebar.php'; ?>
            </div>
        </div>
    </div>
<?php include 'footer.php'; ?>
