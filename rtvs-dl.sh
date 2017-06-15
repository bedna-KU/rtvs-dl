echo "Dowload page: "$1
# Download page and extract playlist
playlist=$(curl -s $1 | grep -i ://www.rtvs.sk/json/archive)
# Playlist to array
playlist_array=($playlist)
# Extract playlist link
playlist_link=$(echo ${playlist_array[1]} | sed 's/\"//g')
echo "Download playlist: "$playlist_link
# Extract line with link to stream
stream_tmp="$(curl -s $playlist_link)"
stream_name=$(echo "${stream_tmp%x}" | grep "file\" :" | grep smil | head -1)
stream_title=$(echo "${stream_tmp%x}" | grep "title")
# Stream link name to array
stream_name_array=($stream_name)
# Extract link and remove quotes and commas
stream_link=$(echo ${stream_name_array[2]} | sed 's/[\",]//g')
# Extract title
stream_title=$(echo "$stream_title" | cut -d ":" -f 2)
# Remove ", from end
stream_title=$(echo "$stream_title" | sed 's/\",//g')
# Reove quotes
stream_title=$(echo "$stream_title" | sed 's/\"//g')
# Trim
stream_title=$(echo "$stream_title" | sed 's/^\s//g')
# Replace space to underscore
stream_title=$(echo "$stream_title" | sed 's/\s/_/g')
echo "Download stream link: "$stream_link
echo "Stream title: "$stream_title
ffmpeg -i $stream_link -acodec mp3 -vcodec copy $stream_title.mkv
