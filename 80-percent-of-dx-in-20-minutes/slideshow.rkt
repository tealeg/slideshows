#lang slideshow/widescreen

(require slideshow/text
	 pict/color)


(define (quote-slide text author)
  (slide
   (item (format "~s" text))
   (with-size 12 (it author))))

(define def-count 0)

(define (definition-slide text)
  (let [(count def-count)]
    (set! def-count (+ def-count 1))
    (slide
     #:title "Define DevX!"
     (with-size 64 (item (format "Definition #~a" count)))
     'next
     (item text)
     'next
     (item "End of presentation"))))

(define (statement-slide text)
  (slide
   (with-size 64 (item text))))


(define (audience-slide text)
  (slide
   (with-size 64 (red (item text)))))

(define (dichotemy-slide title engineer sales)
  (list (slide
	 #:title title
	 (scale (bitmap "Engineer.jpg") 0.1)
	 (item "The well-meaning engineer:")
	 'next
	 (orange (subitem engineer)))
	(slide
	 #:title title
	 (scale (bitmap "salesman.png") 0.1)
	 (item "The well-meaning sales director:")
	 'next
	 (purple (subitem sales)))))

(define (salesman-slide text)
     (with-size 48
		(slide
		 (scale (bitmap "salesman.png") 0.1)
		 (item "The well-meaning sales director")
		 'next
		 (purple (item text)))))

(define (engineer-slide text)
   (with-size 48
	      (slide
	       (scale (bitmap "Engineer.jpg") 0.1)
	       (item "The well-meaning engineer")
	       'next
	       (orange (item text)))))


(with-font "Futura"
	   (slide
	    (with-size 80
		       (bt "80% of DevX in 20 minutes"))
	    (with-size 32
		       (it "Geoffrey Teale - Head of DevX @ Upvest"))
	    (t "(nerds call me tea-leg)"))

	   (statement-slide "Meet the straw-folks")

	   (engineer-slide "I speak in orange!")
	   (salesman-slide "I speak in purple!")

	   (audience-slide "And the audience speak in red!")

	   (statement-slide "Together we're going to build a DevX function.  How should we do that?")

	   (audience-slide "Let's look it up on the Internet!")

	   (quote-slide "Every company has a developer experience, but not every company has a Developer Experience team." "Alessandro Cinelli (cirpo), Engineering Manager @ DAZN")

	   (definition-slide "The purpose of DevX is to have a DevX team")

	   (audience-slide "Don't be stupid, Geoff")

	   (statement-slide "Let's look for a more meaningful definition!")

	   (quote-slide "Developer experience refers to how easy or difficult it is for a developer to perform essential tasks needed to implement a change. A positive developer experience would mean these tasks are relatively easy for the team." "Microsoft/GitHub")

	   (definition-slide "DevX makes developers work easy!")

	   (audience-slide "Too broad, Geoff!")
	   (statement-slide "What now?")

	   (audience-slide "What are the straw-folks expectations?")
	   
	   (dichotemy-slide
	    "What is required of DevX?"
	    "DevX should focus on providing tools and libraries to support engineers."
	    "DevX should focus on providing world-class, personal support to our customers.")

	   (definition-slide "DevX provide tools, libraries and customer support to engineers.")
	   
	   (audience-slide "Woah there!")
	   (audience-slide "Who are our customers?")
	   (statement-slide "How should I know who DevX is supposed to serve?")
	   (statement-slide "Let's ask the straw-folks again!")

	   (dichotemy-slide "Who are our customers?"
			    "DevX should clearly be internally focused!"
			    "DevX should clearly be externally focused!")

	   (statement-slide "It seems we're talking about different things?")
	   (audience-slide "There's an elephant in the room!")
	   (slide
	    (scale (bitmap "elephant.png") 0.3)
	    (red (t "It's behind you!")))
	   (statement-slide "Where?")
	   (slide
	    (scale (bitmap "elephant.png") 0.3)
	    (red (t "It's behind you!")))
	   (statement-slide "Let's talk about DevRel")
	   (statement-slide "There are two views on the relationship between DevRel and DevX")
	   
	   (quote-slide "Around the core of 'Developer Experience' there are three main areas of practice [in Developer Relations]: Developer Marketing, Developer Education and Developer Success."
			"Lewko, C. and Parton, J. \"Developer Relations\"")
	   
	   (quote-slide "Developer Experience is a more accurate umbrella term than Developer Relations because it encompasses more responsibilities than are generally bucketed under DevRel."
			"Kurt Kemple")

	   (dichotemy-slide "DevX vs DevRel" "DevX is broader than DevRel!" "DevX is part of DevRel!")
	   
	   (definition-slide "DevX is a field in which we mainly talk about what DevX is.")

	   (audience-slide "That's not funny Geoff")

	   (salesman-slide "Isn't DX like UX for engineers?")

	   (engineer-slide
	    "User eXperience (UX) is a special aspect of Customer eXperience (CX) distinct to software.")
	   (statement-slide "... and so is DX")
	   (statement-slide "Except some UX folks say it's the other way around.")

	   (engineer-slide "Gottfried Koromandelzwergglanzente")
	   (salesman-slide "Gottfried Koromandelzwergglanzente")

	   (engineer-slide "Geoffrey Teale")
	   (salesman-slide "Geoffrey Teale")

	   (statement-slide "Turns out what's easy is subjective and context specific")

	   (statement-slide "DevX isn't UX in the sense most people mean")

	   (audience-slide "Another blind alley")

	   (audience-slide "What now?")
	   (engineer-slide "What's the scope of DevX work?")

	   (slide
	    #:title "Scope of DevX"
	    (item "from my experience:")
	    (scale (bitmap "overlapping-magesteria.png") 0.3))
	   
	   (definition-slide "We have some vague scope that is shared with other teams. Sometimes it involves customers, sometimes it involves internal engineers, but rarely both.")

	   (audience-slide "What do you actually do?")

	   (slide
	    #:title "Define DevX!"
	    (item "Analyse customer needs")
	    'next
	    (item "Build software, documentation and other artifacts to meet those needs")
	    'next
	    (item "Define, refine and document processes")
	    'next
	    (item "Support those software, artifacts and processes"))

	   (audience-slide "But that could be any engineering team!")

	   (definition-slide "DevX is just good software engineering")

	   (slide
	    (bitmap "alice.png"))

	   (audience-slide "Life is too short for this, Geoff!")

	   (statement-slide "OK, let me tell you what I think.")

	   (statement-slide "both our straw-folks put way too much emphasis on the wrong areas")

	   (statement-slide "Pop quiz!")

	   (statement-slide "When experiencing an issue, 60% of people prefer one type of support, what is it?")
	   (slide
	    (with-size 128 (t "Self-service")))

	   (statement-slide "What percentage of people will take their business elsewhere, rather than seek support, if they encounter a poorly curated online experience?")

	   (slide (with-size 256 (t "48%")))

	   (statement-slide "How many people in this room are using my football-score prediction game?")

	   (slide (with-size 256 (t "1")))

	   (slide (with-size 256 (t "surprise"))
		  (with-size 32 (t "Engineers are people!")))

	   (statement-slide
	    "The sales-director is wrong to place so much emphasis on personal support.")

	   (statement-slide
	    "The engineer forgot that all the code in the world won't help if nobody knows it exists, or how to use it.")

	   (statement-slide "... and all of those dichotomies are misleading.")

	   (statement-slide "We're always working to improve things for engineers, and actually the ways to do that don't vary as much as you'd think.")

	   (audience-slide "Where are you going with this?")

	   (statement-slide "To the ski-jump!")


	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "The ol' Tea-leg's Ski-Jump"))

	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "Let's try and understand developers journeys"))

	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "Motivation is mostly telling people you exist, and why you're great"))

	    
	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "Product contains software development"))

	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "Product contains QA/Testing"))

	    (slide
	     (scale
	      (bitmap "slope.jpeg") 0.4)
	     (t "Product contains API Governance, UX..etc..etc.."))

	    (slide
	     (scale
	      (bitmap "slope.jpeg") 0.4)
	     (t "Support is self-explanatory (I hope)"))

	    (slide
	     (scale
	      (bitmap "slope.jpeg") 0.4)
	     (t "Everything else in Delivery is Documentation"))

	    (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "Indeed, almost everything here is about communication."))

	   (audience-slide "What happens if we fail to Motivate?")
	   
	   (slide
	    (scale
	     (bitmap "slope-no-motivation.jpg") 0.4))

	   (audience-slide "What happens if we fail to Deliver?")

	   (slide
	    (scale
	     (bitmap "slope-poor-delivery.jpeg") 0.4))
	   
	   (audience-slide "How does the motivation part apply to internal teams?")
	   
	   (slide
	    #:title "Contact"
	    (item "Mastodon: @tealeg@mastodon.online")
	    (item "GitHub: https://github.com/tealeg/")
	    (item "LinkedIn: https://www.linkedin.com/in/geoffteale")
	    (item "WWW:")
	    (subitem "https://teale.de")
	    (subitem "https://upvest.co")
	    (subitem "https://engineering.upvest.co")
	    )
	   
	   ) ;; with-font


;; (with-size 64

;; 	      (slide (scale logo 0.3))

;; (slide
;;  #:title "How to say hello"
;;  (t "Hello, world!"))

;; (slide
;;  #:title "Example"
;;  (item "First step")
;;  'next
;;  (item "Second step")
;;  'next
;;  'alts
;;  (list (list (item "Tentative third step")
;; 		'next
;; 		(item "This isn't working... back up"))
;; 	  (list (item "Third step that works")))
;;  'next
;;  (item "Fourth step"))))
