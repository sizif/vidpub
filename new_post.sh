function new_post(){
	cd_posts
	SLUGIFIED="$(echo -n "$1" | sed -e 's/[^[:alnum:]]/-/g' | tr -s '-' | tr A-Z a-z)"
	SLUG=$(date + "%Y-%m-%d"-$SLUGIFIED.md)
	echo -e "---\nlayout: post\ntitle: '$1'\nfeatured_image: ''\ncomments: false\ntags: \nsummary: 'nsummary: 'Summary Here' \n---n\n## Be Briliant" > $SLUG
	echo $SLUG
	cd../
}