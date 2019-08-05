<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/png" sizes="16x16" href="favicon.ico">
    {# assets.outputCss() #}
    {# <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" type="text/css"> #}

    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/theme/jumbotron-narrow.css" rel="stylesheet">
    {# stylesheet_link('assets/css/bootstrap.min.css') #}
    {# <link href="assets/css/adminLTE.min.css" rel="stylesheet"> #}
    <title>Phalcon Todolist</title>
</head>
<body>
{# include 'shared/nav.volt' #}
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
{#
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
#}
</body>
</html>
