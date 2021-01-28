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
        printf "🇦"
    elif [ $region == "algeria" ]; then
        printf "🇩🇿"
    elif [ $region == "andorra" ]; then
        printf "🇦🇩"
    elif [ $region == "argentina" ]; then
        printf "🇦🇩"
    elif [ $region == "armenia" ]; then
        printf "🇦🇲"
    elif [ $region == "au-melbourne" ]; then
        printf "🇦🇺"
    elif [ $region == "au-perth" ]; then
        printf "🇦🇺"
    elif [ $region == "au-sydney" ]; then
        printf "🇦🇺"
    elif [ $region == "austria" ]; then
        printf "🇦🇹"
    elif [ $region == "bahamas" ]; then
        printf "🇧🇸"
    elif [ $region == "bangladesh" ]; then
        printf "🇧🇩"
    elif [ $region == "belgium" ]; then
        printf "🇧🇪"
    elif [ $region == "bosnia-and-herzegovina" ]; then
        printf "🇧🇦"
    elif [ $region == "brazil" ]; then
        printf "🇧🇷"
    elif [ $region == "bulgaria" ]; then
        printf "🇧🇬"
    elif [ $region == "ca-montreal" ]; then
        printf "🇨🇦"
    elif [ $region == "ca-ontario" ]; then
        printf "🇨🇦"
    elif [ $region == "ca-toronto" ]; then
        printf "🇨🇦"
    elif [ $region == "ca-vancouver" ]; then
        printf "🇨🇦"
    elif [ $region == "cambodia" ]; then
        printf "🇰🇭"
    elif [ $region == "china" ]; then
        printf "🇨🇳"
    elif [ $region == "cyprus" ]; then
        printf "🇨🇾"
    elif [ $region == "czech-republic" ]; then
        printf "🇨🇿"
    elif [ $region == "de-berlin" ]; then
        printf "🇩🇪"
    elif [ $region == "de-frankfurt" ]; then
        printf "🇩🇪"
    elif [ $region == "denmark" ]; then
        printf "🇩🇰"
    elif [ $region == "egypt" ]; then
        printf "🇪🇬"
    elif [ $region == "estonia" ]; then
        printf "🇪🇪"
    elif [ $region == "finland" ]; then
        printf "🇫🇮"
    elif [ $region == "france" ]; then
        printf "🇫🇷"
    elif [ $region == "georgia" ]; then
        printf "🇬🇪"
    elif [ $region == "greece" ]; then
        printf "🇬🇷"
    elif [ $region == "greenland" ]; then
        printf "🇬🇱"
    elif [ $region == "hong-kong" ]; then
        printf "🇭🇰"
    elif [ $region == "hungary" ]; then
        printf "🇭🇺"
    elif [ $region == "iceland" ]; then
        printf "🇮🇸"
    elif [ $region == "india" ]; then
        printf "🇮🇳"
    elif [ $region == "ireland" ]; then
        printf "🇮🇪"
    elif [ $region == "isle-of-man" ]; then
        printf "🇮🇲"
    elif [ $region == "israel" ]; then
        printf "🇮🇱"
    elif [ $region == "italy" ]; then
        printf "🇮🇹"
    elif [ $region == "japan" ]; then
        printf "🇯🇵"
    elif [ $region == "kazakhstan" ]; then
        printf "🇰🇿"
    elif [ $region == "latvia" ]; then
        printf "🇱🇻"
    elif [ $region == "liechtenstein" ]; then
        printf "🇱🇮"
    elif [ $region == "lithuania" ]; then
        printf "🇱🇹"
    elif [ $region == "luxembourg" ]; then
        printf "🇱🇺"
    elif [ $region == "macao" ]; then
        printf "🇲🇴"
    elif [ $region == "macedonia" ]; then
        printf "🇲🇰"
    elif [ $region == "malta" ]; then
        printf "🇲🇹"
    elif [ $region == "mexico" ]; then
        printf "🇲🇽"
    elif [ $region == "moldova" ]; then
        printf "🇲🇩"
    elif [ $region == "monaco" ]; then
        printf "🇲🇨"
    elif [ $region == "mongolia" ]; then
        printf "🇲🇳"
    elif [ $region == "montenegro" ]; then
        printf "🇲🇪"
    elif [ $region == "morocco" ]; then
        printf "🇲🇦"
    elif [ $region == "netherlands" ]; then
        printf "🇳🇱"
    elif [ $region == "new-zealand" ]; then
        printf "🇳🇿"
    elif [ $region == "nigeria" ]; then
        printf "🇳🇬"
    elif [ $region == "norway" ]; then
        printf "🇳🇴"
    elif [ $region == "panama" ]; then
        printf "🇵🇦"
    elif [ $region == "philippines" ]; then
        printf "🇵🇭"
    elif [ $region == "poland" ]; then
        printf "🇵🇱"
    elif [ $region == "portugal" ]; then
        printf "🇵🇹"
    elif [ $region == "qatar" ]; then
        printf "🇶🇦"
    elif [ $region == "romania" ]; then
        printf "🇷🇴"
    elif [ $region == "saudi-arabia" ]; then
        printf "🇸🇦"
    elif [ $region == "serbia" ]; then
        printf "🇷🇸"
    elif [ $region == "singapore" ]; then
        printf "🇸🇬"
    elif [ $region == "slovakia" ]; then
        printf "🇸🇰"
    elif [ $region == "south-africa" ]; then
        printf "🇿🇦"
    elif [ $region == "spain" ]; then
        printf "🇪🇸"
    elif [ $region == "sri-lanka" ]; then
        printf "🇱🇰"
    elif [ $region == "sweden" ]; then
        printf "🇸🇪"
    elif [ $region == "switzerland" ]; then
        printf "🇨🇭"
    elif [ $region == "taiwan" ]; then
        printf "🇹🇼"
    elif [ $region == "turkey" ]; then
        printf "🇹🇷"
    elif [ $region == "uk-london" ]; then
        printf "🇬🇧"
    elif [ $region == "uk-london---streaming-optimized" ]; then
        printf "🇬🇧"
    elif [ $region == "uk-manchester" ]; then
        printf "🇬🇧"
    elif [ $region == "uk-southampton" ]; then
        printf "🇬🇧"
    elif [ $region == "ukraine" ]; then
        printf "🇺🇦"
    elif [ $region == "united-arab-emirates" ]; then
        printf "🇦🇪"
    elif [ $region == "us-atlanta" ]; then
        printf "🇺🇸"
    elif [ $region == "us-california" ]; then
        printf "🇺🇸"
    elif [ $region == "us-chicago" ]; then
        printf "🇺🇸"
    elif [ $region == "us-denver" ]; then
        printf "🇺🇸"
    elif [ $region == "us-east" ]; then
        printf "🇺🇸"
    elif [ $region == "us-florida" ]; then
        printf "🇺🇸"
    elif [ $region == "us-houston" ]; then
        printf "🇺🇸"
    elif [ $region == "us-las-vegas" ]; then
        printf "🇺🇸"
    elif [ $region == "us-new-york" ]; then
        printf "🇺🇸"
    elif [ $region == "us-seattle" ]; then
        printf "🇺🇸"
    elif [ $region == "us-silicon-valley" ]; then
        printf "🇺🇸"
    elif [ $region == "us-texas" ]; then
        printf "🇺🇸"
    elif [ $region == "us-washington-dc" ]; then
        printf "🇺🇸"
    elif [ $region == "us-west" ]; then
        printf "🇺🇸"
     elif [ $region == "venezuela" ]; then
        printf "🇻🇪"
    elif [ $region == "vietnam" ]; then
        printf "🇻🇳"
    else
        printf ""
    fi
}

main

