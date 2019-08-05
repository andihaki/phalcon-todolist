<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/png" sizes="16x16" href="{{ url('favicon.ico') }}">
    {# assets.outputCss() #}
    {# <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" type="text/css"> #}

    {#<link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/theme/jumbotron-narrow.css" rel="stylesheet">#}
    {{ stylesheet_link('assets/css/bootstrap.min.css') }}
    {{ stylesheet_link('assets/css/theme/jumbotron-narrow.css') }}
    {# <link href="assets/css/adminLTE.min.css" rel="stylesheet"> #}
    <title>Phalcon Todolist</title>
</head>
<body>
<div class="container">
    {{ content() }}
</div>
{% if sentry_dsn is defined %}
    <script src="https://cdn.ravenjs.com/3.14.2/raven.min.js"></script>
    <script>
        var appDSN = "{{ sentry_dsn }}";
        //Raven.config(appDSN).install();
        {% if error is defined %}
        Raven.showReportDialog({
            eventId : "{{ errorid }}",
            dsn : appDSN
        });
        {% endif %}
    </script>
{% endif %}
<!-- Hotjar Tracking Code for https://aplikasi.kirim.email -->
<script>
    (function(h,o,t,j,a,r){
        h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
        h._hjSettings={hjid:502156,hjsv:5};
        a=o.getElementsByTagName('head')[0];
        r=o.createElement('script');r.async=1;
        r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
        a.appendChild(r);
    })(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');
</script>
{{ javascript_include('assets/js/jquery-3.3.1.slim.min.js') }}
{{ javascript_include('assets/js/bootstrap.min.js') }}
</body>
</html>
