(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3098 0)
(declare-sort var1451 0)
(declare-sort var2642 0)
(declare-sort var136 0)
(declare-sort var426 0)
(declare-sort var2598 0)
(declare-sort var169 0)
(declare-sort var2070 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOffendingToken/-1021747607 (var426) var136)
(declare-fun cast-from-var2642-to-var426 (var2642) var426)
(declare-fun getTokenErrorDisplay/23062818 (var3098 var136) String)
(declare-fun getExpectedTokens/958373116 (var426) var2598)
(declare-fun getVocabulary/1556073641 (var2070) var169)
(declare-fun cast-from-var1451-to-var2070 (var1451) var2070)
(declare-fun toString/-1263708683 (var2598 var169) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun notifyErrorListeners/-1265892977 (var1451 var136 String var426) void)
(declare-const null-var3098 var3098)
(declare-const null-var1451 var1451)
(declare-const null-var2642 var2642)
(declare-const var1690 var3098) ; Statement: r1 := @this: org.antlr.v4.runtime.DefaultErrorStrategy 
(assert (not (= var1690 null-var3098)))
(declare-const var578 var1451) ; Statement: r7 := @parameter0: org.antlr.v4.runtime.Parser 
(assert (not (= var578 null-var1451)))
(declare-const var2136 var2642) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.InputMismatchException 
(assert (not (= var2136 null-var2642)))
(define-const var2357 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2357)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2357!1 String)
(assert (= var2357!1 ""))
(assert true)
(define-const var2644 String (append/672562846 var2357!1 "mismatched input ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mismatched input ") 
(declare-const var2357!2 String)
(assert (= var2357!2 (str.++ var2357!1 "mismatched input ")))
(assert true)
(define-const var988 var136 (getOffendingToken/-1021747607 (cast-from-var2642-to-var426 var2136))) ; Statement: $r3 = virtualinvoke r2.<org.antlr.v4.runtime.InputMismatchException: org.antlr.v4.runtime.Token getOffendingToken()>() 
(assert true)
(define-const var726 String (getTokenErrorDisplay/23062818 var1690 var988)) ; Statement: $r4 = virtualinvoke r1.<org.antlr.v4.runtime.DefaultErrorStrategy: java.lang.String getTokenErrorDisplay(org.antlr.v4.runtime.Token)>($r3) 
(assert true)
(define-const var446 String (append/672562846 var2644 var726)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2644!1 String)
(assert (= var2644!1 (str.++ var2644 var726)))
(assert true)
(define-const var790 String (append/672562846 var446 " expecting ")) ; Statement: $r11 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expecting ") 
(declare-const var446!1 String)
(assert (= var446!1 (str.++ var446 " expecting ")))
(assert true)
(define-const var2484 var2598 (getExpectedTokens/958373116 (cast-from-var2642-to-var426 var2136))) ; Statement: $r9 = virtualinvoke r2.<org.antlr.v4.runtime.InputMismatchException: org.antlr.v4.runtime.misc.IntervalSet getExpectedTokens()>() 
(assert true)
(define-const var351 var169 (getVocabulary/1556073641 (cast-from-var1451-to-var2070 var578))) ; Statement: $r8 = virtualinvoke r7.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Vocabulary getVocabulary()>() 
(assert true)
(define-const var3906 String (toString/-1263708683 var2484 var351)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.misc.IntervalSet: java.lang.String toString(org.antlr.v4.runtime.Vocabulary)>($r8) 
(assert true)
(define-const var2331 String (append/672562846 var790 var3906)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var790!1 String)
(assert (= var790!1 (str.++ var790 var3906)))
(assert true)
(define-const var3815 String (toString/-2075883882 var2331)) ; Statement: r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1142 var136 (getOffendingToken/-1021747607 (cast-from-var2642-to-var426 var2136))) ; Statement: $r14 = virtualinvoke r2.<org.antlr.v4.runtime.InputMismatchException: org.antlr.v4.runtime.Token getOffendingToken()>() 
(assert true)
;(assert (notifyErrorListeners/-1265892977 var578 var1142 var3815 (cast-from-var2642-to-var426 var2136))) ; Statement: virtualinvoke r7.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(org.antlr.v4.runtime.Token,java.lang.String,org.antlr.v4.runtime.RecognitionException)>($r14, r13, r2) 

(declare-const var578!1 var1451)
(declare-const var1142!1 var136)
(declare-const var3815!1 String)
(declare-const var2136!1 var2642)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOffendingToken/-1021747607=([org.antlr.v4.runtime.RecognitionException], org.antlr.v4.runtime.Token), cast-from-var2642-to-var426=([org.antlr.v4.runtime.InputMismatchException], org.antlr.v4.runtime.RecognitionException), getTokenErrorDisplay/23062818=([org.antlr.v4.runtime.DefaultErrorStrategy, org.antlr.v4.runtime.Token], java.lang.String), getExpectedTokens/958373116=([org.antlr.v4.runtime.RecognitionException], org.antlr.v4.runtime.misc.IntervalSet), getVocabulary/1556073641=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.Vocabulary), cast-from-var1451-to-var2070=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), toString/-1263708683=([org.antlr.v4.runtime.misc.IntervalSet, org.antlr.v4.runtime.Vocabulary], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), notifyErrorListeners/-1265892977=([org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.Token, java.lang.String, org.antlr.v4.runtime.RecognitionException], void)}
; {var3098=org.antlr.v4.runtime.DefaultErrorStrategy, var1690=r1, var1451=org.antlr.v4.runtime.Parser, var578=r7, var2642=org.antlr.v4.runtime.InputMismatchException, var2136=r2, var2357=$r0, var2644=$r5, var136=org.antlr.v4.runtime.Token, var426=org.antlr.v4.runtime.RecognitionException, var988=$r3, var726=$r4, var446=$r6, var790=$r11, var2598=org.antlr.v4.runtime.misc.IntervalSet, var2484=$r9, var169=org.antlr.v4.runtime.Vocabulary, var2070=org.antlr.v4.runtime.Recognizer, var351=$r8, var3906=$r10, var2331=$r12, var3815=r13, var1142=$r14}
; {org.antlr.v4.runtime.DefaultErrorStrategy=var3098, r1=var1690, org.antlr.v4.runtime.Parser=var1451, r7=var578, org.antlr.v4.runtime.InputMismatchException=var2642, r2=var2136, $r0=var2357, $r5=var2644, org.antlr.v4.runtime.Token=var136, org.antlr.v4.runtime.RecognitionException=var426, $r3=var988, $r4=var726, $r6=var446, $r11=var790, org.antlr.v4.runtime.misc.IntervalSet=var2598, $r9=var2484, org.antlr.v4.runtime.Vocabulary=var169, org.antlr.v4.runtime.Recognizer=var2070, $r8=var351, $r10=var3906, $r12=var2331, r13=var3815, $r14=var1142}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.antlr.v4.runtime.misc.IntervalSet: java.lang.String toString(org.antlr.v4.runtime.Vocabulary)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.DefaultErrorStrategy;	r7 := @parameter0: org.antlr.v4.runtime.Parser;	r2 := @parameter1: org.antlr.v4.runtime.InputMismatchException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mismatched input ");	$r3 = virtualinvoke r2.<org.antlr.v4.runtime.InputMismatchException: org.antlr.v4.runtime.Token getOffendingToken()>();	$r4 = virtualinvoke r1.<org.antlr.v4.runtime.DefaultErrorStrategy: java.lang.String getTokenErrorDisplay(org.antlr.v4.runtime.Token)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r11 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expecting ");	$r9 = virtualinvoke r2.<org.antlr.v4.runtime.InputMismatchException: org.antlr.v4.runtime.misc.IntervalSet getExpectedTokens()>();	$r8 = virtualinvoke r7.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Vocabulary getVocabulary()>();	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.misc.IntervalSet: java.lang.String toString(org.antlr.v4.runtime.Vocabulary)>($r8);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r2.<org.antlr.v4.runtime.InputMismatchException: org.antlr.v4.runtime.Token getOffendingToken()>();	virtualinvoke r7.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(org.antlr.v4.runtime.Token,java.lang.String,org.antlr.v4.runtime.RecognitionException)>($r14, r13, r2);	return
;block_num 1