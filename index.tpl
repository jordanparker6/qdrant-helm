<!doctype html>
<html lang=en-us>
<head>
    <meta charset=utf-8>
    <meta http-equiv=x-ua-compatible content="IE=edge">
    <meta name=viewport content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0">
    <title>Qdrant Helm Charts</title>
    <link rel=canonical href=https://qdrant.tech/documentation/>
    <link rel=apple-touch-icon sizes=180x180 href=https://qdrant.tech/images/apple-touch-icon.png>
    <link rel=icon type=image/png sizes=32x32 href=https://qdrant.tech/images/favicon-32x32.png>
    <link rel=icon type=image/png sizes=16x16 href=https://qdrant.tech/images/favicon-16x16.png>
    <link rel=mask-icon href=https://qdrant.tech/images/safari-pinned-tab.svg color=#5bbad5>
    <link rel="shortcut icon" href=https://qdrant.tech/images/favicon.ico>
    <meta name=msapplication-TileColor content="#2b5797">
    <meta name=theme-color content="#ffffff">
    <link href=https://qdrant.tech/css/main.css rel=stylesheet>
    <style>
      .charts {
        display: flex;
        flex-wrap: wrap;
      }

      .chart {
        border-radius: 8px;
        overflow: hidden;
        border: 1px solid #d7d9dd;
        transition: transform .2s ease;
        background-color: #eaedef;
        width: 300px;
        margin: 0.5em;
      }

      .chart .icon {
        display: flex;
        justify-content: center;
        width: 100%;
        height: 110px;
        background-color: #fff;
        align-items: center;
      }
      .chart .icon img {
        max-height: 80%;
      }
      .chart .body {
        position: relative;
        display: flex;
        justify-content: center;
        flex: 1;
        border-top: 1px solid #d7d9dd;
        padding: 0 1em;
        flex-direction: column;
        word-wrap: break-word;
        text-align: center;
      }
      .chart .body .info {
        word-wrap: break-word;
        text-align: center;
      }
      .chart .body .description {
        text-align: left;
      }
    </style>
</head>
<body>
<div class=page-wrapper>
    <header class="main-header position-static">
        <div class="container-xxl d-flex justify-content-between">
            <div class=logo-box>
                <div class="logo logo_with-text">
                    <a href=https://qdrant.tech/ class=logo__link></a>
                </div>
            </div>
        </div>
    </header>
    <section class=documentation>
        <div class="container-xxl pt-4 pt-md-5">
            <div class="row clearfix">
                <article class="documentation__article col-12 col-md-9 col-lg-8 pb-5">

                    <h1>Qdrant Helm Charts</h1>

                    <h2>Usage</h2>

                    <pre class="snippet" lang="no-highlight"><code>helm repo add qdrant https://qdrant.github.io/qdrant-helm</code></pre>

                    <p></p>

                    <h2>Charts</h2>

                    <div class="charts">
                        {{range $key, $chartEntry := .Entries }}
                        {{ if not (index $chartEntry 0).Deprecated }}
                        <div class="chart">
                            <div class="icon">
                                <img class="chart-item-logo" alt="{{ $key }}'s logo"
                                     src="{{ if (index $chartEntry 0).Icon }}{{ (index $chartEntry 0).Icon }}{{ else }}logo_with_text.svg{{end}}">
                            </div>
                            <div class="body">
                                <p class="info">
                                    <a href="{{ (index (index $chartEntry 0).Urls 0) }}"
                                       title="{{ (index (index $chartEntry 0).Urls 0) }}">
                                        {{ (index $chartEntry 0).Name }}
                                        ({{ (index $chartEntry 0).Version }}@{{ (index $chartEntry 0).AppVersion }})
                                    </a>
                                </p>
                                <p class="description">
                                    {{ (index $chartEntry 0).Description }}
                                </p>
                                <p class="info">
                                    <a href="https://github.com/qdrant/qdrant-helm/blob/{{ (index $chartEntry 0).Name }}-{{ (index $chartEntry 0).Version }}/charts/{{ (index $chartEntry 0).Name }}/README.md" title="README">
                                        README
                                    </a>&nbsp;|&nbsp;
                                    <a href="https://github.com/qdrant/qdrant-helm/tree/main/charts/{{ (index $chartEntry 0).Name }}" title="Source">
                                        Source
                                    </a>
                                </p>
                            </div>
                        </div>
                        {{end}}
                        {{end}}
                    </div>

                </article>
                <nav class="tableOfContent col-lg-2 col-12 d-lg-block d-none mt-0 pr-4 mb-4">
                    <div class=sticky-top>
                        <br>
                    </div>
                </nav>
            </div>
        </div>
    </section>


    <footer class=main-footer>
        <div class=footer-bottom>
            <div class=auto-container>
                <div class="row clearfix">
                    <div class="copyright-column col-lg-6 col-md-12 col-sm-12">
                        <div class=copyright>&copy; 2023 Qdrant. All Rights Reserved</div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>
</div>
</body>
</html>
