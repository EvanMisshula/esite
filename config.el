(require 'ox-publish)
(setq org-publish-project-alist
      '(

  ("org-notes-esite"
          ;; Path to your org files.
          :base-directory "~/esite/org/"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "~/esite/psite/"
          :recursive t
          :publishing-function org-md-publish-to-md
          :headline-levels 4 
          :html-extension "html"
	  :table-of-contents t
          :body-only t ;; Only export section between <body> </body>
    )


    ("org-static-esite"
          :base-directory "~/esite/org/"
          :base-extension "css\\|js\\|png\\|jpg\\|jpeg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "~/esite/_site"
          :recursive t
          :publishing-function org-publish-attachment)

    ("esite" :components ("org-notes-esite" "org-static-esite"))
))
