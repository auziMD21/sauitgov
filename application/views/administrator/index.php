                         <div class="jumbotron" style="margin-top: -90px">
                                <section class="panel panel-transparent">
                                    <header class="panel-heading">
                                        <h2 class="panel-title">Dashbooard</h2>
                                    </header>

                                    <div class="col-md-6 col-lg-12 col-xl-6">
                                        <div class="row">
                                            <div class="col-md-12 col-lg-6 col-xl-6">
                                                <section class="panel panel-featured-left panel-featured-primary">
                                                    <div class="panel-body">
                                                        <div class="widget-summary">
                                                            <div class="widget-summary-col widget-summary-col-icon">
                                                                <div class="summary-icon bg-primary">
                                                                    <i class="fa fa-institution" style="margin-top: 20px"></i>
                                                                </div>
                                                            </div>
                                                            <div class="widget-summary-col">
                                                                <div class="summary">
                                                                    <h4 class="title">Total Perusahaan</h4>
                                                                    <div class="info">
                                                                        <strong class="amount"><?php foreach ($perusahaan as $u){ echo $u->total;}?> Perusahaan</strong>
                                                                    </div>
                                                                </div>
                                                                <div class="summary-footer">
                                                                    <a class="text-muted text-uppercase"></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>
                                            <div class="col-md-12 col-lg-6 col-xl-6">
                                                <section class="panel panel-featured-left panel-featured-secondary">
                                                    <div class="panel-body">
                                                        <div class="widget-summary">
                                                            <div class="widget-summary-col widget-summary-col-icon">
                                                                <div class="summary-icon bg-secondary">
                                                                    <i class="fa fa-question" style="margin-top: 20px"></i>
                                                                </div>
                                                            </div>
                                                            <div class="widget-summary-col">
                                                                <div class="summary">
                                                                    <h4 class="title">Total Pertanyaan</h4>
                                                                    <div class="info">
                                                                        <strong class="amount"><?php foreach ($pertanyaan as $u){ echo $u->total;}?> Pertanyaan</strong>
                                                                    </div>
                                                                </div>
                                                                <div class="summary-footer">
                                                                    <a class="text-muted text-uppercase"></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>
                                            <div class="col-md-12 col-lg-6 col-xl-6">
                                                <section class="panel panel-featured-left panel-featured-tertiary">
                                                    <div class="panel-body">
                                                        <div class="widget-summary">
                                                            <div class="widget-summary-col widget-summary-col-icon">
                                                                <div class="summary-icon bg-tertiary">
                                                                    <i class="fa fa-user" style="margin-top: 20px"></i>
                                                                </div>
                                                            </div>
                                                            <div class="widget-summary-col">
                                                                <div class="summary">
                                                                    <h4 class="title">Total Audite Terdaftar</h4>
                                                                    <div class="info">
                                                                        <strong class="amount"><?php foreach ($audite as $u){ echo $u->total;}?> Orang</strong>
                                                                    </div>
                                                                </div>
                                                                <div class="summary-footer">
                                                                    <a class="text-muted text-uppercase"></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>
                                            <div class="col-md-12 col-lg-6 col-xl-6">
                                                <section class="panel panel-featured-left panel-featured-quartenary">
                                                    <div class="panel-body">
                                                        <div class="widget-summary">
                                                            <div class="widget-summary-col widget-summary-col-icon">
                                                                <div class="summary-icon bg-quartenary">
                                                                    <i class="fa fa-bar-chart-o" style="margin-top: 20px"></i>
                                                                </div>
                                                            </div>
                                                            <div class="widget-summary-col">
                                                                <div class="summary">
                                                                    <h4 class="title">Working Audit</h4>
                                                                    <div class="info">
                                                                        <strong class="amount"><?php foreach ($audit as $u){ echo $u->total;}?></strong>
                                                                    </div>
                                                                </div>
                                                                <div class="summary-footer">
                                                                    <a class="text-muted text-uppercase"></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>
                                        </div>
                                    </div>
                         </div>
                    <!-- end: page -->
				</section>
			</div>