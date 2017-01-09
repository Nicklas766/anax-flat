<?php
/**
 * Config-file for Anax, theme related settings, return it all as array.
 *
 */
return [

    /**
     * Base view to start render page from.
     */
    "view" => [
        "template" => "default/index",

        "data" => [
            // General
            "htmlClass"     => ["anax-flat"],
            "bodyClass"     => [],
            "lang"          => "en",
            "charset"       => "utf-8",
            "title_append"  => " | Anax Flat",
            "favicon"       => "img/favicon/favicon_256x256.png",

            // Style and stylesheets
<<<<<<< HEAD:example/setup/01/anax-flat/config/theme.php
            //"stylesheets" => ["css/default.min.css"],
            //"stylesheets" => ["css/style.min.css"],
            "stylesheets" => [
                "css/style.min.css",
=======
            // "stylesheets" => ["css/default.min.css"],
            // "stylesheets" => ["css/style.min.css"],
            "stylesheets" => [
                "css/color.min.css",
>>>>>>> 49be8b6b908cb04ca7791e12da3b7a907dc0db43:config/theme.php
                "https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
            ],
            "styleInline" => null,

            // JavaScript
            //"javascripts" => [],
            "javascripts" => ["js/responsive-menu.js"],
        ],
    ],



    /**
     * Add default views to always include.
     */
    "views" => [
        [
            "region" => "header",
            "template" => "default/image",
            "data" => [
                "class" => "logo-1",
                "src" => "img/favicon/favicon_128x128.png",
                "alt" => "Logo",
            ],
            "sort" => 1
        ],
        [
            "region" => "header",
            "template" => "default/header",
            "data" => [
                "homeLink"      => "",
                "siteLogoText"  => "Anax Flat",
                "siteLogoTextIcon" => "img/favicon/favicon_40x40.png",
                "siteLogoTextIconAlt" => "Small logo",
                "siteLogo"      => null, //"img/anax.png",
                "siteLogoAlt"   => null, //"Anax Logo",
                "siteTitle"     => null, //"Anax PHP framework",
                "siteSlogan"    => null, //"Reusable modules for web development"
            ],
            "sort" => 2
        ],
<<<<<<< HEAD:example/setup/01/anax-flat/config/theme.php
=======

        [
            "region" => "profile",
            "template" => "default/navbar-max",
            "data" => [],
            "sort" => -1
        ],

>>>>>>> 49be8b6b908cb04ca7791e12da3b7a907dc0db43:config/theme.php
        [
            "region" => "navbar2",
            "template" => "default/navbar",
            "data" => [],
            "sort" => 1
        ],
        [
            "region" => "footer",
            "template" => "default/columns",
            "data" => [
                "class"  => "footer-column",
                "columns" => [
                    [
                        "contentRoute" => "block/byline",
                    ],
                    [
                        "contentRoute" => "block/footer-col-2",
                    ],
                    [
                        "contentRoute" => "block/footer-col-3",
                    ]
                ]
            ],
            "sort" => 1
        ],
        [
            "region" => "footer",
            "template" => "default/block",
            "data" => [
                "class" => "site-footer",
                "contentRoute" => "block/footer",
            ],
            "sort" => 2
        ],
    ],
];
