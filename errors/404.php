<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'>
<html xmlns = 'http://www.w3.org/1999/xhtml' xml:lang = 'en' lang = 'en'>
    <head>
        <meta http-equiv = 'Content-Type' content = 'text/html; charset=utf-8' />
        <title><?php echo $this->get('site/title'); ?></title>
        <link rel="stylesheet" type="text/css" href="<?php echo $this->get('theme/themeurl'); ?>css/style.css" />
    </head>
    <body>
        <!-- <div id="container"> -->
            <div id="header" class="container" style="padding:20px; margin-top:40px;">
            <section id="content">
            <form>
                <h1><center></center></h1>
                <h4><center></center></h4>
                </form>
                </section>
            </div>
            <div id="menu" class="container" style="padding:20px; margin-top:40px;">
            <section id="content">
                <center></center><br/>
            </div>
            </section>
            </div>

            <div id="content" class="container" style="padding:10px; margin-top:0px;">
                <section id="content">

                <p>This is the 404 page.</p>
                <p><?php var_dump(parse_url($_SERVER['REQUEST_URI'])); ?></p>

            <div id="footer">
            <section id="footer">
                <br/><br/>
                <center></center>
                </section>
            </div>

        <!-- </div> -->
    </body>
</html>
