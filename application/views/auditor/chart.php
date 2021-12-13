
<div class="site-index">
    <div class="row">
        <div class="col-md-6 col-lg-12 col-xl-6">
            <section class="panel">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-8">

                            <h2>
                                <strong>
                                    Grafik Maturity Level
                                </strong>
                            </h2>

                            <div id="salesSelectorItems" class="chart-data-selector-items mt-sm">
                                <!-- Flot: Sales JSOFT Admin -->
                                <div class="chart chart-sm" data-sales-rel="JSOFT Admin" id="flotDashSales1" class="chart-active"></div>
                                <script>

                                    var flotDashSales1Data = [{
                                        data: [
                                            <?php foreach($tampil as $a): ?>
                                            ["<?= $a->waktu_pelaksanaan ?>" , <?= $a->rid_quisioner / $a->partisipan ?>],
                                            <?php endforeach; ?>
                                        ],
                                        color: "#0088cc"
                                    }];

                                    // See: assets/javascripts/dashboard/examples.dashboard.js for more settings.

                                </script>

                                <!-- Flot: Sales JSOFT Drupal -->
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>

<!-- end: page -->
</section>
</div>