#!/usr/bin/perl


use LWP::Simple;
use LWP::UserAgent;
use Term::ANSIColor;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);
use File::chdir;

system(($^O eq 'MSWin32') ? 'cls' : 'clear');
system(($^O eq 'MSWin32') ? 'mode con:cols=100 lines=40' : 'resize -s 40 100');
my $now_string = localtime();
print color('BRIGHT_RED');
print <<logo;
  .:'                                  `:.
 ::'                                    `::
:: :.                                  .: ::
 `:. `:.             .             .:'  .:'
   `::. `::          !           ::' .::'
      `::.`::.    .' ! `.    .::'.::'
        `:.  `::::'':!:``::::'   ::'
        :'*:::.  .:' ! `:.  .:::*`:
       :: HHH::.   ` ! '   .::HHH ::
      ::: `H TH::.  `!'  .::HT H' :::
      ::..  `THHH:`:   :':HHHT'  ..::     
      `::      `T: `. .' :T'      ::'
        `:. .   :         :   . .:'             
          `::'               `::'
            :'  .`.  .  .'.  `:    Demon Proxy Tool by dr-iman
            :' ::.       .:: `:
            :' `:::     :::' `:           GIST V 1.0
             `.  ``     ''  .'
              :`...........':  Time & Date : $now_string
              ` :`.     .': '
               `:  `"""'  :'   
logo
print color ('reset');
print color('BRIGHT_WHITE');
print "\nDeMoN-Proxy > ";
$method=<>;
chomp($method);
print color ('reset');


if ($method eq "Show Options" or $method eq "show options" or $method eq "Show options" or $method eq "show Options")
{
print "(";print colored("Show-Options", 'red'),;print ") > \n";
print color ("BRIGHT_YELLOW");
print <<help;
Parametrs        Value               Descriptions               Example

Format           json,txt            Format Proxy output        format=json
Level            Anonymous,Elite     Anonymity Level            level=anonymous,elit
Type             Http,Socks4,Socks5  Proxy Protocol             type=http
Limit            1-20                Limit os Proxy List        limit=20      
Country          Countries           Country Name               country=US.CA
City             cities              Cities Name                cities=MX.CA
Port             Port Number         Your Intended Port         port=8080
Google           True,False          Google Passed Proxies      google=true
Https            True,False          Supports HTTPS Request     https=true
Get              True,False          Supports GET Request       get=true
Post             True,False          Supports POST Request      Post=true
User-Agent       True,False          Supports U-A request       u-a=true
Coockies         True,False          Supports COOKIES Request   coockie=true
Referer          True,False          Supports REFERER Request   referer=true

Description : 

You Can Use Your Intended Options For Getting Proxy.
For example I Want To Get Proxy With This Information : 
[limit=20 , level=>anonymous , country=>US.CA , port=>8080 , google=>true , format=txt]
Command : 
Get-Proxy>limit=20&level=anonymous&country=US.CA&port=8080&google=true&format=txt

Another Example:
Information : [limit=>10 , level=>elite , post=>true , type=>http , format=>txt]
Command:
Get-Proxy>limit=10&level=elite&post=true&type=http&format=txt
Important note : if you don't specify the format it will show you the proxies with json format
help

print color ("reset");

print "\nBack To HomePage (Y or N) : ";
$home=<>;
chomp($home);
if($home eq "y" or $home eq "Y")
{
system ("perl Proxy-Demon.pl"); 
}
elsif($method eq "n" or $method eq "N")
{
system ("exit");
}
}





elsif ($method eq "Get Proxy" or $method eq "Get proxy" or $method eq "get Proxy" or $method eq "get proxy")
{
print "(";print colored("Get-Proxy", 'red'),;print ") > ";
$proxy=<>;
chomp($proxy);

$ua = LWP::UserAgent->new;
my $url = "http://pubproxy.com/api/proxy?$proxy";
my $content = $ua->get("$url")->content;

print "\n$content\n";

print "\nBack To HomePage (Y or N) : ";
$home=<>;
chomp($home);
if($home eq "y" or $home eq "Y")
{
system ("perl Proxy-Demon.pl"); 
}
elsif($method eq "n" or $method eq "N")
{
system ("exit");
}
}



elsif ($method eq "help" or $method eq "Help" or $method eq "h")
{
print "(";print colored("Help", 'red'),;print ") > \n";
print color ("BRIGHT_YELLOW");
print "
Parametrs :                  Description : 

Get Proxy                    For Getting Proxy List Use This Parametr   

Help                         Some Details About How Using Demon Proxy Tool

";
print color ("reset");

print "\nBack To HomePage (Y or N) : ";
$home=<>;
chomp($home);
if($home eq "y" or $home eq "Y")
{
system ("perl Proxy-Demon.pl"); 
}
elsif($method eq "n" or $method eq "N")
{
system ("exit");
}
}