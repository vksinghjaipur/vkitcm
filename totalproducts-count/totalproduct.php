<?php


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