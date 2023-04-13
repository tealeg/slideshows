#lang slideshow/widescreen

(require slideshow/text
	 pict/color)


(define (subpara elm)
  (para elm))

(define (quote-slide text author)
  (slide
   (para (format "~s" text))
   (with-size 12 (it author))))

(define def-count 0)

(define (definition-slide text)
  (let [(count def-count)]
    (set! def-count (+ def-count 1))
    (slide
     #:title "Define DevX!"
     (with-size 64 (para (format "Definition #~a" count)))
     'next
     (para text)
     'next
     (para "End of presentation?"))))

(define (statement-slide text)
  (slide
   (with-size 64 (para text))))


(define (audience-slide text)
  (slide
   (with-size 64 (red (para text)))))

(define (dichotemy-slide title engineer sales)
  (list (slide
	 #:title title
	 (scale (bitmap "Engineer.jpg") 0.1)
	 (para "The well-meaning engineer:")
	 'next
	 (orange (subpara engineer)))
	(slide
	 #:title title
	 (scale (bitmap "salesman.png") 0.1)
	 (para "The well-meaning sales director:")
	 'next
	 (purple (subpara sales)))))

(define (salesman-slide text)
     (with-size 48
		(slide
		 (scale (bitmap "salesman.png") 0.1)
		 (para "The well-meaning sales director")
		 'next
		 (purple (para text)))))

(define (engineer-slide text)
   (with-size 48
	      (slide
	       (scale (bitmap "Engineer.jpg") 0.1)
	       (para "The well-meaning engineer")
	       'next
	       (orange (para text)))))

(define (lyric-quiz lyric file artist rule)
    (statement-slide "Name the original artist/band!")
    (statement-slide  (format "~s" lyric))
    (slide
	    (scale (bitmap file) 0.3)
	    (t (format "The ~a Rule" artist)))

    (statement-slide rule))

(with-font "IBM Plex Sans"
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
	   (audience-slide "Let's ask the straw-folks again!")

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

	   (salesman-slide "Isn't DevX like UX for engineers?")

	   (engineer-slide
	    "User eXperience (UX) is a special aspect of Customer eXperience (CX) distinct to software.")
	   (statement-slide "... and so is DevX")
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
	    (para "from my experience:")
	    (scale (bitmap "overlapping-magesteria.png") 0.3))
	   
	   (definition-slide "We have some vague scope that is shared with other teams. Sometimes it involves customers, sometimes it involves internal engineers, but rarely both.")

	   (engineer-slide "Geoff, what do you actually do?")

	   (slide
	    #:title "Define DevX!"
	    (para "Analyse customer needs")
	    'next
	    (para "Build software, documentation and other artifacts to meet those needs")
	    'next
	    (para "Define, refine and document processes")
	    'next
	    (para "Support those software, artifacts and processes"))

	   (audience-slide "But that could be any engineering team!")

	   (definition-slide "DevX is just good software engineering")

	   (slide
	    (bitmap "alice.png"))

	   (audience-slide "Life is too short for this, Geoff!")

	   (statement-slide "OK, let me tell you what I think.")

	   (statement-slide "both our straw-folks put way too much emphasis on the wrong areas")

	   (statement-slide "Pop quiz!")

	   (statement-slide "60% of people prefer one model of customer service, what is it?")
	   (slide
	    (with-size 64 (t "Online self-service"))
	    (t "American Express Customer Services Barometer"))

	   (statement-slide "What percentage of people will take their business elsewhere, rather than seek further support, after a poor experience?")

	   (slide (with-size 256 (t "33%"))
		  (t "American Express Customer Services Barometer"))

	   (statement-slide "How many people in this room are using my football-score prediction game?")

	   (slide (with-size 256 (t "1")))

	   (slide (with-size 256 (t "surprise"))
		  (with-size 32 (t "Engineers are people!")))

	   (statement-slide
	    "The sales-director is wrong to place so much emphasis on personal support.")

	   (statement-slide
	    "The engineer forgot that all the code in the world won't help if nobody knows it exists, or how to use it.")

	   (statement-slide "... and all of those dichotomies are misleading.")

	   (slide
	    #:title "Goals of DevX"
	      (item "Attract engineers")
	      'next
	      (subitem "Because we want to work with the best people!")
	      'next 
	      (item "Make engineers happy to work with our software")
	      'next
	      (subitem "Because we care, and we want them to know it")
	      'next
	      (item "Reduce lag and effort for engineers")
	      'next
	      (subitem "Because we don't want to waste people's time")
	      'next
	      (item "Make our product as self-service as possible")
	      'next
	      (subitem "Because 60% of people prefer it")
	      'next
	      (item "Help our customers reach their goals")
	      'next
	      (subitem "Because customers success is our success"))
	   
	     (audience-slide "OK hippy, what do you really want?")

	   (slide
	    #:title "Secret evil goals of DevX"
	      (item "Attract engineers")
	      'next
	      (subitem "Money printer goes brrrrrr")
	      'next 
	      (item "Make engineers happy to work with our software")
	      'next
	      (subitem "Money printer goes brrrrr for longer")
	      'next
	      (item "Reduce lag and effort for engineers")
	      'next
	      (subitem "Engineers find a way to remove their slowest feedback loop.")
	      'next
	      (item "Make our product as self-service as possible")
	      'next
	      (subitem "Less work, fewer staff, more money printer, more party")
	      'next
	      (item "Help our customers reach their goals")
	      'next
	      (subitem ".. because money"))
	    
	   (audience-slide "Where are you going with this?")

	   (statement-slide "To the ski-jump!")


	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "Tea-leg's Ski-Jump"))

	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "The most general model of a developers journey"))

	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "The horizontal axis is time"))

	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "The vertical axis is 'developer momentum'"))
	   
	   (definition-slide "DevX is the art of building the ski-jump")

	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "Everything the engineer wanted is a subset of 'Product'"))

	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "Everything the sales-director wanted is in 'Support'"))
	   

	   (slide
	    (scale
	     (bitmap "slope.jpeg") 0.4)
	    (t "Everything apart from 'Product' and 'Support' is about communication"))

	   
	   (audience-slide "What happens if we fail to Motivate?")
	   
	   (slide
	    (scale
	     (bitmap "slope-no-motivation.jpg") 0.4))

	   (audience-slide "What happens if we fail to Deliver?")

	   (slide
	    (scale
	     (bitmap "slope-poor-delivery.jpeg") 0.4))


	   (audience-slide "This is a huge scope!")
	   (slide
	    (scale (bitmap "overlapping-magesteria.png") 0.3)
	    'next
	    (t "Yes.  You cannot do this alone.")
	    'next
	   (t "You need allies."))

	   (definition-slide "DevX is a field in which we mainly talk about what DevX is.")

	   (statement-slide "This is the first step.")

	   (audience-slide "How do you remember all the things?")

	   (statement-slide "Glad you asked..")
	   (statement-slide "Pop Quiz Time!")


	   (lyric-quiz 
	    "Who is making these new brown clouds?"
	    "brown-clouds.jpg"
	    "Frank Zappa"
	    "You have to advertise.  Even internally.")
	   (slide
	    (para "Nobody will use you if they don't know you exist."))
	   
	   (audience-slide "But I'm internal, I don't need to boast.")

	   (slide
	    (para "Example: Internal Platform Team")
	    (subpara "1. You have competitors: AWS, Azure, GCP all have 'native' offerings.")
	    (subpara "2. Your competitors spend fortunes trying to win your customers.")
	    (subpara "3. The grass is always greener on the other side of the fence."))

	   (statement-slide "The grass is always greener where you water it!")

	   (lyric-quiz
	    "I find it hard, it's hard to find"
	    "i-find-it-hard.jpg"
	    "Nirvana"
	    "Nothing is *done* until it is documented")
	   (slide
	    (para "Most of DevX is about getting knowledge into people's heads")
	    'next
	    (para "Documentation must exist")
	    'next
	    (para "Documentation must be easily discovered")
	    )

	   (statement-slide "WIKI = Where Information Kills Itself")

	   (lyric-quiz
	    "You'd better work, bi#!%h!"
	    "work.jpg"
	    "Britney Spears"
	    "Product quality is a DevX issue")
	   (slide
	    (para "This encompasses (at least):")
	    'next
	    (subpara "Representing developers as stakeholders")
	    'next
	    (subpara "Developer specific UX")
	    'next
	    (subpara "Release Management")
	    'next
	    (subpara "Testing of Documentation/Materials"))

	   (lyric-quiz
	    "...if you try sometimes, you'll find, you get what you need."
	    "what-you-need.jpg"
	    "Rolling Stones"
	    "Take a stance")
	   
	   (statement-slide "Good experiences result from good design")
	   (statement-slide "Good design requires expertise and thought")
	   (statement-slide "The customer is *not* always right")
	   (slide
	    (para "Example: Use case driven documentation:")
	    'next
	    (subpara "https://diataxis.fr")
	    'next
	    (subpara "Tutorial (First steps)")
	    'next
	    (subpara "How-to Guides (Task oriented)")
	    'next
	    (subpara "Explanation (Deeper understanding)")
	    'next
	    (subpara "Reference (Easy access to information)"))

	   
	   (lyric-quiz
	    "I know karate, judo too"
	    "karate.jpg"
	    "Tom Waits"
	    "Human psychology is a martial art")

	   (slide
	    (para "Understand how motivation works!")
	    'next
	    (para "Learn about design for dopamine.")
	    'next
	    (para "learn about flow")
	    'next
	    (para "learn about UX"))

		     
	   (lyric-quiz
	    "I don't want to talk about it"
	    "talk.jpg"
	    "Crazy Horse"
	    "Optimise for self-service")
	   (dichotemy-slide
	    "Self service"
	    "60% of people prefer it!"
	    "It scales better!")

	   (lyric-quiz
	    "Didn't know I was lost til I found you"
	    "wilderness.jpg"
	    "Madonna"
	    "When you do support, do it passionately")
	   (dichotemy-slide
	    "Support"
	    "Taking time and care with people impresses them."
	    "Self-service means support is a rare and pleasurable experience.")

	   (lyric-quiz
	    "When you believe in things you don't understand, then you suffer"
	    "superstition.jpg"
	    "Stevie Wonder"
	    "Measure twice, cut once")
	   (dichotemy-slide
	    "Measuring"
	    "Customer feedback is a powerful tool. Check your NPS scores."
	    "Look for slow spots on the ski-jump, frustrated developers are there!")
	   (statement-slide "Create a virtuous circle")

	   (audience-slide "Do you have a playlist with those songs?")
	   
	   (slide
	    (t "The playlist is available here:")
	    (hyperlinkize (t "https://open.spotify.com/playlist/79iNeBWnj1OhgnlDcMJ7nQ?si=3977ea3db89e4e68")))
	   
	   (statement-slide "End of Presentation!")


	   
	   
	   (slide
	    #:title "Contact"
	    (para "Mastodon: @tealeg@mastodon.online")
	    (para "GitHub: https://github.com/tealeg/")
	    (para "LinkedIn: https://www.linkedin.com/in/geoffteale")
	    (para "WWW:")
	    (subpara "https://teale.de")
	    (subpara "https://upvest.co")
	    (subpara "https://engineering.upvest.co")
	    )
	   
	   ) ;; with-font

