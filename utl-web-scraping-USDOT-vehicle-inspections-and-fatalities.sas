Web scraping USDOT vehicle inspections and fatalities

github
https://tinyurl.com/y4upp32x
https://github.com/rogerjdeangelis/utl-web-scraping-USDOT-vehicle-inspections-and-fatalities

StackOverflow R
https://tinyurl.com/y68rqjob
https://stackoverflow.com/questions/56999159/need-help-parsing-a-table-with-rvest-into-dataframe


Other web scraping repos
https://tinyurl.com/y2vjw65q
https://github.com/rogerjdeangelis?utf8=%E2%9C%93&tab=repositories&q=web++in%3Aname&type=&language=

Brian profile
https://stackoverflow.com/users/3330437/brian


*_                   _
(_)_ __  _ __  _   _| |_
| | '_ \| '_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
;

https://tinyurl.com/y4cvk4hy

+---------------------------------------------------------------------------+
|                                                                           |
|   * ____                                                                  |
|    / ___|___  _ __ ___  _ __   __ _ _ __  _   _                           |
|   | |   / _ \| '_ ` _ \| '_ \ / _` | '_ \| | | |                          |
|   | |__| (_) | | | | | | |_) | (_| | | | | |_| |                          |
|    \____\___/|_| |_| |_| .__/ \__,_|_| |_|\__, |                          |
|                        |_|                |___/                           |
|    ____                        _           _                              |
|   / ___| _ __   __ _ _ __  ___| |__   ___ | |_                            |
|   \___ \| '_ \ / _` | '_ \/ __| '_ \ / _ \| __|                           |
|    ___) | | | | (_| | |_) \__ \ | | | (_) | |_                            |
|   |____/|_| |_|\__,_| .__/|___/_| |_|\___/ \__|                           |
|                                                                           |
|    _   _ ____  ____   ___ _____                                           |
|   | | | / ___||  _ \ / _ \_   _|                                          |
|   | | | \___ \| | | | | | || |                                            |
|   | |_| |___) | |_| | |_| || |                                            |
|    \___/|____/|____/ \___/ |_|                                            |
|                                                                           |
|   ;                                                                       |
|                                                                           |
+---------------------------------------------------------------------------+
|                                                                           |
|   Inspections:                                                            |
|   Inspection Type      Vehicle      Driver      Hazmat        IEP         |
|   Inspections              0            0          0            0         |
|   Out of Service           0            0          0            0         |
|   Out of Service %         0%          0%          0%          0%         |
|   Nat'l Average %      20.72%       5.51%          4.50%      N/A         |
|   (2009- 2010)                                                            |
|                                                                           |
+---------------------------------------------------------------------------+

*            _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| '_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
;

WORK.WANT total obs=4

  INSPECTI                       VEHICLE    DRIVER    HAZMAT    IEP

  Inspections                    0          0         0         0
  Out of Service                 0          0         0         0
  Out of Service %               0%         0%        0%        0%
  Nat'l Average %(2009- 2010)    20.72%     5.51%     4.50%     N/A

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;
%utlfkil(d:/txt/r_pgm.txt);

%utl_submit_r64(%tslit(
library(rvest);
library(dplyr);
library(SASxport);
dot_url <- "https://tinyurl.com/y4cvk4hy" %>%
  read_html();
want<-dot_url %>%
  html_node("a[href$='#Inspections'] + center") %>%
  html_node("table") %>%
  html_table();
write.xport(want,file="d:/xpt/want.xpt");
));

libname xpt xport "d:/xpt/want.xpt";
data want;
  set xpt.want;
run;quit;
libname xpt clear;




