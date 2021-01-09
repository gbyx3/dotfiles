import feedparser
from subprocess import call
# Official documentation from SR: https://sverigesradio.se/api/documentation/v2/

# Your region according to SR (I cant remember where I found this ID)
region = "10326"
sr_trafic_rss_url = "http://api.sr.se/api/rss/pod/{}".format(region)

# Get the entire RSS feed
feed = feedparser.parse( sr_trafic_rss_url )

# Select the latest entry
latest = feed[ "entries" ][0][ "links" ]

# Extract the URL from the latest entry
recording = latest[1]['href'].split('?')[0]

# Call vlc and have it stream the recording
call(["vlc", recording])

