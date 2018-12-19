tagList( #needed for shinyjs
  useShinyjs(),  # Include shinyjs
  navbarPage(id = "hub_navbar", # needed for landing page
             title="Rabies Research Hub",
             windowTitle = "Rabies Research", #title for browser tab
             theme = shinytheme("united"),
             collapsible = TRUE, # tab panels collapse into menu in small screens
             #------------------------------------------------------------------
             # Add style sections for the app
             header =
               tags$head( #CSS styles
                 tags$style(
                   # navbar alterations
                   #'.navbar-default .navbar-brand {color: black; font-weight: bold;}',
                   # Set the font family
                   "h5 {line-height: 1.2;}",
                   #"* { font-family: Arial, sans-serif !important; }",
                   # well alterations
                   ".well {background-color:#ffffff; border: 0px solid #336699; padding: 5px; box-shadow: none; }",
                   #Padding of columns
                   ".col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2,
                   .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4,
                   .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6,
                   .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7,
                   .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9,
                   .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11,
                   .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
                   padding-left: 5px; padding-right: 5px;}",
                   #landing page boxes
                   ".landing-page-box {width:100%; height:100%; min-height:40vh; background-color:white;
                   border: 0px; margin-bottom: 5px; float: left; transition: 0.5s ease; position: relative; object-fit: scale-down;}",
                   ".landing-page-box-about {width:100%; height:100%; min-height:10.7vh; background-color:white;
                   border: 1px solid #AAAAAA; margin-bottom: 5px; float: left; position: relative; object-fit: scale-down;}",
                   ".landing-page-box:hover, .landing-page-box-about:hover {-webkit-transform: scale(1.05);
                   -ms-transform: scale(1.05); transform: scale(1.05); }", #hover effect on boxes
                   #landing page icons
                   ".landing-page-icon {width:100%; height:100%; min-height:12vh; background-color: white;
                   border: 0px ; position: absolute; object-fit: scale-down;}",
                   ".landing-page-about-icon {width:100%; height:65%; min-height:5vh; background-color: white;
                   border: 0px; position: absolute; object-fit: scale-down;}",
                   #landing-page titles for boxes
                   ".landing-page-box-title {font-size: 16px; text-align:center; color: black;
                   font-weight: bold; background-color: none; width:100%; max-height: 20px; margin-bottom: 0}",
                   #landing page buttons
                   ".landing-page-button {text-align:center;
                   background-image:none; color: black; white-space: normal; border-radius: 0;border: 0px;
                   font-size: 16px; min-height: 100%; position: absolute; margin-bottom: 0px; margin-top: 5px; float: middle; width: 100%; opacity: 0;}",
                   ".landing-page-button-stacked-1 {text-align:center; position: absolute;
                   background-image:none; color: black; white-space: normal; border-radius: 0;border: 0px;
                   font-size: 16px; height: 50%; bottom: 40%; width: 100%; opacity: 0;}",
                   ".landing-page-button-stacked-2 {text-align:center; position: absolute;
                   background-image:none; color: black; white-space: normal; border-radius: 0;border: 0px;
                   font-size: 16px; height: 50%; bottom: 0px; width: 100%; opacity: 0;}",
                   #hover effect on landing page buttons
                   ".landing-page-button:hover , .landing-page-button:active , .landing-page-button-stacked-1:hover ,
                   .landing-page-button-stacked-1:active , .landing-page-button-stacked-2:hover ,
                   .landing-page-button-stacked-2:active , .landing-page-button-about:hover, .landing-page-button-about:active {
                   opacity: 1;
                   background-color: #fff; /* fallback */
                   background-color: rgba(255, 255, 255, 0.8);
                   color: black;
                   border-color: #fff; /* fallback */
                   border-color: rgba(255, 255, 255, 0.8); transition: background-color 0.3s ease-in,
                   color 0.3s ease-in;}",
                   #center image - for normal icons
                   "img.center {object-fit: scale-down; position:absolute; width:100%; height:100%; margin-left:auto; margin-right: auto; display: block; padding:20px;}",
                   #center image - for about icons
                   "img.centerabout {object-fit: scale-down; position:absolute; width:100%; height:100%; margin-left:auto; margin-right: auto; display: block; padding:8px;}",
                   #landing-page column
                   ".landing-page-column {padding-right:3vh}",
                   #landing-page icons
                   ".icon-lp{font-size: 1.3em; padding-right: 4px;}",
                   #landing page footer items
                   "@media screen and (max-width: 400px) {
                      .about-page-logo {max-width: 800px; width: 100%; margin-left: auto; margin-right: auto; display: block; }
                      .about-page-txt {width: 100%; vertical-align: middle; }}",
                   "@media screen and (min-width: 401px){
                      .about-page-logo {max-width: 800px; width: 70%; margin-left: auto; margin-right: auto; display: block; }
                      .about-page-txt {width: 100%; vertical-align: middle; }}",
                   # image alignments for "meet the team"
                   ".team-page-icon-box {width:100%; height:100%; min-height: 45vh; background-color:white;
                   border: 0px; margin-bottom: 2px; float: left; position: relative; object-fit: scale-down;}",
                   ".team-page-icon {width: 100%; height: 100%; min-height: 45vh; background-color: white;
                   border: 0px; position: absolute; object-fit: scale-down; margin-top: 0;}",
                   ".team-page-text {width: 100%; height: 30vh; display: table-cell;
                   vertical-align: middle; margin: auto 0;}",
                   # Testing new team page layouts
                   "@media screen and (max-width: 400px) {
                     .team-page-img {max-width: 180px; width: 180px; float: left; margin-right: 2%; border: 1px solid black;}
                     .team-page-txt {max-width: 100%; margin-top: 0; float: left;}}",
                   "@media screen and (min-width: 401px){
                     .team-page-img {max-width: 180px; width: 180px; float: left; margin-right: 2%; border: 1px solid black;}
                     .team-page-txt {max-width: 100%; margin-top: 0; float: none;}}",
                   #HTML("<base target='_blank'>"),
                   HTML("hr {border-top: 2px dotted #7c7c7c;}",
                        ".tabbable > .nav > li > a {color:black}")
                 ) # END style tags
               ), # END head tags

             #------------------------------------------------------------------
             # Create Home tab panel
             tabPanel(
               title = " Hub", icon = icon("home"),
               mainPanel(
                 width = 11, style="margin-left:4%; margin-right:4%",

                 #-------------------------------------------------------------#
                 # Create introduction to hub at the top of the page
                 fluidRow(h1("Welcome to the Rabies Research Hub!", style="text-align:center; margin-top:0px;"),
                          br(),
                          h4("Here, you can explore our vaccination and epidemiology data by clicking on the
                             relevant study area (this will open a new page in your browser window)",
                             style="text-align:center; margin-top:0px;")
                 ), # row END bracket
                 hr(), # horizontal rule line

                 #--------------------------------------------------------------
                 # Create first row of hub
                 fluidRow(br(), h2("Tanzania", style="text-align:center; margin-top:0px; ", class="text-primary"),
                          h4("In Tanzania, we carry out epidemiological and implementation research on rabies and its
                             prevention and control across different parts of the country. This work has also contributed
                             to multi-country and global studies to inform policy for rabies prevention and control.",
                             style="text-align:center; margin-top:0px; ")
                 ), # row END bracket
                 fluidRow(
                   br(),
                   # Link to Mara website
                   column(4, class="landing-page-column",
                          div(class="landing-page-box",
                              div("Mara Region", class = "landing-page-box-title"),
                              div(class = "landing-page-icon", style="background-image: url(maps/mara_map.png);
                                  background-size: auto 100%; background-position: center; background-repeat: no-repeat; "),
                              actionButton('', label=HTML("<p class='text-primary'>Website being prepared</p> <br>
                                                          <em>Implementation research on vaccination and surveillance approaches</em>"),
                                           class="landing-page-button"
                                           #icon = icon("arrow-circle-right", "icon-lp")
                                           #onclick ="window.open('https://rsteenson.github.io/webtest/', '_blank')"
                              ))),
                   # Link to Serengeti and Ngorongoro websites
                   column(4, class="landing-page-column",
                          div(class="landing-page-box",
                              div("Serengeti & Ngorongoro Districts", class = "landing-page-box-title"),
                              div(class = "landing-page-icon", style="background-image: url(maps/ser_ngor_map.png);
                                  background-size: auto 100%; background-position: center; background-repeat: no-repeat; "),
                              actionButton('',
                                           label=HTML("<font class='text-primary'>Go to Serengeti Website</font> <br><br>
                                                      <em>Long-term contact tracing & <br> Dog vaccination</em>"),
                                           class="landing-page-button-stacked-1",
                                           icon = icon("arrow-circle-right", class="text-primary"),
                                           onclick ="window.open('https://rabiesresearch.github.io/Serengeti/', '_blank')"),
                              actionButton('', label=HTML("<font class='text-primary'>Go to Ngorongoro Website</font> <br><br>
                                                          <em>Long-term contact tracing</em>"),
                                           class="landing-page-button-stacked-2",
                                           icon = icon("arrow-circle-right", class="text-primary"),
                                           onclick ="window.open('https://rabiesresearch.github.io/Ngorongoro/', '_blank')"))),
                   # Link to STz & Pemba website
                   column(4, class="landing-page-column",
                          div(class="landing-page-box",
                              div("S. Tanzania and Pemba Island", class = "landing-page-box-title"),
                              div(class = "landing-page-icon", style="background-image: url(maps/stz_map.png);
                                  background-size: auto 100%; background-position: center; background-repeat: no-repeat; "),
                              actionButton('', label=HTML("<p class='text-primary'>Website being prepared</p> <br> S. Tanzania"),
                                           class="landing-page-button-stacked-1"
                                           #icon = icon("arrow-circle-right", "icon-lp")
                                           #onclick ="window.open('https://rsteenson.github.io/webtest/', '_blank')"
                              ),
                              actionButton('', label=HTML("<p class='text-primary'>Website being prepared</p> <br> Pemba Island"),
                                           class="landing-page-button-stacked-2"
                                           #icon = icon("arrow-circle-right", "icon-lp")
                                           #onclick ="window.open('https://rsteenson.github.io/webtest/', '_blank')"
                              ))
                   ) # column END bracket
                 ), # row END bracket
                 br(), # line breaks
                 hr(), # horizontal rule line

                 #--------------------------------------------------------------
                 # Create second row of hub
                 column(4,
                        fluidRow(
                          h2("Philippines", style="text-align:center; margin-top:0px;", class="text-primary"),
                          br(),
                          # Link to Philippines website
                          class="landing-page-column",
                          div(class="landing-page-box",
                              div("Romblon & Oriental Mindoro", class = "landing-page-box-title"),
                              div(class = "landing-page-icon", style="background-image: url(maps/phil_study_map.png);
                                  background-size: auto 100%; background-position: center; background-repeat: no-repeat; "),
                              actionButton('',
                                           label=HTML("<font class='text-primary'>Go to Philippines Website</font> <br><br>
                                                      <em>Surveillance, Phylogenetics <br> & Epidemiology</em>"),
                                           class="landing-page-button",
                                           icon = icon("arrow-circle-right", "icon-lp"),
                                           onclick ="window.open('https://rabiesresearch.github.io/SPEEDIER/', '_blank')"
                              ))
                        ) # row END bracket
                 ), # column END bracket
                 column(4,
                        fluidRow(
                          h2("Indonesia", style="text-align:center; margin-top:0px;", class="text-primary"),
                          br(),
                          # Link to Philippines website
                          class="landing-page-column",
                          div(class="landing-page-box",
                              div("", class = "landing-page-box-title"),
                              div(class = "landing-page-icon", style="background-image: url(maps/indon_study_map.png);
                                  background-size: auto 100%; background-position: center; background-repeat: no-repeat; "),
                              actionButton('', label=HTML("<p class='text-primary'>Website being prepared</p> <br>"),
                                           class="landing-page-button"
                                           #icon = icon("arrow-circle-right", "icon-lp")
                                           #onclick ="window.open('https://rsteenson.github.io/webtest/', '_blank')"
                              ))
                        ) # row END bracket
                 ), # column END bracket
                 column(4,
                        fluidRow(
                          h2("Latin America", style="text-align:center; margin-top:0px;", class="text-primary"),
                          br(),
                          # Link to Philippines website
                          class="landing-page-column",
                          div(class="landing-page-box",
                              div("", class = "landing-page-box-title"),
                              div(class = "landing-page-icon", style="background-image: url(maps/latin_america_study_map.png);
                                  background-size: auto 100%; background-position: center; background-repeat: no-repeat; "),
                              actionButton('', label=HTML("<p class='text-primary'>App being prepared</p> <br>"),
                                           class="landing-page-button"
                                           #icon = icon("arrow-circle-right", "icon-lp")
                                           #onclick ="window.open('https://rsteenson.github.io/webtest/', '_blank')"
                              ))
                        ) # row END bracket
                 ) # column END bracket
               ) # main panel END bracket
             ),

             #------------------------------------------------------------------
             # Create About tab panel
             tabPanel(
               title = " About", icon = icon("info"),
               mainPanel(
                 width = 11, style="margin-left:4%; margin-right:4%",
                 fluidRow(
                   h4("We are a collective of researchers working on rabies.
                      This hub and associated websites/apps are a way of providing information on the work that we do.",
                      br(),"Our work is generously supported by a range of organizations:",
                      style="text-align:center; margin-top:0px;"),
                   hr()
                 ), # row END bracket
                 fluidRow(
                   h3("Tanzania", class="about-page-txt"),
                   img(src="logos/tz_banner.png", class="about-page-logo")
                 ), # row END bracket
                 fluidRow(
                   br()
                 ), # row END bracket
                 fluidRow(
                   h3("Philippines", class="about-page-txt"),
                   img(src="logos/phil_banner.png", class="about-page-logo")
               ), # row END bracket
               fluidRow(
                 br(), br()
               ) # row END bracket
             ) # main panel END bracket
  ), # tab panel END bracket

             #------------------------------------------------------------------
             # Create Contact tab panel
             navbarMenu(title = " Meet the teams", icon = icon("users"),
                        #-------------------------------------------------------
                        # Glasgow Team section
                        tabPanel(title = "Glasgow-based",
                                 mainPanel(
                                   width = 11, style="margin-left:4%; margin-right:4%",
                                   fluidRow(
                                     h3("Glasgow-based Team", style="text-align:center; margin-top:0px;"),
                                     h5("Listed alphabetically", style="text-align:center; font-style: italic;"),
                                     hr()
                                   ), #row END bracket
                                   fluidRow(
                                     br()
                                   ), # row END bracket
                                   fluidRow(
                                     #---------------#
                                     # Laurie Baker
                                     column(6, class="landing-page-column",
                                            h4("Dr. Laurie Baker", style="font-weight: bold;", HTML("&emsp;"),
                                               tags$a(href = "https://twitter.com/llbaker1707",  icon("twitter"),
                                                      target="_blank", class="text-primary")),
                                            h5("MRC Transition Fellow", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/laurie_b.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Laurie's research focuses on the elimination of rabies in European foxes over the last four
                                                       decades. Specifically, she is interested in studying the determinants of rabies persistence
                                                       and evaluating how vaccination strategies can be optimised to eliminate infection. "),
                                                    h5("To do this she is applying new Bayesian statistical approaches to study the dynamics of fox
                                                       Rabies over the last 30 years in Western Europe in response to oral rabies vaccination programmes."),
                                                    h5("She is working with several collaborators on this project: Thomas Müller and Conrad Freuling at the
                                                       Friedrich-Loeffler Institute in Germany, Elias Krainski at the Universidade Federal do Paraná,
                                                       and Håvard Rue at King Abdullah University of Science and Technology (KAUST).")))
                                                    ), # column END bracket
                                     #---------------#
                                     # Kirstyn Brunker
                                     column(6, class="landing-page-column",
                                            h4("Dr. Kirstyn Brunker", style="font-weight: bold;", HTML("&emsp;"),
                                               tags$a(href = "https://twitter.com/kirstynbrunker",  icon("twitter"),
                                                      target="_blank", class="text-primary")),
                                            h5("Postdoctoral Researcher", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/kirstyn_b2.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("I am interested in how genomic data can be used to improve our understanding of
                                                       infectious disease dynamics. In particular, how genomic surveillance can be used
                                                       to guide dog Rabies elimination programmes across Asia and Africa."),
                                                    h5("My research involves developing techniques to sequence Rabies virus;
                                                       integrate genomic and epidemiological data to perform advanced phylodynamic
                                                       analyses and develop landscape approaches to determine the factors that drive
                                                       rabies virus transmission."),
                                                    h5("I am also interested in developing methods that improve genomic surveillance
                                                       capacity in low- and middle-income countries. Recently, I have been developing a
                                                       lab-in-a-suitcase approach, using Oxford Nanopore’s MinION sequencer, to build
                                                       capacity for Rabies genomic surveillance in low-resource settings. This has been
                                                       successfully tested in the field in Tanzania.")))
                                                    ) # column END bracket
                                   ), # row END bracket
                                   fluidRow(
                                     br()
                                   ), # row END bracket
                                   fluidRow(
                                     #---------------#
                                     # Putthi Cheat Lim
                                     column(6, class="landing-page-column",
                                            h4("Putthi Cheat Lim", style="font-weight: bold;"),
                                            h5("PhD Student", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/putthi_l.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("I am a PhD student in Economics based in the Adam Smith Business School, University of Glasgow.
                                                       My research uses economic perspectives to try to understand community members’ decisions to
                                                       participate in vaccination campaigns and to design policies that aim to increase participation in
                                                       canine rabies vaccination campaigns.  "),
                                                    h5("My current research looks at the use of mobile phone text messaging and religious and tribal leaders
                                                       in raising awareness of rabies and to encourage participation in communities in rural Tanzania. ")))
                                                    ), # column END bracket
                                     #-------------#
                                     # Anna Czupryna
                                     column(6, class="landing-page-column",
                                            h4("Anna Czupryna", style="font-weight: bold;"),
                                            h5("Postdoctoral Research Assistant", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/anna_c2.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Anna Czupryna is a Postdoctoral researcher based at the University of Glasgow, working
                                                       in Tanzania coordinating field research activities for the Rabies Elimination Project. "),
                                                    h5("She received her Ph.D. from the University of Illinois at Chicago studying domestic dog
                                                       population dynamics in villages near Serengeti National Park in Tanzania. Her dissertation
                                                       research, 'The Ecology of Free-Roaming Domestic Dogs in Rural Villages near Serengeti National
                                                       Park,' involved an innovative multidisciplinary approach that integrated demography,
                                                       endocrinology and public health. "),
                                                    h5("Anna is currently working with the field team in Mugumu, near Serengeti National Park, on
                                                       streamlining data collection, developing training programs for village rabies coordinators,
                                                       and coordinating data collection, dog vaccination, and research protocols. ")))
                                                    ) # column END bracket
                                   ), # row END bracket
                                   fluidRow(
                                     br()
                                   ), # row END bracket
                                   fluidRow(
                                     #---------------#
                                     # Elaine Ferguson
                                     column(6, class="landing-page-column",
                                            h4("Dr. Elaine Ferguson", style="font-weight: bold;", HTML("&emsp;"),
                                               tags$a(href = "https://twitter.com/ElaineAFerguson",  icon("twitter"),
                                                      target="_blank", class="text-primary")),
                                            h5("Postdoctoral Research Assistant", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/elaine_f2.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Elaine uses data collected by the field teams in Tanzania on rabies cases, dog bites
                                                       and vaccination to inform statistical analyses and computational models of rabies dynamics."),
                                                    h5("This work seeks to assess or predict the impact of control efforts on rabies incidence
                                                       across different landscapes, and to aid the design of control strategies that efficiently
                                                       eliminate rabies."),
                                                    h5("Through these analyses, Elaine also aims to determine the roles of dog movements and
                                                       the density and distribution of dog populations in maintaining rabies transmission.")))
                                                    ), # column END bracket
                                     #---------------#
                                     # Katie Hampson
                                     column(6, class="landing-page-column",
                                              h4("Dr. Katie Hampson", style="font-weight: bold;"),
                                              h5("", style="font-style: italic;"),
                                              div(style="display: inline-block;",
                                                  img(src="team/no_pic.jpg", class="team-page-img"),
                                                  div(class="team-page-txt",
                                                      h5("")))
                                       ) # column END bracket
                                   ), # row END bracket
                                   fluidRow(
                                     br()
                                   ), # row END bracket
                                   fluidRow(
                                     #---------------#
                                     # Rachel Steenson
                                     column(6, class="landing-page-column",
                                            h4("Rachel Steenson", style="font-weight: bold;", HTML("&emsp;"),
                                               tags$a(href = "https://twitter.com/RachelSSteenson",  icon("twitter"),
                                                      target="_blank", class="text-primary")),
                                            h5("Research Assistant", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/rachel_s.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("My role involves developing code pipelines to clean, process, analyse and visualise
                                                       data with minimal user input; these pipelines are used to create fortnightly progress and
                                                       caselist reports for the field team, provide efficient frameworks for modelling, and build
                                                       the websites available through this Hub."),
                                                    h5("I'm also responsible for fixing issues in our contact tracing data and
                                                       updating spatial files to match the continually changing semi-rural areas in Tanzania.")))
                                                    ) # column END bracket
                                   ), # row END bracket
                                   fluidRow(
                                     br(), br()
                                   ) # row END bracket
                                 ) # main panel END bracket
                        ), # tab panel END bracket
                        #-------------------------------------------------------
                        # Tanzania Team section
                        tabPanel(title = "Tanzania-based",
                                 mainPanel(
                                   width = 11, style="margin-left:4%; margin-right:4%",
                                   fluidRow(
                                     h3("Tanzania-based Team", style="text-align:center; margin-top:0px;"), hr()
                                   ), #row END bracket
                                   fluidRow(
                                     #---------------#
                                     # Joel Changalucha
                                     column(6, class="landing-page-column",
                                            h4("Joel Changalucha", style="font-weight: bold;"),
                                            h5("Research Scientist", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/joel_c2.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Joel has extensive history on One-Health surveillance approaches; his recent research
                                                       involves piloting a surveillance system whereby health and veterinary workers report Rabies
                                                       cases, animal bites, use of post-exposure vaccines and mass dog vaccination campaigns using
                                                       a mobile phone app. "),
                                                    h5("Joel's interest is on evaluating public health intervention using social and economic approaches.
                                                       His responsibilities include: developing cost effective intervention for controlling diseases
                                                       and methods of evaluating these interventions; aligning the research needs to the
                                                       existing health and veterinary system to enable smooth integrations of research findings."),
                                                    h5("Joel brings to his position a well-established background in health system and clinical practice
                                                       of rural settings; this has helped in sustaining the requirements of the mobile phone surveillance
                                                       system in Tanzania.")))
                                                    ), # column END bracket
                                     #---------------#
                                     # Christian Tetteh Duamor
                                     column(6, class="landing-page-column",
                                            h4("Christian Tetteh Duamor", style="font-weight: bold;"),
                                            h5("Afrique-ONE ASPIRE PhD Student", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/no_pic.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Christian’s PhD focuses on building expertise in Community-Led models for delivering and evaluating
                                                       health interventions. He is currently conducting process evaluation on on-going trials in Mara Region
                                                       of Tanzania, to determine effective methods of delivering community-based mass dog vaccination
                                                       campaigns against Rabies. "),
                                                    h5("Christian holds an MSc in Epidemiology and Control of Infectious Diseases (University of Buea, 2015),
                                                       BSc Biological Sciences (Kwame Nkrumah University of Science and Technology, 2010); he also acquired
                                                       Certificate in Management in Health (World Bank Group MOOC, 2015), Certificate Implementation Research
                                                       (TDR MOOC, 2018) and completed the REC, AVC and CCC from GARC.")))
                                                    ) # column END bracket
                                   ), # row END bracket
                                   fluidRow(
                                     br()
                                   ), # row END bracket
                                   fluidRow(
                                     #---------------#
                                     # Zilpah Kaare
                                     column(6, class="landing-page-column",
                                            h4("Zilpah Kaare", style="font-weight: bold;"),
                                            h5("Data Clerk", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/zilpah_k2.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Zilpah collects and collates hospital records within the study areas involved in the project.
                                                       She also enters and uploads data into the project database.")))
                                                    ), # column END bracket
                                     #---------------#
                                     # Ahmed Lugelo
                                     column(6, class="landing-page-column",
                                            h4("Ahmed Lugelo", style="font-weight: bold;"),
                                            h5("Afrique-ONE ASPIRE PhD Student", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/ahmed_l2.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Over the past 6 years, I have coordinated surveillance and control of Rabies research in
                                                       Northern Tanzania. My PhD focuses on the development of a cost-effective and sustainable
                                                       strategy for regional elimination of rabies."),
                                                    h5("This involves: developing and conducting field tests to determine the performance of
                                                       ‘Temperature Controlled Storage Devices’ (TCSD); implementing a randomized control trial
                                                       to determine the potency of thermotolerant rabies vaccine (Nobivac® Rabies vaccine) following
                                                       storage in novel TCSD at varying field conditions; and evaluate the vaccination coverage
                                                       achieved by Centralized Team-Led strategy and Decentralized Community-Led strategies."),
                                                    h5("I work closely with local communities, government animal health professionals (MoLFD), as
                                                       well as multiple research institutes including Sokoine University of Agriculture, Ifakara
                                                       Health Institute, University of Glasgow and Washington State University.")))
                                                    ) # column END bracket
                                   ), # row END bracket
                                   fluidRow(
                                     br()
                                   ), # row END bracket
                                   fluidRow(
                                     #---------------#
                                     # Kennedy Lushasi
                                     column(6, class="landing-page-column",
                                            h4("Kennedy Lushasi", style="font-weight: bold;"),
                                            h5("Afrique-ONE ASPIRE PhD Student", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/kennedy_l.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Kennedy uses active and genomic surveillance approaches to inform the development
                                                       of guidelines for the elimination of dog-mediated Rabies, across Southern and Northern
                                                       Tanzania as well as Pemba Island."),
                                                    h5("This involves: implementing schemes to determine case
                                                       detection in different settings; assessing costs of active case-finding and feasibility
                                                       within a One Health framework; evaluating the critical criteria to identify and confirm
                                                       Rabies cases; and piloting field sequencing approaches to assess the sources and frequency
                                                       of incursions."),
                                                    h5("Kennedy works very closely with government health and veterinary workers
                                                       that coordinate field operations, district medical and veterinary officers, livestock
                                                       field officers, public health workers, and the wider community.")))
                                                    ), # column END bracket
                                     #---------------#
                                     # Maganga Sambo
                                     column(6, class="landing-page-column",
                                            h4("Maganga Sambo", style="font-weight: bold;"),
                                            h5("PhD Student, University of Glasgow", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/maganga_s2.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Mass vaccination is known to be the cornerstone for effective control of canine rabies; however,
                                                       there is little scientific guidance for the best way of evaluating and monitoring the success of the
                                                       implementations of dog vaccination campaigns."),
                                                    h5("Maganga's PhD focuses on measuring, monitoring and improving mass dog vaccination programmes to
                                                       inform control and eliminate rabies."),
                                                    h5("Maganga conducted post-vaccination evaluations: households, school-based and transect surveys.
                                                       He compared these survey methods to see which methods provide precise estimates of vaccination
                                                       coverage and dog population sizes. This work guides the ongoing and future dog vaccinations on a
                                                       large scale in sub-Saharan Africa")))
                                                    ) # column END bracket
                                   ), # row END bracket
                                   fluidRow(
                                     br()
                                   ), # row END bracket
                                   fluidRow(
                                     #---------------#
                                     # Lwitiko Sikana
                                     column(6, class="landing-page-column",
                                            h4("Lwitiko Sikana", style="font-weight: bold;"),
                                            h5("Afrique-ONE ASPIRE MSc Student", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/sikana_l.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Lwitiko has been working on implementing rabies research in Tanzania for almost ten years, such
                                                       as vaccination campaigns and conducting community engagement projects."),
                                                    h5("Currently, he is an MSc in Public Health Research candidate at the Nelson Mandela African
                                                       Institution of Science and Technology in Tanzania) through the Afrique One- African Science
                                                       Partnership for Intervention Research Excellence (ASPIRE) fellowship."),
                                                    h5("He is interested in understanding family and community dynamics in the prevention of rabies,
                                                       which could help in developing an intervention that could be feasible for raising awareness through
                                                       the use of social practices.")))
                                                    ), # column END bracket
                                     #---------------#
                                     # Matiko Tiringa
                                     column(6, class="landing-page-column",
                                            h4("Matiko Tiringa", style="font-weight: bold;"),
                                            h5("Project Field Officer", style="font-style: italic;"),
                                            div(style="display: inline-block;",
                                                img(src="team/matiko_t.jpg", class="team-page-img"),
                                                div(class="team-page-txt",
                                                    h5("Matiko carries out contact tracing in Serengeti and Ngorongoro districts. Individuals
                                                      bitten by an animal are located and interviewed to collect detailed data on a bite incident,
                                                     and decide if it was a probable Rabies exposure. He follows the chain of interactions to
                                                     other human and animal bite victims to identify how the infection began, collecting data
                                                     at every step and educating communities about Rabies. "),
                                                    h5("Matiko also collects tissue samples from recently deceased probable Rabid animals, and
                                                     completes a Rapid Diagnostic Test to gain a preliminary result on Rabies status. These
                                                     samples are then sent to the laboratory for confirmation and sequencing.")))
                                     ) # column END bracket
                                   ), # row END bracket
                                   fluidRow(
                                     br(),br()
                                   ) # row END bracket
                                 ) # main panel END bracket
                        )# tab panel END bracket
             ) # navbar menu END bracket
  ), # navbar page END bracket

  #-----------------------------------------------------------------------------
  # Add footer
  tags$footer(column(3, " Contact us:", HTML("&emsp;"),
                     tags$a(href="mailto:katiehampson@gmail.com", icon("envelope"),
                            class="externallink", style = "color: white; text-decoration: none"),
                     HTML("&emsp;"),
                     tags$a(href = "https://twitter.com/rabidbites",  icon("twitter"), target="_blank", style = "color: white;")),
              column(6, "Rabies Research Hub", style= "font-size: 20px; text-align: center; padding-bottom: 5px;"),
              column(3),
              class="bg-primary",
              style = "position: fixed;  left: 0; bottom: 0; vertical-align: middle; width: 100%; z-index: 1000; height: 30px; color: white;")
) # taglist END bracket
