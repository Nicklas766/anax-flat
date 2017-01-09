<?php
/**
 * Config file for theme selector.
 *
 */
return [

    "separator" => "------------------------------------------------",

    "themes" => [

        "separator0" => "------------------------------------------------",

        "base"      => [
            "title"      => "Minimal style, only the plain base",
            "class"      => "",
            "stylesheets" => [
                "css/modules.min.css"
            ]
        ],

        "default"   => [
            "title"      => "Your own selected default theme",
            "class"      => "color",
            "stylesheets" => [
                "css/color.min.css"
            ]
        ],

        "separator1" => "------------------------------------------------",

        "light"     =>  [
            "title"      => "Very light theme, white, black and nuances of grey",
            "class"      => "light",
            "stylesheets" => "css/light.min.css"
        ],

        "color"     => [
            "title"      => "Enhance the light theme by adding a tiny bit of color",
            "class"      => "color",
            "stylesheets" => "css/color.min.css"
        ],

        "dark"      => [
            "title"      => "Dark background and light text",
            "class"      => "dark",
            "stylesheets" => "css/dark.min.css"
        ],

        "colorful"  => [
            "title"      => "Make a very colorful theme",
            "class"      => "colorful",
            "stylesheets" => "css/colorful.min.css"
        ],

        "typography" => [
            "title"      => "A theme where the typography really stands out",
            "class"      => "light",
            "stylesheets" => "css/typography1.min.css"
        ],

        "separator2" => "------------------------------------------------",

        "fun"       => [
            "title"      => "All fun, test and play, make it stand out!",
            "class"      => "fun",
            "stylesheets" => "css/fun.min.css"
        ],

        "separator3" => "------------------------------------------------",

        "djup"       => [
            "title"      => "Ett djupt tema",
            "class"      => "djup",
            "stylesheets" => "css/djup.min.css"
        ],

        "kontrast"       => [
            "title"      => "Ett kontrast tema",
            "class"      => "kontrast",
            "stylesheets" => "css/kontrast.min.css"
        ],

        "emphasis"       => [
            "title"      => "Ett emphasis tema",
            "class"      => "emphasis",
            "stylesheets" => "css/emphasis.min.css"
        ],

        "separator4" => "------------------------------------------------",

        "Ice tema"       => [
            "title"      => "Opacity, bakgrundsbild och lines.",
            "class"      => "element1",
            "stylesheets" => "css/element1.min.css"
        ],

        "DJ tema"       => [
            "title"      => "Struktur med bild, centrerad och bilder som designelement.",
            "class"      => "element2",
            "stylesheets" => "css/element2.min.css"
        ],

        "Fullt tema"       => [
            "title"      => "Hel bredd, gradients",
            "class"      => "element3",
            "stylesheets" => "css/element3.min.css"
        ],


    ]
];
