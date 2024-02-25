<div class="page-title">
    <div class="container-fluid common-banner contact-banner">
        <div class="row">
            <div class="col-12 p-0">
                <h1>Shop</h1>
            </div>
        </div>
    </div>
    <!-- <div class="container-fluid">
        <div class="row">
            <div class="col-12 p-0">
                <img src="<?php echo base_url(); ?>assets/user/img/common-banner.webp" alt="shop" class="img-fluid">

            </div>
        </div>
    </div> -->
    <!-- <div class="container position-relative mb-5">
        <div class="row">
            <div class="col-12 p-0">
                <div class="text-center">
                    <h1 class="main-title">Shop</h1>
                </div>
            </div>
        </div>
    </div> -->
</div>
<!-- page-title end -->
<?php
$sidebarcat = $this->common->getData('category', array('show' => 1, 'parent' => 0), array(), array('field' => 'item_order', 'by' => 'asc'));

foreach ($sidebarcat as $key => $category) {
    $category_id = $category['c_id'];
    $product_count = $this->db->query("SELECT COUNT(*) as count FROM products WHERE FIND_IN_SET('$category_id', product_category) > 0")->row()->count;
}
?>
<!-- produt start -->
<div class="shop">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-12">
                <div class="sidebox mb-5 pe-md-5 ">
                    <h5>Categories</h5>
                    <!-- <p><a href="<?php echo base_url(); ?>products">All</a></p> -->
                    <div class="accordion" id="accordionExample">

                        <div class="accordion-item">
                            <p class="accordion-header" id="headingOne0">
                                <a href="<?php echo base_url('products'); ?>" class="main-category <?php echo ($this->uri->uri_string() == 'products') ? 'active' : ''; ?>">All <?php echo '(' . $totalProduct[0]['product_count'] . ')'; ?></a>
                            </p>
                        </div>
                        <?php
                        if (isset($sidebarcat) && $sidebarcat) {
                            foreach ($sidebarcat as $key => $value) {
                                $subcat = $this->common->getData('category', array('parent' => $value['c_id'], 'show' => 1), array(), array('field' => 'item_order', 'by' => 'asc'));

                                // Get product count for the current category
                                $category_id = $value['c_id'];
                                $product_count = $this->db->query("SELECT COUNT(*) as count FROM products WHERE FIND_IN_SET('$category_id', product_category) > 0")->row()->count;

                                // Display category name with product count
                        ?>

                                <div class="accordion-item">
                                    <p class="accordion-header" id="headingOne<?php echo $value['c_id']; ?>">
                                        <a href="<?php echo base_url('products/' . url_title($value['category']) . '/pr?catid=' . $value['c_id']); ?>" class="main-category <?php echo (isset($value['c_id']) && $value['c_id'] == $this->input->get('catid', TRUE)) ? 'active' : ''; ?>">
                                            <?php echo $value['category'] . ' (' . $product_count . ')'; ?>
                                        </a>
                                        <?php if (isset($subcat) && $subcat) { ?>
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne<?php echo $value['c_id']; ?>" aria-expanded="true" aria-controls="collapseOne<?php echo $value['c_id']; ?>"></button>
                                        <?php } ?>
                                    </p>
                                    <?php if (isset($subcat) && $subcat) { ?>
                                        <div id="collapseOne<?php echo $value['c_id']; ?>" class="accordion-collapse collapse" aria-labelledby="headingOne<?php echo $value['c_id']; ?>" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <ul class="list-unstyled">
                                                    <?php foreach ($subcat as $key1 => $value1) {
                                                        //$pc = $this->db->query('select count(pid) as total from products where product_category regexp "[[:<:]]'.$value1['c_id'].'[[:>:]]"')->result_array();
                                                    ?>
                                                        <li><a href="<?php echo base_url('products/' . url_title($value1['category']) . '/pr?catid=' . $value1['c_id']); ?>"><?php echo $value1['category']; ?></a></li>
                                                    <?php } ?>
                                                </ul>
                                            </div>
                                        </div>
                                    <?php } ?>
                                </div>
                        <?php }
                        } ?>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-8 col-12">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div>
                        <?php
                        $categoryCounts = array();

                        if (isset($products) && !empty($products)) {
                            foreach ($products as $key => $value) {
                                // Increment the count for the respective category
                                $categoryId = $value['category_id'];
                                if (!isset($categoryCounts[$categoryId])) {
                                    $categoryCounts[$categoryId] = 1;
                                } else {
                                    $categoryCounts[$categoryId]++;
                                }

                                ?>
                                <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                                    <!-- Your product HTML here -->
                                </div>
                            <?php
                            }
                        }

                        // Display category-wise product counts
                        foreach ($categoryCounts as $categoryId => $count) {
                            echo "<p>Total $categoryId: $count Products</p>";
                        }
                        ?>
                        
                    </div>
                </div><br>

                <div class="row g-md-4">
                    <?php if (isset($products) && !empty($products)) {
                        foreach ($products as $key => $value) {
                    ?>
                            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                                <div class="product text-center shadow-none">
                                    <div class="product-img">
                                        <?php if ($value['product_image'] != '') {
                                            $pimg = base_url($value['product_image']); ?>
                                            <a href="<?php echo base_url('product-detail/' . strtolower($value['product_slug']) . '/' . $value['productid']); ?>"> <img src="<?php echo base_url($value['product_image']); ?>" alt="<?php echo substr($value['product_name'], 0, 15); ?>" class="img-fluid"> </a>
                                        <?php } else { ?>
                                            <img src="<?php echo base_url(); ?>assets/user/img/product-item.webp" alt="<?php echo substr($value['product_name'], 0, 15); ?>" class="img-fluid">
                                        <?php } ?>
                                        <!-- <div class="view-btn">
                                        <a href="<?php echo base_url('product-detail/' . strtolower($value['product_slug']) . '/' . $value['productid']); ?>"> <img src="<?php echo base_url(); ?>assets/user/img/view-show.png" class="img-fluid" width="18" alt="view"> </a>
                                    </div> -->
                                    </div>
                                    <div class="product-detail">
                                        <p class="product-title"><?php echo substr($value['product_name'], 0, 40); ?><?php echo (strlen($value['product_name']) > 40) ? '...' : ''; ?></p>
                                        <span class="price">
                                            <?php if ($value['product_sale_price'] > 0) { ?>
                                                <!-- <del>$<?php //echo $value['product_price']; 
                                                            ?></del> &nbsp; -->
                                                $<?php echo $value['product_sale_price']; ?>
                                            <?php } else { ?>
                                                $<?php echo $value['product_price']; ?>
                                            <?php } ?>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        <?php }
                    } else { ?>
                        <div class="col-md-12">
                            <h1 class="text-center"><strong>No products found...</strong></h1>
                        </div>
                    <?php } ?>
                </div>
                <div class="col-lg-12 col-md-12 col-12 order-3">
                    <div class="text-center">
                        <nav aria-label="Page navigation example">
                            <?php echo $this->pagination->create_links(); ?>
                        </nav>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- produt end -->
<?php $this->load->view('contact-section'); ?>