<!DOCTYPE html>
<!-- saved from url=(0140)https://demos.creative-tim.com/material-dashboard-pro/pages/dashboards/sales.html?_ga=2.235902465.1034151504.1734708775-783796206.1734708775 -->
<html lang="en" class="">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <?php

session_start();
if(!isset($_SESSION["admin_user"])){
    header("location:index.php");

} else{
    $uname = $_SESSION['admin_user'];
}
?>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76"
        href="https://demos.creative-tim.com/material-dashboard-pro/assets/img/apple-icon.png">
    <link rel="icon" type="image/png"
        href="https://demos.creative-tim.com/material-dashboard-pro/assets/img/favicon.png">
    <title>
        ABU File Management System version 2
    </title>
    <!-- Extra details for Live View on GitHub Pages -->
    <!-- Canonical SEO -->
    <link rel="canonical" href="https://www.creative-tim.com/product/material-dashboard-pro">
    <!--  Social tags      -->
    <meta name="keywords"
        content="creative tim, html dashboard, html css dashboard, web dashboard, bootstrap 5 dashboard, bootstrap 5, css3 dashboard, bootstrap 5 admin, material dashboard bootstrap 5 dashboard, frontend, responsive bootstrap 5 dashboard, material design, material dashboard bootstrap 5 dashboard">
    <meta name="description"
        content="Material Dashboard PRO is a beautiful Bootstrap 5 admin dashboard with a large number of components, designed to look beautiful, clean and organized. If you are looking for a tool to manage dates about your business, this dashboard is the thing for you.">

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="./admindash_sales/css">
    <!-- Nucleo Icons -->
    <link href="./admindash_sales/nucleo-icons.css" rel="stylesheet">
    <link href="./admindash_sales/nucleo-svg.css" rel="stylesheet">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="./admindash_sales/all.min.css" integrity="" crossorigin="anonymous" referrerpolicy="">
    <!-- Material Icons -->
    <link rel="stylesheet" href="./admindash_sales/css2">
    <!-- CSS Files -->
    <link id="pagestyle" href="./admindash_sales/material-dashboard.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <!-- Bootstrap core CSS -->
      <script src="js/jquery-1.8.3.min.js"></script>
      
<link rel="stylesheet" type="text/css" href="medias/css/dataTable.css" />
    <script src="medias/js/jquery.dataTables.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css"/>   
<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/1.0.3/css/dataTables.responsive.css">
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/1.0.3/js/dataTables.responsive.js"></script>

    <!-- Your custom styles (optional) -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <!-- <link href="css/style.min.css" rel="stylesheet"> -->



    <!-- end table-->
    <!--   Core JS Files   -->
    <script src="./admindash_sales/popper.min.js"></script>
    <script src="./admindash_sales/bootstrap.min.js"></script>
    <script src="./admindash_sales/perfect-scrollbar.min.js"></script>
    <script src="./admindash_sales/smooth-scrollbar.min.js"></script>
    <!-- Kanban scripts -->
    <script src="./admindash_sales/dragula.min.js"></script>
    <script src="./admindash_sales/jkanban.min.js"></script>
    <script src="./admindash_sales/chartjs.min.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>

   
    <link rel="stylesheet" type="text/css" href="medias/css/dataTable.css" />
    <script src="medias/js/jquery.dataTables.js" type="text/javascript"></script>
    <!-- end table-->
 

    <style>
    select[multiple],
    select[size] {
        height: auto;
        width: 20px;
    }

    .pull-right {
        float: right;
        margin: 2px !important;
    }

    .map-container {
        overflow: hidden;
        padding-bottom: 56.25%;
        position: relative;
        height: 0;
    }

    .map-container iframe {
        left: 0;
        top: 0;
        height: 100%;
        width: 100%;
        position: absolute;
    }

    #loader {
        position: fixed;
        left: 0px;
        top: 0px;
        width: 100%;
        height: 100%;
        z-index: 9999;
        background: url('img/lg.flip-book-loader.gif') 50% 50% no-repeat rgb(249, 249, 249);
        opacity: 1;
    }
    </style>

    <!-- <script src="jquery.min.js"></script> -->
    <script type="text/javascript">
    $(window).on('load', function() {
        //you remove this timeout
        setTimeout(function() {
            $('#loader').fadeOut('slow');
        });
        //remove the timeout
        //$('#loader').fadeOut('slow'); 
    });
    </script>

    <!-- Anti-flicker snippet (recommended)  -->
    <style>
    .async-hide {
        opacity: 0 !important
    }
    </style>
     <style>
    .scrollable_hori1{
  width: 300px;
  overflow-x: auto;
  white-space: nowrap; /* Prevents text from wrapping */
}
   
    </style>
    <script type="text/javascript" async="" src="./admindash_sales/identify_45dd5971.js"></script>
    <script type="text/javascript" async="" src="./admindash_sales/js"></script>
    <script type="text/javascript" async="" src="./admindash_sales/js(1)"></script>
    <script type="text/javascript" async="" src="./admindash_sales/main.MWE1OTI4NzI4Mw.js"
        data-id="CC6UAQBC77U7GVKHLC4G"></script>
    <script async="" src="./admindash_sales/insight.old.min.js"></script>
    <script async="" src="./admindash_sales/main.7d8116bd.js"></script>
    <script type="text/javascript" async="" src="./admindash_sales/events.js"></script>
    <script type="text/javascript" async="" src="./admindash_sales/insight.min.js"></script>
    <script type="text/javascript" async="" src="./admindash_sales/core.js"></script>
    <script type="text/javascript" async="" src="./admindash_sales/analytics.js"></script>
    <script type="text/javascript" async="" src="./admindash_sales/js(2)"></script>
    <script async="" src="./admindash_sales/gtm.js"></script>
    <script async="" src="./admindash_sales/analytics.js"></script>
    <script>

    (function(a, s, y, n, c, h, i, d, e) {
        s.className += ' ' + y;
        h.start = 1 * new Date;
        h.end = i = function() {
            s.className = s.className.replace(RegExp(' ?' + y), '')
        };
        (a[n] = a[n] || []).hide = h;
        setTimeout(function() {
            i();
            h.end = null
        }, c);
        h.timeout = c;
    })(window, document.documentElement, 'async-hide', 'dataLayer', 4000, {
        'GTM-K9BGS8K': true
    });
    </script>
    <style type="text/css" id="operaUserStyle"></style>
    <!-- Analytics-Optimize Snippet -->
    <script>
    (function(i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function() {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-46172202-22', 'auto', {
        allowLinker: true
    });
    ga('set', 'anonymizeIp', true);
    ga('require', 'GTM-K9BGS8K');
    ga('require', 'displayfeatures');
    ga('require', 'linker');
    ga('linker:autoLink', ["2checkout.com", "avangate.com"]);
    </script>
    <!-- end Analytics-Optimize Snippet -->
    <!-- Google Tag Manager -->
    <script>
    (function(w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            'gtm.start': new Date().getTime(),
            event: 'gtm.js'
        });
        var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s),
            dl = l != 'dataLayer' ? '&l=' + l : '';
        j.async = true;
        j.src =
            'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
        f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');
    </script>
    <!-- End Google Tag Manager -->
    <style type="text/css">
    :root [href^="//mage98rquewz.com/"],
    :root [href^="//x4pollyxxpush.com/"],
    :root span[id^="ezoic-pub-ad-placeholder-"],
    :root ins.adsbygoogle[data-ad-slot],
    :root ins.adsbygoogle[data-ad-client],
    :root guj-ad,
    :root gpt-ad,
    :root div[id^="zergnet-widget"],
    :root div[id^="vuukle-ad-"],
    :root div[id^="taboola-stream-"],
    :root div[id^="sticky_ad_"],
    :root div[id^="st"][style^="z-index: 999999999;"],
    :root div[id^="pa_sticky_ad_box_middle_"],
    :root div[id^="gpt_ad_"],
    :root div[id^="ezoic-pub-ad-"],
    :root div[id^="dfp-ad-"],
    :root div[id^="crt-"][style],
    :root div[id^="adspot-"],
    :root div[id^="adrotate_widgets-"],
    :root ps-connatix-module,
    :root div[id^="ad_position_"],
    :root div[id^="ad-div-"],
    :root div[id*="ScriptRoot"],
    :root div[id*="MarketGid"],
    :root div[data-id-advertdfpconf],
    :root hl-adsense,
    :root div[data-contentexchange-widget],
    :root div[data-alias="300x250 Ad 2"],
    :root div[data-adzone],
    :root div[data-adunit-path],
    :root div[data-adname],
    :root div[data-ad-targeting],
    :root div[data-ad-placeholder],
    :root div[class^="native-ad-"],
    :root div[data-dfp-id],
    :root div[class^="kiwi-ad-wrapper"],
    :root div[aria-label="Ads"],
    :root display-ads,
    :root display-ad-component,
    :root atf-ad-slot,
    :root aside[id^="adrotate_widgets-"],
    :root ark-top-ad,
    :root amp-fx-flying-carpet,
    :root amp-embed[type="taboola"],
    :root amp-connatix-player,
    :root amp-ad-custom,
    :root amp-ad,
    :root div[id^="google_dfp_"],
    :root ad-slot,
    :root ad-shield-ads,
    :root a[style="width:100%;height:100%;z-index:10000000000000000;position:absolute;top:0;left:0;"],
    :root a[onmousedown^="this.href='https://paid.outbrain.com/network/redir?"][target="_blank"]+.ob_source,
    :root a[href^="https://xbet-4.com/"],
    :root div[id^="ad-position-"],
    :root a[href^="https://www.toprevenuegate.com/"],
    :root a[href^="https://www.purevpn.com/"][href*="&utm_source=aff-"],
    :root a[href^="https://www.privateinternetaccess.com/"]>img,
    :root a[href^="https://www.onlineusershielder.com/"],
    :root a[href^="https://financeads.net/tc.php?"],
    :root a[href^="https://www.mrskin.com/tour"],
    :root a[href^="https://www.infowarsstore.com/"]>img,
    :root a[href^="https://www.highperformancecpmgate.com/"],
    :root a[href^="https://www.highcpmrevenuenetwork.com/"],
    :root a[href^="https://lnkxt.bannerator.com/"],
    :root a[href^="https://www.geekbuying.com/dynamic-ads/"],
    :root a[href^="https://www.financeads.net/tc.php?"],
    :root [href^="https://www.herbanomic.com/"]>img,
    :root a[href^="https://maymooth-stopic.com/"],
    :root a[href^="https://www.dql2clk.com/"],
    :root a[href^="https://www.nutaku.net/signup/landing/"],
    :root a[href^="https://www.dating-finder.com/signup/?ai_d="],
    :root a[href^="https://explore-site.com/"],
    :root a[href^="https://www.brazzersnetwork.com/landing/"],
    :root a[href^="https://www.adxsrve.com/"],
    :root [data-template-type="nativead"],
    :root a[href^="https://www.endorico.com/Smartlink/"],
    :root a[href^="https://www.adultempire.com/"][href*="?partner_id="],
    :root a[href^="https://voluum.prom-xcams.com/"],
    :root div[data-type="_mgwidget"]:not(.eyeo),
    :root a[href^="https://twinrdsrv.com/"],
    :root a[href^="https://trk.nfl-online-streams.club/"],
    :root a[href^="https://tracking.avapartner.com/"],
    :root a[href^="https://track.wg-aff.com"],
    :root a[href^="https://track.ultravpn.com/"],
    :root a[href^="https://track.afcpatrk.com/"],
    :root a[href^="https://torguard.net/aff.php"]>img,
    :root [data-identity="adhesive-ad"],
    :root a[href^="https://tc.tradetracker.net/"]>img,
    :root a[href^="https://tatrck.com/"],
    :root a[href^="https://click.candyoffers.com/"],
    :root [href^="https://zstacklife.com/"] img,
    :root a[href^="https://t.aslnk.link/"],
    :root a[href^="https://t.adating.link/"],
    :root a[href^="https://land.brazzersnetwork.com/landing/"],
    :root a[href^="https://t.acam.link/"],
    :root a[href*="//daichoho.com/"],
    :root a[href^="https://syndication.optimizesrv.com/"],
    :root a[href^="https://go.trackitalltheway.com/"],
    :root [href^="https://track.fiverr.com/visit/"]>img,
    :root a[href^="https://syndication.exoclick.com/"],
    :root a[href^="https://syndication.dynsrvtbg.com/"],
    :root div[data-alias="300x250 Ad 1"],
    :root a[href^="https://syndicate.contentsserved.com/"],
    :root a[href^="https://svb-analytics.trackerrr.com/"],
    :root a[href^="https://ad.doubleclick.net/"],
    :root a[href^="https://static.fleshlight.com/images/banners/"],
    :root a[href^="https://slkmis.com/"],
    :root bottomadblock,
    :root a[href^="https://s.zlinkd.com/"],
    :root a[href^="https://s.zlink3.com/"],
    :root a[href^="https://www.mrskin.com/account/"],
    :root a[href^="https://s.optzsrv.com/"],
    :root #kt_player>div[style$="display: block;"][style*="inset: 0px;"],
    :root a[href^="https://quotationfirearmrevision.com/"],
    :root a[href^="https://pubads.g.doubleclick.net/"],
    :root a[href^="https://ak.oalsauwy.net/"],
    :root a[href^="https://softwa.cfd/"],
    :root a[href^="https://play1ad.shop/"],
    :root a[href^="https://prf.hn/click/"][href*="/camref:"]>img,
    :root a[href^="https://www.dating-finder.com/?ai_d="],
    :root a[href^="https://serve.awmdelivery.com/"],
    :root a[href^="https://prf.hn/click/"][href*="/adref:"]>img,
    :root app-ad,
    :root [href^="https://ap.octopuspop.com/click/"]>img,
    :root a[href^="https://postback1win.com/"],
    :root a[href^="https://mmwebhandler.aff-online.com/"],
    :root a[href^="https://www.bet365.com/"][href*="affiliate="],
    :root a[href^="https://pb-track.com/"],
    :root a[href^="https://pb-front.com/"],
    :root a[href^="https://paid.outbrain.com/network/redir?"],
    :root a[href^="https://streamate.com/landing/click/"],
    :root div[class^="Adstyled__AdWrapper-"],
    :root a[href^="https://startgaming.net/tienda/"i],
    :root a[href^="https://osfultrbriolenai.info/"],
    :root a[href^="https://upsups.click/"],
    :root a[href^="https://ndt5.net/"],
    :root a[href^="http://eighteenderived.com/"],
    :root a[href^="https://natour.naughtyamerica.com/track/"],
    :root a[href^="https://mediaserver.entainpartners.com/renderBanner.do?"],
    :root a[href^="https://m.do.co/c/"]>img,
    :root .nya-slot[style],
    :root a[href^="https://a.bestcontentweb.top/"],
    :root a[href^="https://lobimax.com/"],
    :root a[href^="https://lead1.pl/"],
    :root a[href^="https://landing.brazzersnetwork.com/"],
    :root a[href^="https://join.virtuallust3d.com/"],
    :root a[href^="https://kiksajex.com/"],
    :root a[href^="https://juicyads.in/"],
    :root a[href^="https://snowdayonline.xyz/"],
    :root a[href^="https://mediaserver.gvcaffiliates.com/renderBanner.do?"],
    :root a[href^="https://join.dreamsexworld.com/"],
    :root a[href^="https://jaxofuna.com/"],
    :root a[href^="https://itubego.com/video-downloader/?affid="],
    :root a[href^="https://italarizege.xyz/"],
    :root a[href^="https://iqbroker.com/"][href*="?aff="],
    :root a[href^="https://hot-growngames.life/"],
    :root a[href^="https://golinks.work/"],
    :root a[href^="https://go.xxxvjmp.com/"],
    :root [class^="tile-picker__CitrusBannerContainer-sc-"],
    :root a[href^="https://go.xxxiijmp.com"],
    :root a[href^="https://go.xtbaffiliates.com/"],
    :root .OUTBRAIN[data-widget-id^="FMS_REELD_"],
    :root [data-role="tile-ads-module"],
    :root a[href^="https://go.xlviirdr.com"],
    :root a[href^="https://go.xlviiirdr.com"],
    :root a[href^="https://ismlks.com/"],
    :root [href^="https://www.mypillow.com/"]>img,
    :root a[href^="https://go.xlirdr.com"],
    :root [data-css-class="dfp-inarticle"],
    :root a[href^="https://l.hyenadata.com/"],
    :root a[href^="https://go.tmrjmp.com"],
    :root a[href^="https://zirdough.net/"],
    :root a[href^="https://s.deltraff.com/"],
    :root a[href^="https://go.markets.com/visit/?bta="],
    :root a[href^="https://billing.purevpn.com/aff.php"]>img,
    :root a[href^="https://go.hpyrdr.com/"],
    :root a[href^="https://lijavaxa.com/"],
    :root a[href^="https://go.goaserv.com/"],
    :root a[href^="https://t.hrtye.com/"],
    :root a[href^="https://go.etoro.com/"]>img,
    :root a[href^="https://go.dmzjmp.com"],
    :root div[class^="Display_displayAd"],
    :root a[href^="https://www.bang.com/?aff="],
    :root #mgb-container>#mgb,
    :root a[href^="https://go.admjmp.com"],
    :root a[href^="https://ak.stikroltiltoowi.net/"],
    :root a[href^="https://get.surfshark.net/aff_c?"][href*="&aff_id="]>img,
    :root a[href^="https://www.adskeeper.com"],
    :root a[data-redirect^="https://paid.outbrain.com/network/redir?"],
    :root [href^="https://clicks.affstrack.com/"]>img,
    :root a[href^="https://ak.hauchiwu.com/"],
    :root a[href^="https://engine.phn.doublepimp.com/"],
    :root a[href^="https://engine.blueistheneworanges.com/"],
    :root a[href^="https://drumskilxoa.click/"],
    :root a[href^="https://dl-protect.net/"],
    :root a[href^="https://rixofa.com/"],
    :root #ads[style^="position: absolute; z-index: 30; width: 100%; height"],
    :root a[href^="https://disobediencecalculatormaiden.com/"],
    :root a[href*=".foxqck.com/"],
    :root a[href^="https://ctosrd.com/"],
    :root div[id*="ScriptRoot"]:not(.eyeo),
    :root a[href^="https://clixtrac.com/"],
    :root [href^="https://noqreport.com/"]>img,
    :root a[href^="https://clicks.pipaffiliates.com/"],
    :root a[href^="https://datewhisper.life/"],
    :root a[href^="https://get-link.xyz/"],
    :root a[href^="https://click.linksynergy.com/fs-bin/"]>img,
    :root a[href^="https://combodef.com/"],
    :root a[href^="https://click.hoolig.app/"],
    :root a[href^="https://track.totalav.com/"],
    :root a[href^="https://ctrdwm.com/"],
    :root img[src^="https://images.purevpnaffiliates.com"],
    :root a[href^="https://porntubemate.com/"],
    :root a[href^="https://clickadilla.com/"],
    :root a[href^="https://click.dtiserv2.com/"],
    :root a[href^="https://go.xlvirdr.com"],
    :root a[href^="http://www.iyalc.com/"],
    :root a[href^="https://claring-loccelkin.com/"],
    :root a[href^="https://s.ma3ion.com/"],
    :root a[href^="https://cams.imagetwist.com/in/?track="],
    :root a[href^="https://bongacams2.com/track?"],
    :root a[href^="https://t.ajrkm1.com/"],
    :root [href="https://masstortfinancing.com"] img,
    :root a[href^="https://bongacams10.com/track?"],
    :root a[href^="https://www.sheetmusicplus.com/"][href*="?aff_id="],
    :root a[href^="https://bngpt.com/"],
    :root a[href^="https://black77854.com/"],
    :root a[href^="https://banners.livepartners.com/"],
    :root a[href^="http://revolvemockerycopper.com/"],
    :root a[href^="https://awptjmp.com/"],
    :root a[href^="https://join.sexworld3d.com/track/"],
    :root a[href^="https://intenseaffiliates.com/redirect/"],
    :root a[href^="https://aweptjmp.com/"],
    :root [class^="s2nPlayer"],
    :root a[href^="https://chaturbate.jjgirls.com/?track="],
    :root a[href^="https://ausoafab.net/"],
    :root a[href^="https://activate-game.com/"],
    :root .scroll-fixable.rail-right>.deals-rail,
    :root [data-wpas-zoneid],
    :root a[href^="https://a2.adform.net/"],
    :root a[href^="https://auesk.cfd/"],
    :root a[href^="https://ak.psaltauw.net/"],
    :root a[href^="https://adclick.g.doubleclick.net/"],
    :root a[href^="https://bc.game/"],
    :root a[href^="https://a.bestcontentoperation.top/"],
    :root a[href^="https://adultfriendfinder.com/go/"],
    :root a[href^="https://ads.planetwin365affiliate.com/"],
    :root a[href^="https://ads.leovegas.com/"],
    :root a[href^="https://a.candyai.love/"],
    :root a[href^="https://playnano.online/offerwalls/?ref="],
    :root a[href^="https://a.adtng.com/"],
    :root [data-m-ad-id],
    :root a[href^="https://a-ads.com/"],
    :root div[id^="rc-widget-"],
    :root a[href^="http://eslp34af.click/"],
    :root a[href^="https://turnstileunavailablesite.com/"],
    :root a[href^="https://chaturbate.com/in/?"],
    :root a[href^="https://prf.hn/click/"][href*="/creativeref:"]>img,
    :root a[href*="&maxads="],
    :root a[href^="http://www.adultempire.com/unlimited/promo?"][href*="&partner_id="],
    :root a[href^="https://1betandgonow.com/"],
    :root a[href^="https://eergortu.net/"],
    :root div[id^="optidigital-adslot"],
    :root a[href^="https://123-stream.org/"],
    :root a[href^="http://www.friendlyduck.com/AF_"],
    :root a[href^="https://allhost.shop/aff.php?"],
    :root [data-dynamic-ads],
    :root a[href^="http://vnte9urn.click/"],
    :root a[href^="https://getvideoz.click/"],
    :root a[href^="http://troopsassistedstupidity.com/"],
    :root a[href^="http://trk.globwo.online/"],
    :root a[href^="https://random-affiliate.atimaze.com/"],
    :root a-ad,
    :root a[href^="https://offhandpump.com/"],
    :root a[href^="http://stickingrepute.com/"],
    :root #slashboxes>.deals-rail,
    :root [data-rc-widget="data-rc-widget"],
    :root a[href^="http://premonitioninventdisagree.com/"],
    :root a[href^="http://naggingirresponsible.com/"],
    :root a[href^="https://in.rabbtrk.com/"],
    :root a[href^="http://www.h4trck.com/"],
    :root a[href^="https://81ac.xyz/"],
    :root a[href^="http://guestblackmail.com/"],
    :root a[href^="http://cam4com.go2cloud.org/aff_c?"],
    :root a[href^="https://ads.betfair.com/redirect.aspx?"],
    :root [href^="https://www.mypatriotsupply.com/"]>img,
    :root a[href^="https://trk.softonixs.xyz/"],
    :root a[href^="https://sexynearme.com/"],
    :root a[href^="https://myclick-2.com/"],
    :root a[href^="http://dragnag.com/"],
    :root a[href^="http://dragfault.com/"],
    :root [id^="div-gpt-ad"],
    :root .ob_container .item-container-obpd,
    :root div[id^="yandex_ad"],
    :root a[href^="https://www8.smartadserver.com/"],
    :root a[href^="https://pb-imc.com/"],
    :root a[href^="http://deskfrontfreely.com/"],
    :root [data-advadstrackid],
    :root a[href^="http://muzzlematrix.com/"],
    :root a[href^="https://track.adform.net/"],
    :root a[href^="http://avthelkp.net/"],
    :root a[href^="https://a.medfoodhome.com/"],
    :root a[href^="https://engine.flixtrial.com/"],
    :root [data-type="ad-vertical"],
    :root [data-taboola-options],
    :root a[href^="http://annulmentequitycereals.com/"],
    :root a[href^="//startgaming.net/tienda/"i],
    :root a[href^="https://www.get-express-vpn.com/offer/"],
    :root a[href^="https://s.cant3am.com/"],
    :root a[href^="//s.st1net.com/splash.php"],
    :root a[href^="https://join.virtualtaboo.com/track/"],
    :root [id^="ad_sky"],
    :root a[href^="http://coefficienttolerategravel.com/"],
    :root a[href^="https://a.medfoodsafety.com/"],
    :root a[href^="//go.eabids.com/"],
    :root a[href^="//ejitsirdosha.net/"],
    :root a[href^=" https://www.friendlyduck.com/AF_"],
    :root a[href*="/jump/next.php?r="],
    :root [href^="https://ilovemyfreedoms.com/landing-"],
    :root a[href^="https://go.nordvpn.net/aff"]>img,
    :root .\[\&_\.gdprAdTransparencyCogWheelButton\]\:\!pjra-z-\[5\],
    :root [href^="http://clicks.totemcash.com/"],
    :root a[href^="https://ad.zanox.com/ppc/"]>img,
    :root a[href^="https://lone-pack.com/"],
    :root [data-d-ad-id],
    :root a[href*=".engine.adglare.net/"],
    :root a[href^="https://t.ajrkm3.com/"],
    :root [href^="https://aads.com/campaigns/"],
    :root a[href^="//stighoazon.com/"],
    :root [href^="https://www.profitablegatecpm.com/"],
    :root div[id^="lazyad-"],
    :root a[href^="http://com-1.pro/"],
    :root a[href*=".cfm?domain="][href*="&fp="],
    :root [data-ad-name],
    :root a[href^="https://loboclick.com/"],
    :root a[data-url^="https://vulpix.bet/?ref="],
    :root a[href^="https://ab.advertiserurl.com/aff/"],
    :root a[data-oburl^="https://paid.outbrain.com/network/redir?"],
    :root a[href^="https://go.xlivrdr.com"],
    :root [onclick^="location.href='https://1337x.vpnonly.site/"],
    :root [name^="google_ads_iframe"],
    :root [id^="section-ad-banner"],
    :root a[href^="https://www.goldenfrog.com/vyprvpn?offer_id="][href*="&aff_id="],
    :root a[href*="//jjgirls.com/sex/Chaturbate"],
    :root [id^="ad-wrap-"],
    :root [href^="https://zone.gotrackier.com/"],
    :root a[href^="http://sarcasmadvisor.com/"],
    :root [href^="https://www.restoro.com/"],
    :root [href^="https://www.targetingpartner.com/"],
    :root .section-subheader>.section-hotel-prices-header,
    :root [href^="https://www.hostg.xyz/"]>img,
    :root a[href^="http://adultfriendfinder.com/go/"],
    :root a[href^="https://fastestvpn.com/lifetime-special-deal?a_aid="],
    :root a[href^="https://tour.mrskin.com/"],
    :root [href^="https://www.brighteonstore.com/products/"] img,
    :root [data-ad-width],
    :root [data-block-type="ad"],
    :root a[href^="https://baipahanoop.net/"],
    :root [href^="https://v.investologic.co.uk/"],
    :root div[id^="div-ads-"],
    :root [href^="https://rapidgator.net/article/premium/ref/"],
    :root [href^="https://join.girlsoutwest.com/"],
    :root a[href^="https://track.aftrk3.com/"],
    :root [href^="https://join3.bannedsextapes.com"],
    :root a[href^="https://bodelen.com/"],
    :root a[href*=".g2afse.com/"],
    :root div[id^="adngin-"],
    :root [data-rc-widget],
    :root span[data-ez-ph-id],
    :root [href^="https://track.aftrk1.com/"],
    :root [href^="https://join.playboyplus.com/track/"],
    :root a[href^="https://go.xxxijmp.com"],
    :root [href^="https://istlnkcl.com/"],
    :root [href^="https://go.xlrdr.com"],
    :root a[href^="https://tm-offers.gamingadult.com/"],
    :root [href^="https://charmingdatings.life/"],
    :root [href^="https://glersakr.com/"],
    :root a[href^="https://a.bestcontentfood.top/"],
    :root [href^="https://cpa.10kfreesilver.com/"],
    :root [data-id^="div-gpt-ad"],
    :root a[href^="https://tracker.loropartners.com/"],
    :root [href^="https://awbbjmp.com/"],
    :root a[data-href^="http://ads.trafficjunky.net/"],
    :root a[href*=".adsrv.eacdn.com/"],
    :root [href^="https://antiagingbed.com/discount/"]>img,
    :root a[href^="http://partners.etoro.com/"],
    :root a[href^="https://www.friendlyduck.com/AF_"],
    :root [href^="https://ad1.adfarm1.adition.com/"],
    :root a[href^="https://bngprm.com/"],
    :root [href^="https://shiftnetwork.infusionsoft.com/go/"]>img,
    :root a[href^="https://go.strpjmp.com/"],
    :root a[href^="https://go.bushheel.com/"],
    :root a[href^="https://ctjdwm.com/"],
    :root a[href^="https://camfapr.com/landing/click/"],
    :root div[data-ad-wrapper],
    :root .gnt_em_vp_c[data-g-s="vp_dk"],
    :root [href="//sexcams.plus/"],
    :root [href^="http://www.mypillow.com/"]>img,
    :root #kt_player>a[target="_blank"],
    :root a[href^="http://bongacams.com/track?"],
    :root [href^="http://mypillow.com/"]>img,
    :root [href="https://ourgoldguy.com/contact/"] img,
    :root #teaser3[style="width: 100%;text-align: center;display: scroll;position:fixed;bottom: 0;margin: 0 auto;z-index: 103;"],
    :root [href="https://www.masstortfinancing.com/"]>img,
    :root a[href^="https://go.rmhfrtnd.com/"],
    :root [href="https://jdrucker.com/gold"]>img,
    :root a[href^="https://track.1234sd123.com/"],
    :root zeus-ad,
    :root [data-testid="prism-ad-wrapper"],
    :root [href^="https://ad.admitad.com/"],
    :root [href^="https://mypillow.com/"]>img,
    :root [data-testid="ad_testID"],
    :root [href^="https://optimizedelite.com/"]>img,
    :root [data-name="adaptiveConstructorAd"],
    :root a[href^="https://go.cmtaffiliates.com/"],
    :root [data-testid="adBanner-wrapper"],
    :root [href^="https://mylead.global/stl/"]>img,
    :root [href^="https://mypatriotsupply.com/"]>img,
    :root a[href^="https://go.hpyjmp.com"],
    :root [href^="https://mystore.com/"]>img,
    :root citrus-ad-wrapper,
    :root a[onmousedown^="this.href='https://paid.outbrain.com/network/redir?"][target="_blank"],
    :root a[href^="https://go.grinsbest.com/"],
    :root a[href^="https://vo2.qrlsx.com/"],
    :root [href^="https://www.avantlink.com/click.php"] img,
    :root [href^="https://wct.link/click?"],
    :root div[data-adunit],
    :root app-large-ad,
    :root [href^="https://turtlebids.irauctions.com/"] img,
    :root div[class*="publift-widget-"]:has(.fuse-slot-sticky),
    :root a[href^="https://witnessjacket.com/"],
    :root [data-mobile-ad-id],
    :root a[href^="https://fc.lc/ref/"],
    :root [data-adshim],
    :root topadblock,
    :root a[href^="//s.zlinkd.com/"],
    :root [class^="amp-ad-"],
    :root a[href^="http://handgripvegetationhols.com/"],
    :root a[href^="https://bs.serving-sys.com"],
    :root a[href^="https://gamingadlt.com/?offer="],
    :root [data-desktop-ad-id],
    :root a[href^="https://www.liquidfire.mobi/"],
    :root .grid>.container>#aside-promotion,
    :root DFP-AD,
    :root [id^="ad_slider"],
    :root [data-adbridg-ad-class],
    :root #teaser3[style^="width:autopx;"],
    :root [data-adblockkey],
    :root [onclick*="content.ad/"],
    :root [data-ad-manager-id],
    :root AMP-AD,
    :root [data-ad-cls],
    :root [data-ez-name],
    :root a[href^="https://go.mnaspm.com/"],
    :root a[href^="https://service.bv-aff-trx.com/"],
    :root a[href^="https://6-partner.com/"],
    :root a[href^="https://traffdaq.com/"],
    :root [href^="https://www.cloudways.com/en/?id"],
    :root #teaser1[style^="width:autopx;"],
    :root [class^="div-gpt-ad"],
    :root a[href^="http://tc.tradetracker.net/"]>img,
    :root [href^="https://affiliate.fastcomet.com/"]>img,
    :root [class^="adDisplay-module"],
    :root [data-freestar-ad][id],
    :root AD-SLOT,
    :root a[href^="https://www.googleadservices.com/pagead/aclk?"]>img,
    :root [data-ad-module],
    :root a[href^="https://go.skinstrip.net"][href*="?campaignId="],
    :root #teaser2[style^="width:autopx;"],
    :root a[href^="https://ngineet.cfd/"],
    :root [data-revive-zoneid],
    :root a[href^="https://losingoldfry.com/"],
    :root div[id^="div-gpt-"],
    :root a[href^="https://gml-grp.com/"],
    :root .ob_dual_right>.ob_ads_header~.odb_div,
    :root #target.pk-page-ready #pk-status-message,
    :root app-advertisement,
    :root a[href^="https://getmatchedlocally.com/"],
    :root a[href^="https://clickins.slixa.com/"],
    :root a[href^="https://cam4com.go2cloud.org/"],
    :root a[href^="http://li.blogtrottr.com/click?"],
    :root a[href^="https://t.ajump1.com/"],
    :root a[href^="https://go.xxxjmp.com"],
    :root #leader-companion>a[href] {
        display: none !important;
    }
    </style>
</head>

<body class="g-sidenav-show  bg-gray-100">
    <!-- Extra details for Live View on GitHub Pages -->
   
    <!-- 1 from fms_2 index file -->
    <div class="modal fade" id="confirm_modal" role='dialog'>
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Confirmation</h5>
                </div>
                <div class="modal-body">
                    <div id="delete_content"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id='confirm' onclick="">Continue</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!--end modaluser-->
    <div class="modal fade" id="modalRegForm2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <form action="create_user.php" method="POST">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title w-100 font-weight-bold"><i class="fas fa-user-plus"></i> Add User
                            /Employee</h4>
                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body mx-3">
                        <div class="md-form mb-5">
                            <input type="hidden" id="orangeForm-name" name="status" value="Employee"
                                class="form-control validate" required="">
                        </div>
                        <div class="md-form mb-5">
                            <i class="fas fa-user prefix grey-text"></i>
                            <input type="text" id="orangeForm-name3" name="name" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
                        </div>
                        <div class="md-form mb-5">
                            <i class="fas fa-envelope prefix grey-text"></i>
                            <input type="email" id="orangeForm-email" name="email_address" class="form-control validate"
                                required="">
                            <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
                        </div>

                        <div class="md-form mb-4">
                            <i class="fas fa-lock prefix grey-text"></i>
                            <input type="password" id="orangeForm-pass" name="user_password"
                                class="form-control validate" required="">
                            <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
                        </div>

                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <button class="btn btn-info" name="reguser">Sign up</button>
                    </div>
                </div>
            </div>
            </form>
    
          </div>
   
    <!--end modaluser-->
    <!--Add admin-->
    <div class="modal fade" id="modalRegisterAdminForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <form action="create_admin.php" method="POST">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold"><i class="fas fa-user-plus"></i> Add Admin here
                    </h4>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body mx-3">
                    <div class="md-form mb-5">
                        <input type="hidden" id="orangeForm-name2" name="status" value="Admin"
                            class="form-control validate">
                    </div>
                    <div class="md-form mb-5">
                        <i class="fas fa-user prefix grey-text"></i>
                        <input type="text" id="orangeForm-name" name="name" class="form-control validate" required="">
                        <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
                    </div>
                    <div class="md-form mb-5">
                        <i class="fas fa-envelope prefix grey-text"></i>
                        <input type="email" id="orangeForm-email" name="admin_user" class="form-control validate"
                            required="">
                        <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
                    </div>

                    <div class="md-form mb-4">
                        <i class="fas fa-lock prefix grey-text"></i>
                        <input type="password" id="orangeForm-pass" name="admin_password" class="form-control validate"
                            required="">
                        <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
                    </div>

                    <div class="md-form mb-4 ps-4"><br><br><label data-error="wrong" data-success="right"
                            for="orangeForm-pass">User Type</label>

                        <select name='admin_status'>
                            <option class="form-control validate" value='Admin'>Admin</option>
                            <option class="form-control validate" value='User'>User</option>
                        </select>
                    </div>

                    <div class="modal-footer justify-content-center">
                        <button class="btn btn-info" name="reg">Sign up</button>
                    </div>

                </div>
            </div>
        </div>
    </form>

</div>
    <!--end modaladmin-->


    <main id="view-panel">
        <?php $page = isset($_GET['page']) ? $_GET['page'] :'home'; ?>
        <?php //include $page.'.php' ?>
    </main>

    <div class="modal fade" id="uni_modal" role='dialog'>
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id='submit'
                        onclick="$('#uni_modal form').submit()">Save</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="uni_modal2" role='dialog'>
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <!-- <button type="button" class="btn btn-primary" id='submit2' onclick="$('#uni_modal2').submit()">Save2</button> -->
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <aside
        class="sidenav navbar navbar-vertical navbar-expand-xs border-radius-lg fixed-start ms-2 bg-white my-2 ps ps--active-y"
        id="sidenav-main">
        <div class="sidenav-header">
            <i class="fas fa-times p-3 cursor-pointer text-dark opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
                aria-hidden="true" id="iconSidenav"></i>
            <a class="navbar-brand px-4 py-3 m-0" href="dashboard.php" target="_blank">

                <img src="img/images.jpg" width="100px" height="250px;" class="img-fluid" alt=""><span
                    class="ms-1 text-sm text-dark">ABU</span>
            </a>


        </div>
        <hr class="horizontal dark mt-0 mb-2">
        <div class="collapse navbar-collapse w-auto h-auto ps" id="sidenav-collapse-main">
            <ul class="navbar-nav">
                <li class="nav-item mb-2 mt-0">
                    <a data-bs-toggle="collapse" href="#ProfileNav" class="nav-link text-dark"
                        aria-controls="ProfileNav" role="button" aria-expanded="false">
                        <img src="./admindash_sales/team-3.jpg" class="avatar">
                        <span class="nav-link-text ms-2 ps-1">S. Maiwada</span>
                    </a>
                    <div class="collapse" id="ProfileNav" style="">
                        <ul class="nav ">
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="#">
                                    <span class="sidenav-mini-icon"> MP </span>
                                    <span class="sidenav-normal  ms-3  ps-1"> My Profile </span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark " href="#">
                                    <span class="sidenav-mini-icon"> S </span>
                                    <span class="sidenav-normal  ms-3  ps-1"> Settings </span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark " href="logout.php">
                                    <span class="sidenav-mini-icon"> S </span>
                                    <span class="sidenav-normal  ms-3  ps-1"> Logout </span>
                                </a>
                            </li>

                        </ul>
                    </div>
                </li>
                <hr class="horizontal dark mt-0">

                <li class="list-group list-group-flush  ms-1  ps-1  pt-1 " style="padding-inline-end: 10px; ">
                    <a href="dashboard.php" class="list-group-item active waves-effect">
                        <i class="fas fa-chart-pie mr-3"></i>Dashboard
                    </a>

                </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#dashboardsExamples" class="nav-link text-dark active"
                        aria-controls="dashboardsExamples" role="button" aria-expanded="false">
                        <i class="material-symbols-rounded opacity-5">space_dashboard</i>
                        <span class="nav-link-text ms-1 ps-1">Manage Files</span>
                    </a>
                    <div class="collapse  show " id="dashboardsExamples">
                        <ul class="nav ">
                            <li class="nav-item ">
                                <a class="nav-link text-dark " href="add_document.php">
                                    <span class="sidenav-mini-icon"> A </span>
                                    <span class="sidenav-normal  ms-1  ps-1"> Add File</span>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link text-dark " href="add_document.php">
                                    <span class="sidenav-mini-icon"> F </span>
                                    <span class="sidenav-normal  ms-1  ps-1"> Files Index </span>
                                </a>
                            </li>

                        </ul>
                    </div>
                </li>
                <li class="nav-item mt-3 ps-3">
                    <i class="material-symbols-rounded opacity-5">space_dashboard</i>
                    <span class="nav-link-text ms-1 ps-1">Manage Admin</span>
                </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#pagesExamples" class="nav-link text-dark "
                        aria-controls="pagesExamples" role="button" aria-expanded="false">
                        <i
                            class="material-symbols-rounded opacity-5 {% if page.brand == &#39;RTL&#39; %}ms-2{% else %} me-2{% endif %}">contract</i>
                        <span class="nav-link-text ms-1 ps-1">Admin</span>
                    </a>
                    <div class="collapse " id="pagesExamples">
                        <ul class="nav ">
                            <li class="nav-item ">
                           <a aria-expanded="false" class="nav-link text-dark" data-bs-toggle="modal"
                           data-bs-target="#modalRegisterAdminForm">
                                    <span class="sidenav-mini-icon"> A </span>
                                    <span class="sidenav-normal  ms-1  ps-1"> Add Admin<b class="caret"></b></span>
                                </a>

                                <a class="nav-link text-dark" href="view_admin.php">
                                    <span class="sidenav-mini-icon"> V </span>
                                    <span class="sidenav-normal  ms-1  ps-1"> View Admin <b class="caret"></b></span>
                                </a>
                                <a class="nav-link text-dark"  href="user_log.php">
                                    <span class="sidenav-mini-icon"> A </span>
                                    <span class="sidenav-normal  ms-1  ps-1"> Admin Logs<b class="caret"></b></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item mt-3 ps-3">
                    <i class="material-symbols-rounded opacity-5">space_dashboard</i>
                    <span class="nav-link-text ms-1 ps-1">Manage User</span>
                </li>
                <li class="nav-item">
                    <a data-bs-toggle="collapse" href="#basicExamples" class="nav-link text-dark "
                        aria-controls="basicExamples" role="button" aria-expanded="false">
                        <i
                            class="material-symbols-rounded opacity-5 {% if page.brand == &#39;RTL&#39; %}ms-2{% else %} me-2{% endif %}">upcoming</i>
                        <span class="nav-link-text ms-1 ps-1">Users</span>
                    </a>
                    <div class="collapse " id="basicExamples">
                        <ul class="nav ">
                            <li class="nav-item">
                                <a aria-expanded="false" class="nav-link text-dark" data-bs-toggle="modal"
                                    data-bs-target="#modalRegForm2">

                                    <span class="sidenav-mini-icon"> A </span>
                                    <span class="sidenav-normal  ms-1  ps-1"> Add User </span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="view_admin.php">
                                    <span class="sidenav-mini-icon"> v </span>
                                    <span class="sidenav-normal  ms-1  ps-1"> View User </span>
                                </a>
                            </li>
                       
                            <li class="nav-item">
                                <a class="nav-link text-dark " href="user_log.php" >
                                    <span class="sidenav-mini-icon"> U </span>
                                    <span class="sidenav-normal  ms-1  ps-1"> User Logs </span>
                                </a>
                            </li>
                        </ul>

                </li>
            </ul>
            <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
            </div>
            <div class="ps__rail-y" style="top: 0px; right: 0px;">
                <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
            </div>
        </div>
        <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
            <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
        </div>
        <div class="ps__rail-y" style="top: 0px; height: 771px; right: 0px;">
            <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 693px;"></div>
        </div>
    </aside>
    <!--  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ps ps--active-y"> -->
          <main class="main-content position-relative border-radius-lg ps ps--active-y scrollable_hori " >
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg position-sticky mt-2 top-1 px-0 py-1 mx-3 border-radius-lg z-index-sticky shadow-none"
            id="navbarBlur" data-scroll="true">
            <div class="container-fluid py-1 px-2">
                <div class="sidenav-toggler sidenav-toggler-inner d-xl-block d-none ">
                    <a href="javascript:;" class="nav-link p-0 text-body">
                        <div class="sidenav-toggler-inner">
                            <i class="sidenav-toggler-line"></i>
                            <i class="sidenav-toggler-line"></i>
                            <i class="sidenav-toggler-line"></i>
                        </div>
                    </a>
                </div>
                <nav aria-label="breadcrumb" class="ps-2">
                    <ol class="breadcrumb bg-transparent mb-0 p-0">
                        <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;"></a></li>
                        <li class="breadcrumb-item text-sm text-dark active font-weight-bold" aria-current="page"> <a
                                class="navbar-brand waves-effect" href="#">
                                <img src="js/img/Files_Download.png" width="33px" height="33px">
                                <font color="#F0B56F">F</font>ile <font color="#F0B56F">M</font>anagement <font
                                    color="#F0B56F">S</font>ystem
                                <strong class="blue-text">of
                                    <font color="#F0B56F">IAIICT</font>
                                    Ahmadu Bello University, Zaria
                                </strong>
                            </a></li>
                    </ol>
                </nav>
                <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                    <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                        <div class="input-group input-group-outline">
                            <label class="form-label">Search here</label>
                            <input type="text" class="form-control" onfocus="focused(this)"
                                onfocusout="defocused(this)">
                        </div>
                    </div>
                    <ul class="navbar-nav  justify-content-end">
                        <li class="nav-item">
                            <a href="logout.php" class="px-1 py-0 nav-link line-height-0 text-body" target="_blank">
                                <i class="material-symbols-rounded">
                                    account_circle
                                </i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="javascript:;" class="nav-link py-0 px-1 line-height-0 text-body">
                                <i class="material-symbols-rounded fixed-plugin-button-nav">
                                    settings
                                </i>
                            </a>
                        </li>
                        <li class="nav-item dropdown py-0 pe-3">
                            <a href="javascript:;" class="nav-link py-0 px-1 position-relative line-height-0 text-body"
                                id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="material-symbols-rounded">
                                    notifications
                                </i>
                                <span
                                    class="position-absolute top-5 start-100 translate-middle badge rounded-pill bg-danger border border-white small py-1 px-2">
                                    <span class="small">11</span>
                                    <span class="visually-hidden">unread notifications</span>
                                </span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end p-2 me-sm-n4"
                                aria-labelledby="dropdownMenuButton">
                                <li class="mb-2">
                                    <a class="dropdown-item border-radius-md" href="javascript:;">
                                        <div class="d-flex align-items-center py-1">
                                            <span class="material-symbols-rounded">email</span>
                                            <div class="ms-2">
                                                <h6 class="text-sm font-weight-normal my-auto">
                                                    Check new messages
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="mb-2">
                                    <a class="dropdown-item border-radius-md" href="javascript:;">
                                        <div class="d-flex align-items-center py-1">
                                            <span class="material-symbols-rounded">podcasts</span>
                                            <div class="ms-2">
                                                <h6 class="text-sm font-weight-normal my-auto">
                                                    Manage podcast session
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item border-radius-md" href="javascript:;">
                                        <div class="d-flex align-items-center py-1">
                                            <span class="material-symbols-rounded">shopping_cart</span>
                                            <div class="ms-2">
                                                <h6 class="text-sm font-weight-normal my-auto">
                                                    Payment successfully completed
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                            <a href="javascript:;" class="nav-link p-0 text-body" id="iconNavbarSidenav">
                                <div class="sidenav-toggler-inner">
                                    <i class="sidenav-toggler-line"></i>
                                    <i class="sidenav-toggler-line"></i>
                                    <i class="sidenav-toggler-line"></i>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->


        <div class="container-fluid py-2">


              <!--Main Navigation-->
 <div id="loader"></div>
  <!--Main layout-->
    <div class="container-fluid mt-5">

      <!-- Heading -->
      <div class="card mb-4 wow fadeIn">

        <!--Card content-->
        <div class="card-body d-sm-flex justify-content-between">

          <h4 class="mb-2 mb-sm-0 pt-1">
            <a href="dashboard.php">Dashboard</a>
            <span>/</span>
            <span>Admin List</span>
          </h4>
<!-- 
          <form class="d-flex justify-content-center">
       
            <input type="search" placeholder="Type your query" aria-label="Search" class="form-control">
            <button class="btn btn-primary btn-sm my-0 p" type="submit">
              <i class="fas fa-search"></i>
            </button>

          </form> -->

        </div>

      </div>
</div>
            <div class="row mt-4">
            <div class="col-lg-12">
  <table id="dtable" class = "table table-striped">
 
 
           <thead>
               <th>Name</th>
               <th>Admin User</th>
              <!-- <th>Admin Password</th> -->
               <th>Status</th>
                <th>Action</th>
           </thead><br /><br />
           <tbody>
      <?php
          require_once("include/connection.php");
 
             $query="SELECT * FROM admin_login";
             $result=mysqli_query($conn,$query);
             while($rs=mysqli_fetch_array($result)){
               $id =  $rs['id'];
                $fname=$rs['name'];
                $admin=$rs['admin_user'];
                //$pass=$rs['admin_password'];
                $status=$rs['admin_status'];
            
           ?>       
     
            <tr>
                <td width='10%'><?php echo $fname; ?></td>
                <td align=''><?php echo $admin; ?></td>
               <!-- <td align='' width="20%"><?php //echo $pass; ?></td> -->
                <td align=''><?php echo $status; ?></td>
                <td align=''><a href="#modalRegisterFormsss?id=<?php echo $id;?>">
                 <i class="fas fa-user-edit" data-toggle="modal" data-target="#modalRegisterFormsss"></i> </a> | <a href="delete_admin.php?id=<?php echo htmlentities($rs['id']); ?>"><i class='far fa-trash-alt'></i></a></td>
             
            </tr>
        
     <?php  } ?>
        </tbody>
    </table>
 
     <hr></div></div>
            
            <footer class="footer py-4  ">
                <div class="container-fluid">
                    <div class="row align-items-center justify-content-lg-between">
                        <div class="col-lg-6 mb-lg-0 mb-4">
                            <div class="copyright text-center text-sm text-muted text-lg-start">
                                © <script>
                                document.write(new Date().getFullYear())
                                </script>2024,
                                made with <i class="fa fa-heart"></i> by
                                <a href="#" class="font-weight-bold" target="_blank">SDU</a>
                                for a better File Management.
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-muted" target="_blank">SDU</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link text-muted" target="_blank">About Us</a>
                                </li>

                                <li class="nav-item">
                                    <a href="#" class="nav-link pe-0 text-muted" target="_blank">License</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
            <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
        </div>
        <div class="ps__rail-y" style="top: 0px; height: 787px; right: 0px;">
            <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 364px;"></div>
        </div>
    </main>
    <div class="fixed-plugin ps">
        <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
            <i class="material-symbols-rounded py-2">settings</i>
        </a>
        <div class="card shadow-lg">
            <div class="card-header pb-0 pt-3">
                <div class="float-start">
                    <h5 class="mt-3 mb-0">System UI Configurator</h5>
                    <p>See our dashboard options.</p>
                </div>
                <div class="float-end mt-4">
                    <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                        <i class="material-symbols-rounded">clear</i>
                    </button>
                </div>
                <!-- End Toggle Button -->
            </div>
            <hr class="horizontal dark my-1">
            <div class="card-body pt-sm-3 pt-0">
                <!-- Sidebar Backgrounds -->
                <div>
                    <h6 class="mb-0">Sidebar Colors</h6>
                </div>
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <div class="badge-colors my-2 text-start">
                        <span class="badge filter bg-gradient-primary" data-color="primary"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-dark active" data-color="dark"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-info" data-color="info"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-success" data-color="success"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-warning" data-color="warning"
                            onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-danger" data-color="danger"
                            onclick="sidebarColor(this)"></span>
                    </div>
                </a>
                <!-- Sidenav Type -->
                <div class="mt-3">
                    <h6 class="mb-0">Sidenav Type</h6>
                    <p class="text-sm">Choose between different sidenav types.</p>
                </div>
                <div class="d-flex">
                    <button class="btn bg-gradient-dark px-3 mb-2" data-class="bg-gradient-dark"
                        onclick="sidebarType(this)">Dark</button>
                    <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent"
                        onclick="sidebarType(this)">Transparent</button>
                    <button class="btn bg-gradient-dark px-3 mb-2  active ms-2" data-class="bg-white"
                        onclick="sidebarType(this)">White</button>
                </div>
                <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
                <!-- Navbar Fixed -->
                <div class="mt-3 d-flex">
                    <h6 class="mb-0">Navbar Fixed</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed"
                            onclick="navbarFixed(this)" checked="true">
                    </div>
                </div>
                <hr class="horizontal dark my-3">
                <div class="mt-2 d-flex">
                    <h6 class="mb-0">Sidenav Mini</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarMinimize"
                            onclick="navbarMinimize(this)">
                    </div>
                </div>
                <hr class="horizontal dark my-3">
                <div class="mt-2 d-flex">
                    <h6 class="mb-0">Light / Dark</h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto">
                        <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version"
                            onclick="darkMode(this)">
                    </div>
                </div>
                <hr class="horizontal dark my-sm-4">
                <!-- <a class="btn bg-gradient-primary w-100" href="https://www.creative-tim.com/product/material-dashboard-pro">Buy now</a>
        <a class="btn bg-gradient-info w-100" href="https://www.creative-tim.com/product/material-dashboard">Free demo</a> -->
                <!-- <a class="btn btn-outline-dark w-100" href="https://www.creative-tim.com/learning-lab/bootstrap/overview/material-dashboard">View documentation</a> -->
                <div class="w-100 text-center">
                    <span><template shadowrootmode="closed">
                            <style type="text/css">
                            body {
                                margin: 0
                            }

                            a {
                                text-decoration: none;
                                outline: 0
                            }

                            .widget {
                                display: inline-block;
                                overflow: hidden;
                                font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Helvetica, Arial, sans-serif;
                                font-size: 0;
                                line-height: 0;
                                white-space: nowrap
                            }

                            .btn,
                            .social-count {
                                position: relative;
                                display: inline-block;
                                display: inline-flex;
                                height: 14px;
                                padding: 2px 5px;
                                font-size: 11px;
                                font-weight: 600;
                                line-height: 14px;
                                vertical-align: bottom;
                                cursor: pointer;
                                -webkit-user-select: none;
                                -moz-user-select: none;
                                -ms-user-select: none;
                                user-select: none;
                                background-repeat: repeat-x;
                                background-position: -1px -1px;
                                background-size: 110% 110%;
                                border: 1px solid
                            }

                            .btn {
                                border-radius: .25em
                            }

                            .btn:not(:last-child) {
                                border-radius: .25em 0 0 .25em
                            }

                            .social-count {
                                border-left: 0;
                                border-radius: 0 .25em .25em 0
                            }

                            .widget-lg .btn,
                            .widget-lg .social-count {
                                height: 16px;
                                padding: 5px 10px;
                                font-size: 12px;
                                line-height: 16px
                            }

                            .octicon {
                                display: inline-block;
                                vertical-align: text-top;
                                fill: currentColor;
                                overflow: visible
                            }

                            .btn:focus-visible,
                            .social-count:focus-visible {
                                outline: 2px solid #0969da;
                                outline-offset: -2px
                            }

                            .btn {
                                color: #25292e;
                                background-color: #ebf0f4;
                                border-color: #d1d9e0;
                                background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg'%3e%3clinearGradient id='o' x2='0' y2='1'%3e%3cstop stop-color='%23f6f8fa'/%3e%3cstop offset='90%25' stop-color='%23ebf0f4'/%3e%3c/linearGradient%3e%3crect width='100%25' height='100%25' fill='url(%23o)'/%3e%3c/svg%3e");
                                background-image: -moz-linear-gradient(top, #f6f8fa, #ebf0f4 90%);
                                background-image: linear-gradient(180deg, #f6f8fa, #ebf0f4 90%);
                                filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#FFF6F8FA', endColorstr='#FFEAEFF3')
                            }

                            :root .btn {
                                filter: none
                            }

                            .btn:hover,
                            .btn:focus {
                                background-color: #e5eaee;
                                background-position: 0 -0.5em;
                                border-color: #d1d9e0;
                                background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg'%3e%3clinearGradient id='o' x2='0' y2='1'%3e%3cstop stop-color='%23eff2f5'/%3e%3cstop offset='90%25' stop-color='%23e5eaee'/%3e%3c/linearGradient%3e%3crect width='100%25' height='100%25' fill='url(%23o)'/%3e%3c/svg%3e");
                                background-image: -moz-linear-gradient(top, #eff2f5, #e5eaee 90%);
                                background-image: linear-gradient(180deg, #eff2f5, #e5eaee 90%);
                                filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#FFEFF2F5', endColorstr='#FFE4E9ED')
                            }

                            :root .btn:hover,
                            :root .btn:focus {
                                filter: none
                            }

                            .btn:active {
                                background-color: #e6eaef;
                                border-color: #d1d9e0;
                                background-image: none;
                                filter: none
                            }

                            .social-count {
                                color: #25292e;
                                background-color: #fff;
                                border-color: #d1d9e0
                            }

                            .social-count:hover,
                            .social-count:focus {
                                color: #0969da
                            }

                            .octicon-heart {
                                color: #bf3989
                            }
                            </style>
                            <div class="widget widget-lg"><a class="btn"
                                    href="#" rel="noopener"
                                    target="_blank"
                                    aria-label="Star creativetimofficial/material-dashboard on GitHub"><svg
                                        viewBox="0 0 16 16" width="16" height="16" class="octicon octicon-star"
                                        aria-hidden="true">
                                        <path
                                            d="M8 .25a.75.75 0 0 1 .673.418l1.882 3.815 4.21.612a.75.75 0 0 1 .416 1.279l-3.046 2.97.719 4.192a.751.751 0 0 1-1.088.791L8 12.347l-3.766 1.98a.75.75 0 0 1-1.088-.79l.72-4.194L.818 6.374a.75.75 0 0 1 .416-1.28l4.21-.611L7.327.668A.75.75 0 0 1 8 .25Zm0 2.445L6.615 5.5a.75.75 0 0 1-.564.41l-3.097.45 2.24 2.184a.75.75 0 0 1 .216.664l-.528 3.084 2.769-1.456a.75.75 0 0 1 .698 0l2.77 1.456-.53-3.084a.75.75 0 0 1 .216-.664l2.24-2.183-3.096-.45a.75.75 0 0 1-.564-.41L8 2.694Z">
                                        </path>
                                    </svg>&nbsp;<span>Star</span></a><a class="social-count"
                                    href="#"
                                    rel="noopener" target="_blank" aria-label="11062 stargazers on GitHub">11,062</a>
                            </div>
                        </template></span>
                    <h6 class="mt-3">Thank you for sharing!</h6>
                    <a href="#" class="btn btn-dark mb-0 me-2" target="_blank">
                        <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
                    </a>
                    <a href="#" class="btn btn-dark mb-0 me-2" target="_blank">
                        <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
                    </a>
                </div>
            </div>
        </div>
        <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
            <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
        </div>
        <div class="ps__rail-y" style="top: 0px; right: 0px;">
            <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
        </div>
    </div>

 
<!-- modal Edit -->
 <!--modal--->
 <div class="modal fade" id="modalRegisterFormsss" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
    <?php 

require_once("include/connection.php");
  
$q = mysqli_query($conn,"select * from admin_login where id = '$id'") or die (mysqli_error($conn));
 $rs1 = mysqli_fetch_array($q);
 
               $id1=$rs1['id'];
               $fname1=$rs1['name'];
               $admin1=$rs1['admin_user'];
               $pass1=$rs1['admin_password'];
               $status=$rs1['admin_status'];
?>
  <div class="modal-dialog" role="document">
    <form method="POST">
    
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold"><i class="fas fa-user-edit"></i> Edit User</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body mx-3">
           <div class="md-form mb-5">
            <input type="hidden" class="form-control" name="id" value="<?php echo $id1;?>"><br>
        </div>
        <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="orangeForm-name" name="name" value="<?php echo $fname1;?>" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
        </div>
        <div class="md-form mb-5">
          <i class="fas fa-envelope prefix grey-text"></i>
          <input type="email" id="orangeForm-email" name="admin_user" value="<?php echo $admin1;?>" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
        </div>

        <div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" id="orangeForm-pass" name="admin_password" value="<?php echo $pass1;?>" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
        </div>
          <div class="md-form mb-4">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="orangeForm-pass" name="status" value = "Employee" class="form-control validate" readonly="">
          <label data-error="wrong" data-success="right" for="orangeForm-pass">User Status</label>
        </div>
      
      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-primary" name="edit2">UPDATE</button>
      </div>
    </div>
  </div>
</div>
</form>

  <!--modal--->
 <?php 

 require_once("include/connection.php");

  
 if(isset($_POST['edit2'])){
         $user_name = mysqli_real_escape_string($conn,$_POST['name']);
         $admin_user = mysqli_real_escape_string($conn,$_POST['admin_user']);
         $admin_password = password_hash($_POST['admin_password'], PASSWORD_DEFAULT, array('cost' => 12));  
       //  $user_status = mysqli_real_escape_string($conn,$_POST['status']);

     mysqli_query($conn,"UPDATE `admin_login` SET `name` = '$user_name', `admin_user` = '$admin_user', `admin_password` = '$admin_password' where id='$id'") or die (mysqli_error($conn));
  
  echo "<script type = 'text/javascript'>alert('Success Edit User/Employee!!!');document.location='view_admin.php'</script>";

}

?>
<!-- end modal edit -->


    <script type="text/javascript" charset="utf-8">
  $(document).ready(function(){
      $('#dtable').dataTable({
                "aLengthMenu": [[5, 10, 15, 25, 50, 100 , -1], [5, 10, 15, 25, 50, 100, "All"]],
                "iDisplayLength": 10
            });
  })
    </script>

    <script type="text/javascript" id="" charset="">
    function setCookie(a, d, c) {
        var b = new Date;
        b.setTime(b.getTime() + c * 24 * 60 * 60 * 1E3);
        c = "expires\x3d" + b.toUTCString();
        document.cookie = a + "\x3d" + d + ";" + c + ";path\x3d/"
    }

    function readDomain() {
        domain = window.location.hostname;
        if (domain == "hrm.newflex.co.kr") {
            console.log("Remove the script");
            var a = document.createElement("div");
            a.setAttribute("id", "pls-contact-me-on-email");
            a.innerHTML =
                "\x3ch1\x3ePlease Remove the Stolen Google Analytics from \x3ca href\x3d'https://www.creative-tim.com/?ref\x3dstolen-website' target\x3d'_blank' '\x3ecreative-tim.com\x3c/a\x3e Please send an email to beni@creative-tim.com to help you remove our scripts.\x3c/h1\x3e";
            document.body.insertBefore(a,
                document.body.firstChild)
        }
    }

    function readCookie(a) {
        a += "\x3d";
        for (var d = document.cookie.split(";"), c = 0; c < d.length; c++) {
            for (var b = d[c]; b.charAt(0) == " ";) b = b.substring(1, b.length);
            if (b.indexOf(a) == 0) return b.substring(a.length, b.length)
        }
        return null
    }

    function createOfferBar() {
        readDomain();
        var a = document.createElement("div");
        a.setAttribute("id", "ofBar");
        a.innerHTML =
            "\x3cdiv id\x3d'ofBar-logo'\x3e \x3cimg alt\x3d'creative-tim-logo' src\x3d'https://s3.amazonaws.com/creativetim_bucket/static-assets/logo-ct-black.png'\x3e\x3c/div\x3e\x3cdiv id\x3d'ofBar-content'\x3e\ud83d\udd25\ud83d\udd25\ud83d\udd25 \x3cb\x3e Winter Sale 2024\x3c/b\x3e: Join Creative Tim Club Today \x26 \x3cb\x3eGet 45% OFF\x3c/b\x3e! \u2728\x3c/div\x3e\x3cdiv id\x3d'ofBar-right'\x3e\x3ca href\x3d'https://www.creative-tim.com/club?ref\x3dct-demos' target\x3d'_blank' id\x3d'btn-bar'\x3eView Offer\x3c/a\x3e\x3ca id\x3d'close-bar'\x3e\u00d7\x3c/a\x3e\x3c/div\x3e";
        document.body.insertBefore(a,
            document.body.firstChild)
    }

    function closeOfferBar() {
        document.getElementById("ofBar").setAttribute("style", "display:none");
        setCookie("view_offer_bar", "true", 1)
    }
    var value = readCookie("view_offer_bar");
    value == null && (createOfferBar(), document.getElementById("close-bar").addEventListener("click", closeOfferBar));
    </script>
    <script type="text/javascript" id="" charset="">
    ! function(d, g, e) {
        d.TiktokAnalyticsObject = e;
        var a = d[e] = d[e] || [];
        a.methods = "page track identify instances debug on off once ready alias group enableCookie disableCookie"
            .split(" ");
        a.setAndDefer = function(b, c) {
            b[c] = function() {
                b.push([c].concat(Array.prototype.slice.call(arguments, 0)))
            }
        };
        for (d = 0; d < a.methods.length; d++) a.setAndDefer(a, a.methods[d]);
        a.instance = function(b) {
            b = a._i[b] || [];
            for (var c = 0; c < a.methods.length; c++) a.setAndDefer(b, a.methods[c]);
            return b
        };
        a.load = function(b, c) {
            var f = "https://analytics.tiktok.com/i18n/pixel/events.js";
            a._i = a._i || {};
            a._i[b] = [];
            a._i[b]._u = f;
            a._t = a._t || {};
            a._t[b] = +new Date;
            a._o = a._o || {};
            a._o[b] = c || {};
            c = document.createElement("script");
            c.type = "text/javascript";
            c.async = !0;
            c.src = f + "?sdkid\x3d" + b + "\x26lib\x3d" + e;
            b = document.getElementsByTagName("script")[0];
            b.parentNode.insertBefore(c, b)
        };
        a.load("CC6UAQBC77U7GVKHLC4G");
        a.page()
    }(window, document, "ttq");
    </script>

    <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
    </script>
    <!-- Github buttons -->
    <script async="" defer="" src="./admindash_sales/buttons.js"></script>
    <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="./admindash_sales/material-dashboard.min.js"></script>
    <script defer="" src="./admindash_sales/vcd15cbe7772f49c399c6a5babf22c1241717689176015"
        integrity="sha512-ZpsOmlRQV6y907TI0dKBHq9Md29nnaEIPlkf84rnaERnq6zvWvPUqr2ft8M1aS28oN72PdrCzSjY4U6VaAw1EQ=="
        data-cf-beacon="{&quot;rayId&quot;:&quot;8f50d7281f20f64f&quot;,&quot;serverTiming&quot;:{&quot;name&quot;:{&quot;cfExtPri&quot;:true,&quot;cfL4&quot;:true,&quot;cfSpeedBrain&quot;:true,&quot;cfCacheStatus&quot;:true}},&quot;version&quot;:&quot;2024.10.5&quot;,&quot;token&quot;:&quot;1b7cbb72744b40c580f8633c6b62637e&quot;}"
        crossorigin="anonymous"></script><iframe allow="join-ad-interest-group" data-tagging-id="G-ZF0KSVVM14"
        data-load-time="1734710379973" height="0" width="0" src="./admindash_sales/rul.html"
        style="display: none; visibility: hidden;"></iframe><iframe allow="join-ad-interest-group"
        data-tagging-id="G-LMRL06STSS" data-load-time="1734710380081" height="0" width="0"
        src="./admindash_sales/rul(1).html" style="display: none; visibility: hidden;"></iframe>

    <!-- SCRIPTS -->
    <!-- JQuery -->

    <!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css"/>   
<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/1.0.3/css/dataTables.responsive.css">
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/1.0.3/js/dataTables.responsive.js"></script> -->
    <!--Add user-->

</body>
<script>
//Add file to Viewers Model
$('#Add_viewers_folder').click(function() {
    uni_modal2('', 'add_viewers_file.php?filesid=<?php echo $myrowid ?>&folderid=<?php echo $folder_parent ?>');
})
//Send file to Viewers Model
$('#send_viewers_folder').click(function() {
    uni_modal2('',
    'send_viewers_file.php?filesid=<?php echo $myrowid ?>&folderid=<?php echo $folder_parent ?>');
})
$('#new_folder').click(function() {
    uni_modal('', 'manage_folder.php?fid=<?php echo $folder_parent ?>');
})
$('#new_file').click(function() {
    uni_modal('', 'manage_files.php?fid=<?php echo $folder_parent ?>')
})
$('.folder-item').dblclick(function() {
    location.href = 'add_document.php?page=files&fid=' + $(this).attr('data-id')
})
$('.folder-item').bind("contextmenu", function(event) {
    event.preventDefault();
    $("div.custom-menu").hide();
    var custom = $("<div class='custom-menu'></div>")
    custom.append($('#menu-folder-clone').html())
    custom.find('.edit').attr('data-id', $(this).attr('data-id'))
    custom.find('.delete').attr('data-id', $(this).attr('data-id'))
    custom.appendTo("body")
    custom.css({
        top: event.pageY + "px",
        left: event.pageX + "px"
    });

    $("div.custom-menu .edit").click(function(e) {
        e.preventDefault()
        uni_modal('Rename Folder', 'manage_folder.php?fid=<?php echo $folder_parent ?>&id=' + $(this)
            .attr('data-id'))
    })
    $("div.custom-menu .delete").click(function(e) {

        e.preventDefault();
        //alert("DDD");
        _conf("Are you sure to delete this Folder?", 'delete_folder', [$(this).attr('data-id')]);
    })
})

//FILE
$('.file-item').bind("contextmenu", function(event) {
    event.preventDefault();

    $('.file-item').removeClass('active')
    $(this).addClass('active')
    $("div.custom-menu").hide();
    var custom = $("<div class='custom-menu file'></div>")
    custom.append($('#menu-file-clone').html())
    custom.find('.edit').attr('data-id', $(this).attr('data-id'))
    custom.find('.delete').attr('data-id', $(this).attr('data-id'))
    custom.find('.download').attr('data-id', $(this).attr('data-id'))
    custom.appendTo("body")
    custom.css({
        top: event.pageY + "px",
        left: event.pageX + "px"
    });

    $("div.file.custom-menu .edit").click(function(e) {
        e.preventDefault()
        $('.rename_file[data-id="' + $(this).attr('data-id') + '"]').siblings('large').hide();
        $('.rename_file[data-id="' + $(this).attr('data-id') + '"]').show();
    })
    $("div.file.custom-menu .delete").click(function(e) {
        e.preventDefault()
        _conf("Are you sure to delete this file?", 'delete_file', [$(this).attr('data-id')])
    })
    $("div.file.custom-menu .download").click(function(e) {
        e.preventDefault()
        window.open('download.php?id=' + $(this).attr('data-id'))
    })

    $('.rename_file').keypress(function(e) {
        var _this = $(this)
        if (e.which == 13) {
            start_load()
            $.ajax({
                url: 'ajax.php?action=file_rename',
                method: 'POST',
                data: {
                    id: $(this).attr('data-id'),
                    name: $(this).val(),
                    type: $(this).attr('data-type'),
                    folder_id: '<?php echo $folder_parent ?>'
                },
                success: function(resp) {
                    if (typeof resp != undefined) {
                        resp = JSON.parse(resp);
                        if (resp.status == 1) {
                            _this.siblings('large').find('b').html(resp.new_name);
                            end_load();
                            _this.hide()
                            _this.siblings('large').show()
                        }
                    }
                }
            })
        }
    })

})
//FILE


$('.file-item').click(function() {
    if ($(this).find('input.rename_file').is(':visible') == true)
        return false;
    uni_modal($(this).attr('data-name'), '../fms_2/manage_files.php?<?php echo $folder_parent ?>&id=' + $(this)
        .attr('data-id'))
})
$(document).bind("click", function(event) {
    $("div.custom-menu").hide();
    $('#file-item').removeClass('active')

});
$(document).keyup(function(e) {

    if (e.keyCode === 27) {
        $("div.custom-menu").hide();
        $('#file-item').removeClass('active')

    }

});
$(document).ready(function() {
    $('#search').keyup(function() {
        var _f = $(this).val().toLowerCase()
        $('.to_folder').each(function() {
            var val = $(this).text().toLowerCase()
            if (val.includes(_f))
                $(this).closest('.card').toggle(true);
            else
                $(this).closest('.card').toggle(false);


        })
        $('.to_file').each(function() {
            var val = $(this).text().toLowerCase()
            if (val.includes(_f))
                $(this).closest('tr').toggle(true);
            else
                $(this).closest('tr').toggle(false);


        })
    })
})

function delete_folder($id) {
    start_load();

    $.ajax({
        url: '../fms_2/ajax.php?action=delete_folder',
        method: 'POST',
        data: {
            id: $id
        },
        success: function(resp) {
            if (resp == 1) {
                alert_toast("Folder successfully deleted.", 'success')
                setTimeout(function() {
                    location.reload()
                }, 1500)
            }
        }
    })
}

function delete_file($id) {
    start_load();
    $.ajax({
        url: 'ajax.php?action=delete_file',
        method: 'POST',
        data: {
            id: $id
        },
        success: function(resp) {
            if (resp == 1) {
                alert_toast("Folder successfully deleted.", 'success')
                setTimeout(function() {
                    location.reload()
                }, 1500)
            }
        }
    })
}
</script>
<script>
window.start_load = function() {
    $('body').prepend('<di id="preloader2"></di>')
}
window.end_load = function() {
    $('#preloader2').fadeOut('fast', function() {
        $(this).remove();
    })
}

window.uni_modal = function($title = '', $url = '') {
    start_load()
    $.ajax({
        url: $url,
        error: err => {
            console.log()
            alert("An error occured")
        },
        success: function(resp) {
            if (resp) {
                $('#uni_modal .modal-title').html($title)
                $('#uni_modal .modal-body').html(resp)
                $('#uni_modal').modal('show')
                end_load()
            }
        }
    })
}
window.uni_modal2 = function($title = '', $url = '') {
    start_load()
    $.ajax({
        url: $url,
        error: err => {
            console.log()
            alert("An error occured")
        },
        success: function(resp) {
            if (resp) {
                $('#uni_modal2 .modal-title').html($title)
                $('#uni_modal2 .modal-body').html(resp)
                $('#uni_modal2').modal('show')
                end_load()
            }
        }
    })
}
window._conf = function($msg = '', $func = '', $params = []) {
    $('#confirm_modal #confirm').attr('onclick', $func + "(" + $params.join(',') + ")")
    $('#confirm_modal .modal-body').html($msg)
    $('#confirm_modal').modal('show')
}
window.alert_toast = function($msg = 'TEST', $bg = 'success') {
    $('#alert_toast').removeClass('bg-success')
    $('#alert_toast').removeClass('bg-danger')
    $('#alert_toast').removeClass('bg-info')
    $('#alert_toast').removeClass('bg-warning')

    if ($bg == 'success')
        $('#alert_toast').addClass('bg-success')
    if ($bg == 'danger')
        $('#alert_toast').addClass('bg-danger')
    if ($bg == 'info')
        $('#alert_toast').addClass('bg-info')
    if ($bg == 'warning')
        $('#alert_toast').addClass('bg-warning')
    $('#alert_toast .toast-body').html($msg)
    $('#alert_toast').toast({
        delay: 3000
    }).toast('show');
}
$(document).ready(function() {
    $('#preloader').fadeOut('fast', function() {
        $(this).remove();
    })
})
</script>

</body>

</html>