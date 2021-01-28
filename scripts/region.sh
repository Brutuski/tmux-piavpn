#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
source "$CURRENT_DIR/helpers.sh"

state=$(piactl get connectionstate)

main () {
    if [ $state == "Connected" ]; then
        get_region
    else
        printf ""
    fi
}

get_region() 
{
    region=$(piactl get region)

    if [ $region == "albania" ]; then
        printf "to Albania"
    elif [ $region == "algeria" ]; then
        printf "to Algeria"
    elif [ $region == "andorra" ]; then
        printf "to Andorra"
    elif [ $region == "argentina" ]; then
        printf "to Argentina"
    elif [ $region == "armenia" ]; then
        printf "to Armenia"
    elif [ $region == "au-melbourne" ]; then
        printf "to Australia"
    elif [ $region == "au-perth" ]; then
        printf "to Australia"
    elif [ $region == "au-sydney" ]; then
        printf "to Australia"
    elif [ $region == "austria" ]; then
        printf "to Austria"
    elif [ $region == "bahamas" ]; then
        printf "to Bahamas"
    elif [ $region == "bangladesh" ]; then
        printf "to Bangladesh"
    elif [ $region == "belgium" ]; then
        printf "to Belgium"
    elif [ $region == "bosnia-and-herzegovina" ]; then
        printf "to Bosnia and Herzogovina"
    elif [ $region == "brazil" ]; then
        printf "to Brazil"
    elif [ $region == "bulgaria" ]; then
        printf "to Bulgaria"
    elif [ $region == "ca-montreal" ]; then
        printf "to Canada"
    elif [ $region == "ca-ontario" ]; then
        printf "to Canada"
    elif [ $region == "ca-toronto" ]; then
        printf "to Canada"
    elif [ $region == "ca-vancouver" ]; then
        printf "to Canada"
    elif [ $region == "cambodia" ]; then
        printf "to Cambodia"
    elif [ $region == "china" ]; then
        printf "to China"
    elif [ $region == "cyprus" ]; then
        printf "to Cyprus"
    elif [ $region == "czech-republic" ]; then
        printf "to Czech Republic"
    elif [ $region == "de-berlin" ]; then
        printf "to Germany"
    elif [ $region == "de-frankfurt" ]; then
        printf "to Germany"
    elif [ $region == "denmark" ]; then
        printf "to Denmark"
    elif [ $region == "egypt" ]; then
        printf "to Egypt"
    elif [ $region == "estonia" ]; then
        printf "to Estonia"
    elif [ $region == "finland" ]; then
        printf "to Finland"
    elif [ $region == "france" ]; then
        printf "to France"
    elif [ $region == "georgia" ]; then
        printf "to Georgia"
    elif [ $region == "greece" ]; then
        printf "to Greece"
    elif [ $region == "greenland" ]; then
        printf "to Greenland"
    elif [ $region == "hong-kong" ]; then
        printf "to Hong Kong"
    elif [ $region == "hungary" ]; then
        printf "to Hungary"
    elif [ $region == "iceland" ]; then
        printf "to Iceland"
    elif [ $region == "india" ]; then
        printf "to India"
    elif [ $region == "ireland" ]; then
        printf "to Ireland"
    elif [ $region == "isle-of-man" ]; then
        printf "to Isle of Man"
    elif [ $region == "israel" ]; then
        printf "to Israel"
    elif [ $region == "italy" ]; then
        printf "to Italy"
    elif [ $region == "japan" ]; then
        printf "to Japan"
    elif [ $region == "kazakhstan" ]; then
        printf "to Kazakhstan"
    elif [ $region == "latvia" ]; then
        printf "to Latvia"
    elif [ $region == "liechtenstein" ]; then
        printf "to Lichtenstein"
    elif [ $region == "lithuania" ]; then
        printf "to Lithuania"
    elif [ $region == "luxembourg" ]; then
        printf "to Luxembourg"
    elif [ $region == "macao" ]; then
        printf "to Macao"
    elif [ $region == "macedonia" ]; then
        printf "to Macedonia"
    elif [ $region == "malta" ]; then
        printf "to Malta"
    elif [ $region == "mexico" ]; then
        printf "to Mexico"
    elif [ $region == "moldova" ]; then
        printf "to Moldova"
    elif [ $region == "monaco" ]; then
        printf "to Monaco"
    elif [ $region == "mongolia" ]; then
        printf "to Mongolia"
    elif [ $region == "montenegro" ]; then
        printf "to Montenegro"
    elif [ $region == "morocco" ]; then
        printf "to Morocoo"
    elif [ $region == "netherlands" ]; then
        printf "to MNetherlands"
    elif [ $region == "new-zealand" ]; then
        printf "to New-Zealand"
    elif [ $region == "nigeria" ]; then
        printf "to Nigeria"
    elif [ $region == "norway" ]; then
        printf "to Norway"
    elif [ $region == "panama" ]; then
        printf "to Panama"
    elif [ $region == "philippines" ]; then
        printf "to Philippines"
    elif [ $region == "poland" ]; then
        printf "to Poland"
    elif [ $region == "portugal" ]; then
        printf "to Portugal"
    elif [ $region == "qatar" ]; then
        printf "to Qatar"
    elif [ $region == "romania" ]; then
        printf "to Romania"
    elif [ $region == "saudi-arabia" ]; then
        printf "to Saudi-Arabia"
    elif [ $region == "serbia" ]; then
        printf "to Serbia"
    elif [ $region == "singapore" ]; then
        printf "to Singapore"
    elif [ $region == "slovakia" ]; then
        printf "to Slovakia"
    elif [ $region == "south-africa" ]; then
        printf "to South-Africa"
    elif [ $region == "spain" ]; then
        printf "to Spain"
    elif [ $region == "sri-lanka" ]; then
        printf "to Sri-Lanka"
    elif [ $region == "sweden" ]; then
        printf "to Sweden"
    elif [ $region == "switzerland" ]; then
        printf "to Switzerland"
    elif [ $region == "taiwan" ]; then
        printf "to Taiwan"
    elif [ $region == "turkey" ]; then
        printf "to Turkey"
    elif [ $region == "uk-london" ]; then
        printf "to United Kingdom"
    elif [ $region == "uk-london---streaming-optimized" ]; then
        printf "to United Kingdom"
    elif [ $region == "uk-manchester" ]; then
        printf "to United Kingdom"
    elif [ $region == "uk-southampton" ]; then
        printf "to United Kingdom"
    elif [ $region == "ukraine" ]; then
        printf "to Ukraine"
    elif [ $region == "united-arab-emirates" ]; then
        printf "to UAE"
    elif [ $region == "us-atlanta" ]; then
        printf "to United States"
    elif [ $region == "us-california" ]; then
        printf "to United States"
    elif [ $region == "us-chicago" ]; then
        printf "to United States"
    elif [ $region == "us-denver" ]; then
        printf "to United States"
    elif [ $region == "us-east" ]; then
        printf "to United States"
    elif [ $region == "us-florida" ]; then
        printf "to United States"
    elif [ $region == "us-houston" ]; then
        printf "to United States"
    elif [ $region == "us-las-vegas" ]; then
        printf "to United States"
    elif [ $region == "us-new-york" ]; then
        printf "to United States"
    elif [ $region == "us-seattle" ]; then
        printf "to United States"
    elif [ $region == "us-silicon-valley" ]; then
        printf "to United States"
    elif [ $region == "us-texas" ]; then
        printf "to United States"
    elif [ $region == "us-washington-dc" ]; then
        printf "to United States"
    elif [ $region == "us-west" ]; then
        printf "to United States"
     elif [ $region == "venezuela" ]; then
        printf "to Venezuela"
    elif [ $region == "vietnam" ]; then
        printf "to Vietnam"
    else
        printf ""
    fi
}

main

