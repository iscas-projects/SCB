(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2042 0)
(declare-sort var709 0)
(declare-sort var1512 0)
(declare-sort var2637 0)
(declare-sort var3941 0)
(declare-sort var2713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInputStream/2128369995 (var709) var2637)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun escapeWSAndQuote/-639765116 (var2042 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getOffendingToken/-1021747607 (var2713) var3941)
(declare-fun cast-from-var1512-to-var2713 (var1512) var2713)
(declare-fun notifyErrorListeners/-1265892977 (var709 var3941 String var2713) void)
(declare-const null-var2042 var2042)
(declare-const null-var709 var709)
(declare-const null-var1512 var1512)
(declare-const null-var2637 var2637)
(declare-const var3335 var2042) ; Statement: r2 := @this: org.antlr.v4.runtime.DefaultErrorStrategy 
(assert (not (= var3335 null-var2042)))
(declare-const var3489 var709) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.Parser 
(assert (not (= var3489 null-var709)))
(declare-const var1500 var1512) ; Statement: r3 := @parameter1: org.antlr.v4.runtime.NoViableAltException 
(assert (not (= var1500 null-var1512)))
(assert true)
(define-const var2169 var2637 (getInputStream/2128369995 var3489)) ; Statement: r1 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getInputStream()>() 
 ; Statement: if r1 == null goto r7 = "<unknown input>" 
(assert (= var2169 null-var2637)) ; Cond: r1 == null 
(define-const var3345 String "<unknown input>") ; Statement: r7 = "<unknown input>" 
(assert true) ; Non Conditional
(define-const var825 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var825)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var825!1 String)
(assert (= var825!1 ""))
(assert true)
(define-const var143 String (append/672562846 var825!1 "no viable alternative at input ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no viable alternative at input ") 
(declare-const var825!2 String)
(assert (= var825!2 (str.++ var825!1 "no viable alternative at input ")))
(assert true)
(define-const var2542 String (escapeWSAndQuote/-639765116 var3335 var3345)) ; Statement: $r10 = virtualinvoke r2.<org.antlr.v4.runtime.DefaultErrorStrategy: java.lang.String escapeWSAndQuote(java.lang.String)>(r7) 
(assert true)
(define-const var310 String (append/672562846 var143 var2542)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var143!1 String)
(assert (= var143!1 (str.++ var143 var2542)))
(assert true)
(define-const var3952 String (toString/-2075883882 var310)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3317 var3941 (getOffendingToken/-1021747607 (cast-from-var1512-to-var2713 var1500))) ; Statement: $r13 = virtualinvoke r3.<org.antlr.v4.runtime.NoViableAltException: org.antlr.v4.runtime.Token getOffendingToken()>() 
(assert true)
;(assert (notifyErrorListeners/-1265892977 var3489 var3317 var3952 (cast-from-var1512-to-var2713 var1500))) ; Statement: virtualinvoke r0.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(org.antlr.v4.runtime.Token,java.lang.String,org.antlr.v4.runtime.RecognitionException)>($r13, $r12, r3) 

(declare-const var3489!1 var709)
(declare-const var3317!1 var3941)
(declare-const var3952!1 String)
(declare-const var1500!1 var1512)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getInputStream/2128369995=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), escapeWSAndQuote/-639765116=([org.antlr.v4.runtime.DefaultErrorStrategy, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getOffendingToken/-1021747607=([org.antlr.v4.runtime.RecognitionException], org.antlr.v4.runtime.Token), cast-from-var1512-to-var2713=([org.antlr.v4.runtime.NoViableAltException], org.antlr.v4.runtime.RecognitionException), notifyErrorListeners/-1265892977=([org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.Token, java.lang.String, org.antlr.v4.runtime.RecognitionException], void)}
; {var2042=org.antlr.v4.runtime.DefaultErrorStrategy, var3335=r2, var709=org.antlr.v4.runtime.Parser, var3489=r0, var1512=org.antlr.v4.runtime.NoViableAltException, var1500=r3, var2637=org.antlr.v4.runtime.TokenStream, var2169=r1, var3345=r7, var825=$r14, var143=$r9, var2542=$r10, var310=$r11, var3952=$r12, var3941=org.antlr.v4.runtime.Token, var2713=org.antlr.v4.runtime.RecognitionException, var3317=$r13}
; {org.antlr.v4.runtime.DefaultErrorStrategy=var2042, r2=var3335, org.antlr.v4.runtime.Parser=var709, r0=var3489, org.antlr.v4.runtime.NoViableAltException=var1512, r3=var1500, org.antlr.v4.runtime.TokenStream=var2637, r1=var2169, r7=var3345, $r14=var825, $r9=var143, $r10=var2542, $r11=var310, $r12=var3952, org.antlr.v4.runtime.Token=var3941, org.antlr.v4.runtime.RecognitionException=var2713, $r13=var3317}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.antlr.v4.runtime.DefaultErrorStrategy;	r0 := @parameter0: org.antlr.v4.runtime.Parser;	r3 := @parameter1: org.antlr.v4.runtime.NoViableAltException;	r1 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getInputStream()>();	if r1 == null goto r7 = "<unknown input>";	r7 = "<unknown input>";	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no viable alternative at input ");	$r10 = virtualinvoke r2.<org.antlr.v4.runtime.DefaultErrorStrategy: java.lang.String escapeWSAndQuote(java.lang.String)>(r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke r3.<org.antlr.v4.runtime.NoViableAltException: org.antlr.v4.runtime.Token getOffendingToken()>();	virtualinvoke r0.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(org.antlr.v4.runtime.Token,java.lang.String,org.antlr.v4.runtime.RecognitionException)>($r13, $r12, r3);	return
;block_num 3