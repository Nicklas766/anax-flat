<?php
/**
 * Config-file for navigation bar.
 *
 */
return [

    // Name of this menu
    "navbarTop" => [
        // Use for styling the menu
        "wrapper" => null,
        "class" => "rm-default rm-desktop",

        // Here comes the menu structure
        "items" => [

            "report" => [
                "text"  => t("Report"),
                "url"   => $this->di->get("url")->create("report"),
                "title" => t("Reports from kmom assignments"),
                "mark-if-parent" => true,
            ],

            "about" => [
                "text"  => t("About"),
                "url"   => $this->di->get("url")->create("about"),
                "title" => t("About this website")
            ],

            "grid" => [
                "text"  => t("Grid"),
                "url"   => $this->di->get("url")->create("grid"),
                "title" => t("grid this website")
            ],

            "typography" => [
                "text"  => t("Typography"),
                "url"   => $this->di->get("url")->create("typography"),
                "title" => t("typgraphy this website")
            ],

            "analysis" => [
                "text"  => t("Analysis"),
                "url"   => $this->di->get("url")->create("analysis"),
                "title" => t("Analysis this website")
            ],


            "blogg" => [
                "text"  => t("Blogg"),
                "url"   => $this->di->get("url")->create("blogg"),
                "title" => t("blogg")
            ],

            "images" => [
                "text"  => t("Images"),
                "url"   => $this->di->get("url")->create("images"),
                "title" => t("images")
            ],

            "Themes" => [
                           "text"  =>"<i class=\"fa fa-book\"></i> Theme",
                           "url"   => $this->di->get("url")->create("themeMenu"),
                           "title" => "Delta i communityn",
                           "submenu" => [
                               "items" => [
                                   "theme"  => [
                                       "text"  => "Theme",
                                       "url"   => $this->di->get("url")->create("theme"),
                                       "title" => "Färgschema",
                                   ],
                                   "design-principle"  => [
                                       "text"  => "Designprinciper",
                                       "url"   => $this->di->get("url")->create("design-principle"),
                                       "title" => "Designprinciper",
                                   ],
                                   "design-element"  => [
                                       "text"  => "Designelements",
                                       "url"   => $this->di->get("url")->create("design-element"),
                                       "title" => "Designelements",
                                   ],
                               ],
                           ],
                       ],



        ],
    ],






    // Used as menu together with responsive menu
    // Name of this menu
    "navbarMax" => [
        // Use for styling the menu
        "id" => "rm-menu",
        "wrapper" => null,
        "class" => "rm-default rm-mobile",

        // Here comes the menu structure
        "items" => [

            "report" => [
                "text"  => t("Report"),
                "url"   => $this->di->get("url")->create("report"),
                "title" => t("Reports from kmom assignments"),
                "mark-if-parent" => true,
            ],

            "about" => [
                "text"  => t("About"),
                "url"   => $this->di->get("url")->create("about"),
                "title" => t("About this website")
            ],

            "about2" => [
                "text"  => t("test"),
                "url"   => $this->di->get("url")->create("test"),
                "title" => t("test this website")
            ],

            "Grid" => [
                "text"  => t("grid"),
                "url"   => $this->di->get("url")->create("grid"),
                "title" => t("Grid this website")
            ],

            "Typography" => [
                "text"  => t("typography"),
                "url"   => $this->di->get("url")->create("typography"),
                "title" => t("typography this website")
            ],

            "Analysis" => [
                "text"  => t("analysis"),
                "url"   => $this->di->get("url")->create("analysis"),
                "title" => t("analysis this website")
            ],

            "Theme" => [
                "text"  => t("theme"),
                "url"   => $this->di->get("url")->create("themeMenu"),
                "title" => t("theme this website")
            ],

            "Blogg" => [
                "text"  => t("blogg"),
                "url"   => $this->di->get("url")->create("blogg"),
                "title" => t("theme this website")
            ],

            "Images" => [
                "text"  => t("images"),
                "url"   => $this->di->get("url")->create("images"),
                "title" => t("theme this website")
            ],
        ],
    ],



    /**
     * Callback tracing the current selected menu item base on scriptname
     *
     */
    "callback" => function ($url) {
        return !strcmp($url, $this->di->get("request")->getCurrentUrl(false));
    },



    /**
     * Callback to check if current page is a decendant of the menuitem,
     * this check applies for those menuitems that has the setting
     * "mark-if-parent" set to true.
     *
     */
    "is_parent" => function ($parent) {
        $url = $this->di->get("request")->getCurrentUrl(false);
        return !substr_compare($parent, $url, 0, strlen($parent));
    },



   /**
     * Callback to create the url, if needed, else comment out.
     *
     */
     /*
    "create_url" => function ($url) {
        return $this->di->get("url")->create($url);
    },*/
];
