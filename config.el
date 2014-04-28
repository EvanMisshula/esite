(require 'ox-publish)
(setq org-publish-project-alist
      '(

  ("org-notes-evsite"
          ;; Path to your org files.
          :base-directory "~/evsite/org/"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "~/evsite/psite/"
          :recursive t
          :publishing-function org-md-publish-to-md
          :headline-levels 4 
          :html-extension "html"
	  :table-of-contents t
          :body-only t ;; Only export section between <body> </body>
    )


    ("org-static-evsite"
          :base-directory "~/evsite/org/"
          :base-extension "css\\|js\\|png\\|jpg\\|jpeg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "~/evsite/_site"
          :recursive t
          :publishing-function org-publish-attachment)

    ("evsite" :components ("org-notes-evsite" "org-static-evsite"))
))
