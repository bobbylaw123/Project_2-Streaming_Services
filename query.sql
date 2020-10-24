CREATE TABLE netflix_vs_others AS
SELECT netflix.*
	   , CASE WHEN "Hulu" IS NULL THEN 'Nope' ELSE "Hulu" END "Hulu"
	   , CASE WHEN "Prime" IS NULL THEN 'Nope' ELSE "Prime" END "Prime"
FROM netflix
LEFT JOIN hulu ON netflix."Title of Show" = hulu."Title of Show"
LEFT JOIN prime ON netflix."Title of Show" = prime."Title of Show";
SELECT *
FROM netflix_vs_others;