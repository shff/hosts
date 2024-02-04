curl \
  "https://winhelp2002.mvps.org/hosts.txt" \
  "https://someonewhocares.org/hosts/zero/hosts" \
  "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts" \
  "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext" \
  "https://raw.githubusercontent.com/hoshsadiq/adblock-nocoin-list/master/hosts.txt" \
  "https://raw.githubusercontent.com/jmdugan/blocklists/master/corporations/facebook/all-but-whatsapp2" \
  "https://raw.githubusercontent.com/notracking/hosts-blocklists/master/hostnames.txt" \
  "https://raw.githubusercontent.com/shff/hosts/master/hosts" \
  "https://raw.githubusercontent.com/shff/hosts/master/anti-reddit" \
  "https://raw.githubusercontent.com/dotspencer/block-admiral/master/hosts" \
  "https://raw.githubusercontent.com/tumatanquang/simple-filters/main/hosts" \
  | sed -e 's/127.0.0.1/0.0.0.0/' -e 's/  / /' -e 's/ \+/ /' -e 's/#.*$//' \
  | tr -d '\r' \
  | awk "{gsub(/\t+/,\" \");print}" \
  | egrep "^0.0.0.0" \
  | grep -v \"thepiratebay.\" \
  | sort -fu \
  | uniq -i \
  > allhosts
