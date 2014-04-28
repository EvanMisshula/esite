(require 'ox-publish)
(setq org-publish-project-alist
      '(("psite-notes"
	 :base-directory "~/psite/org/"
	 :base-extension "org"
	 :publishing-directory "~/psite/public_html/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 4             ; Just the default for this project.
	 :auto-preamble t
	 :auto-sitemap t
	 :sitemap-filename "sitemap.org"
	 :sitemap-title "Sitemap"
	 :export-creator-info nil
	 :export-author-info nil
	 :auto-postable nil
	 :table-of-contents t
	 :section-number nil
	 :html-postamble "      <p class=\"postamble\">Last updated %d.</p> "
	 :style-include-default nil	 
 )

       ;; ... add all the components here (see below)...
	("psite-static"
	 :base-directory "~/psite/org/"
	 :base-extension "css\\|js\\|png\\|jpg\\|jpeg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "~/psite/public_html/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )

	("psite" :components ("psite-notes" "psite-static"))
      ))
