<div class="page-title">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 p-0">
                <img src="<?php echo base_url(); ?>assets/user/img/shop-banner.webp" alt="shop" class="img-fluid">

            </div>
        </div>
    </div>
    <div class="container position-relative mb-5">
        <div class="row">
            <div class="col-12 p-0">
                <div class="text-center">
                    <h1 class="main-title">Shop</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- page-title end -->
<?php  
   $sidebarcat = $this->common->getData('category',array('show'=>1,'parent'=>0),array(),array('field'=>'item_order','by'=>'asc'));
?>


<!-- produt start -->
<div class="shop">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-12">
                <div class="sidebox mb-5 pe-md-5">
                    <!-- <p><a href="<?php echo base_url(); ?>products">All</a></p> -->
                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                            <p class="accordion-header" id="headingOne0"><a href="<?php echo base_url('products'); ?>" class="main-category">  All </a></p>
                        </div>
                        <?php if(isset($sidebarcat) && $sidebarcat){ foreach($sidebarcat as $key => $value){ 
                            $subcat = $this->common->getData('category',array('parent'=>$value['c_id'],'show'=>1),array(),array('field'=>'item_order','by'=>'asc'));
                        ?>
                            <div class="accordion-item">
                                <p class="accordion-header" id="headingOne<?php echo $value['c_id']; ?>">
                                    <a href="<?php echo base_url('products/'.url_title($value['category']).'/pr?catid='.$value['c_id']); ?>" class="main-category">  <?php echo $value['category']; ?> </a>
                                    <?php if(isset($subcat) && $subcat){ ?>
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne<?php echo $value['c_id']; ?>" aria-expanded="true" aria-controls="collapseOne<?php echo $value['c_id']; ?>"></button>
                                    <?php } ?>
                                </p>
                                <?php if(isset($subcat) && $subcat){ ?>
                                    <div id="collapseOne<?php echo $value['c_id']; ?>" class="accordion-collapse collapse" aria-labelledby="headingOne<?php echo $value['c_id']; ?>" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <ul class="list-unstyled">
                                                <?php foreach($subcat as $key1 => $value1){ 
                                                    //$pc = $this->db->query('select count(pid) as total from products where product_category regexp "[[:<:]]'.$value1['c_id'].'[[:>:]]"')->result_array();
                                                ?>
                                                    <li><a href="<?php echo base_url('products/'.url_title($value1['category']).'/pr?catid='.$value1['c_id']); ?>"><?php echo $value1['category']; ?></a></li>
                                                <?php } ?>
                                            </ul>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                        <?php } } ?>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-8 col-12">
                <div class="row g-md-4">
                    <?php if (isset($products) && !empty($products)){
                        foreach ($products as $key => $value) {
                    ?>

                    <form class= "<?php echo "productd-bg addProductInCart1 product_".$value["productid"]; ?>" data-id="<?php echo $value["productid"]; ?>">


    
            <input id="productid" name="productid" value="<?php echo $value["productid"]; ?>" type="hidden">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-12">
                            <div class="product text-center shadow-none">
                                <div class="product-img">
                                    <?php if($value['product_image']!=''){ $pimg = base_url($value['product_image']); ?>
                                        <img src="<?php echo base_url($value['product_image']); ?>" alt="<?php echo substr($value['product_name'],0, 15); ?>" class="img-fluid">
                                    <?php }else{ ?>
                                        <img src="<?php echo base_url(); ?>assets/user/img/product-item.webp" alt="<?php echo substr($value['product_name'],0, 15); ?>" class="img-fluid">
                                    <?php } ?>
                                    <div class="view-btn">
                                        <a href="<?php echo base_url('product-detail/'.strtolower($value['product_slug']).'/'.$value['productid']); ?>"> <img src="<?php echo base_url(); ?>assets/user/img/view-show.png" class="img-fluid" width="18" alt="view"> </a>
                                    </div>
                                </div>
                                <div class="product-detail">
                                    <p class="product-title" style="min-height:54px;"><?php echo substr($value['product_name'], 0,40); ?><?php echo(strlen($value['product_name'])>40)?'...':''; ?></p>
                                    <span class="price">
                                        <?php if($value['product_sale_price']>0){ ?>
                                            <!-- <del>$<?php //echo $value['product_price']; ?></del> &nbsp; -->
                                            $<?php echo $value['product_sale_price']; ?> 
                                        <?php }else{ ?>
                                            $<?php echo $value['product_price']; ?>
                                        <?php } ?>
                                    </span>
                                </div>


                        <div class="count-list d-flex">
                            <p class="qty">Quantity</p>
                            <ul class="d-flex justify-content-around align-items-center list-unstyled counter">
                                <li><a href="javascript:void(0);" onClick='decreaseCount(event, this)'>-</a></li>
                                <li class="count-number"><input class="count-number" id="qty" type="text" name="qty" value="1" readonly style="max-width: 150px;background: transparent;border: none;width: auto;text-align: center;"></li>
                                <li><a href="javascript:void(0);" onClick='increaseCount(event, this)'>+</a></li>
                            </ul>
                        </div>
                                <div class="cart-btn">
                                    <?php if($value['productid']!=0){ ?>
                                        <button type="submit" id="ATC" title="shopping cart" class="btn btn-primary">ADD TO CART</button>
                                    <?php }else{ ?>
                                        <h4>Out of stock</h4>
                                    <?php } ?> 
                                </div>
                            </div>
                        </div>
                    </form>
                    <?php } }else{ ?>
                        <div class="col-md-12">
                           <h1 class="text-center"><strong>No products found...</strong></h1>
                        </div>
                    <?php } ?>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-12 order-3">
                <div class="text-center">
                    <nav aria-label="Page navigation example">
                        <!-- <ul class="pagination justify-content-center">
                            <li class="page-item"><a class="page-link active" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                        </ul> -->
                        <?php echo $this->pagination->create_links(); ?>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- produt end -->

<!----add to cart modal start -->
<?php $atcthumb = $this->common->getsData('product_media',array('product_id'=>$product['productid'],'isThumb'=>1)); ?>
<div class="atc-success" style="box-shadow: 1px 2px 8px 2px #ddd;border-radius: 50px;">
    <div class="row">
        <div class="col-md-12">
            <a href="javascript:void(0);" class="closeATcModal" style="position:absolute;top: -10px;right: -10px;font-size: 24px;background: #ed1c24;border: 1px solid #ed1c24;border-radius: 50px;color: #fff;width: 30px;height: 30px;line-height: 30px;text-align: center;">×</a>

        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-sm-4 col-4">
            <img src="<?php echo base_url($atcthumb['product_image']); ?>" style="width:100%;" alt="img">
        </div>
        <div class="col-md-8 col-sm-8 col-8">
        <h1>Item added to cart</h1>
            <h5><?php echo $value['product_name']; ?></h5>
            <h4 id="priceHtmlATC">
          
                <?php if($value['product_sale_price']>0){ ?>
                    $<?php echo $value['product_sale_price']; ?>
                <?php }else{ ?>
                    $<?php echo $value['product_price']; ?>
                <?php } ?>
            </h4>
            <div class="single-product-cart">
              <a href="<?php echo base_url('shopping-cart'); ?>" class="btn btn-primary btn-sm" style="min-width:140px;margin-right:5px;margin-bottom:5px;">VIEW CART</a>
              <a href="<?php echo base_url('checkout'); ?>" class="btn btn-primary btn-sm" style="min-width:140px;margin-right:5px;margin-bottom:5px;">CHECKOUT</a>
            </div>
        </div>
    </div>
</div>
<style>
    .atc-success{
        background: #fff;
        position: fixed;
        left: 50%;
        top: 50%;
        /*right: 15px;
        top: 8%;*/
        transform: translate(-50%, -50%);
        z-index: 999;
        width: 90%;
        max-width: 650px;
        padding: 20px 15px;
        display:none;
        font-family: 'Karla';
    }
    .atc-success h1
    {
        font: normal normal bold 25px/30px Poppins;
        letter-spacing: 0px;
        color: #000;
        opacity: 1;
        margin-bottom: 15px;
        float: left;
        width: 100%;
    }
    .atc-success h4 {
        font: normal normal 500 21px/32px Poppins;
    letter-spacing: 0px;
    color: #1a8370;
    }
    .atc-success h5
    {
    text-align: left;
    font: normal normal 500 20px/30px Poppins;
    letter-spacing: 0px;
    color: #000000;
    opacity: 1;
    }
    .atc-success img
    {
        border-radius: 8px;
    }
    table{max-width:100%;}
</style>


<?php $this->load->view('contact-section'); ?>


<script>
  $(document).ready(function() {
        $(".addProductInCart1").formValidation({
            // framework: 'bootstrap',
            // excluded: ':disabled',
            icon: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                color: {
                    validators: {
                        notEmpty: {
                            message: 'Please Select Color'
                        }
                    }
                },
                size: {
                    validators: {
                        notEmpty: {
                            message: 'Please Select Size'
                        }
                    }
                },
            }
        }).on('success.form.fv', function(e) {
            var $form        = $(e.target),
            $button      = $form.data('formValidation').getSubmitButton();
            // alert($button.attr('id'));
            var site_url = "<?php echo base_url(); ?>";
            e.preventDefault();
            var productid = $(this).attr("data-id");
            var type = $(".product_"+productid+" #type").val();
            var qty = $(".product_"+productid+" #qty").val();
            var size = $(".product_"+productid+" #size label.active :input[name=size]").val();
            var color = $(".product_"+productid+" #color label.active :input[name=color]").val();
            // alert("qty : "+qty+" | size : "+size+" | color : "+color+" | type : "+type);
            if($button.attr('id') == "ATC") {
                $.ajax({
                    url: site_url+"cart/addProductInCart",
                    type: 'POST',
                    data: 'productid='+productid+'&qty='+qty+'&size='+size+'&color='+color+'&type='+type,
                    success: function(data){
                        if(data.found==0)
                        {
                            var cartDropdown = data.cartDropdown;
                            var count = data.count;
                            $("#cart-sidebar").html(cartDropdown);
                            $("#cart-total").html(count);
                            $("#priceHtmlATC").html('$ '+(parseFloat($('#qtyprice').attr('data-price'))*qty));
                            // $('.sidebar-cart-active').addClass('inside');
                            // $('.main-wrapper').addClass('overlay-active');
                            $(".atc-success").fadeIn();
                            setTimeout(function() {
                                $(".atc-success").hide().fadeOut();
                            }, 5000);
                        }else{
                            alert(data.msg);
                        }
                    }
                });
            }else{
                $.ajax({
                    url: site_url+"cart/addProductInCart",
                    type: 'POST',
                    data: 'productid='+productid+'&qty='+qty+'&size='+size+'&color='+color+'&type='+type,
                    success: function(result){
                        location.href=site_url+'shopping-cart';
                    }
                });
            }

            
            // $('#ATC').attr('disabled',false);
            // $('#ATC').removeClass('disabled');
        });
    });
</script>
<script type="text/javascript">
    function countpricetotal(qty) {
        var price = parseFloat($('#qtyprice').attr('data-price'));
        $('#qtyprice').html('$ '+(price*qty).toFixed(2));
    }
      function increaseCount(a, b) {
        // var input = b.previousElementSibling;
        var input = $('#qty');
        var value = parseInt(input.val(), 10); 
        value = isNaN(value)? 0 : value;
        value ++;
        input.val(value);
        countpricetotal(value);
      }
      function decreaseCount(a, b) {
        // var input = b.nextElementSibling;
        var input = $('#qty');
        var value = parseInt(input.val(), 10); 
        if (value > 1) {
          value = isNaN(value)? 0 : value;
          value --;
          input.val(value);
          countpricetotal(value);
        }
      }
</script>