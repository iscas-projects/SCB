(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2098 0)
(declare-sort var1194 0)
(declare-sort var3190 0)
(declare-sort var3215 0)
(declare-sort var3282 0)
(declare-sort var900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInputStream/-931086399 (var1194) var3215)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun escapeWSAndQuote/-1413490239 (var2098 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getOffendingToken/-1678522683 (var900) var3282)
(declare-fun cast-from-var3190-to-var900 (var3190) var900)
(declare-fun notifyErrorListeners/-935134556 (var1194 var3282 String var900) void)
(declare-const null-var2098 var2098)
(declare-const null-var1194 var1194)
(declare-const null-var3190 var3190)
(declare-const null-var3215 var3215)
(declare-const var1177 var2098) ; Statement: r2 := @this: com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy 
(assert (not (= var1177 null-var2098)))
(declare-const var3294 var1194) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Parser 
(assert (not (= var3294 null-var1194)))
(declare-const var1972 var3190) ; Statement: r3 := @parameter1: com.github.jknack.handlebars.internal.antlr.NoViableAltException 
(assert (not (= var1972 null-var3190)))
(assert true)
(define-const var1536 var3215 (getInputStream/-931086399 var3294)) ; Statement: r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getInputStream()>() 
 ; Statement: if r1 == null goto r7 = "<unknown input>" 
(assert (= var1536 null-var3215)) ; Cond: r1 == null 
(define-const var618 String "<unknown input>") ; Statement: r7 = "<unknown input>" 
(assert true) ; Non Conditional
(define-const var2665 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2665)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2665!1 String)
(assert (= var2665!1 ""))
(assert true)
(define-const var898 String (append/672562846 var2665!1 "no viable alternative at input ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no viable alternative at input ") 
(declare-const var2665!2 String)
(assert (= var2665!2 (str.++ var2665!1 "no viable alternative at input ")))
(assert true)
(define-const var1676 String (escapeWSAndQuote/-1413490239 var1177 var618)) ; Statement: $r10 = virtualinvoke r2.<com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy: java.lang.String escapeWSAndQuote(java.lang.String)>(r7) 
(assert true)
(define-const var157 String (append/672562846 var898 var1676)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var898!1 String)
(assert (= var898!1 (str.++ var898 var1676)))
(assert true)
(define-const var1766 String (toString/-2075883882 var157)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var177 var3282 (getOffendingToken/-1678522683 (cast-from-var3190-to-var900 var1972))) ; Statement: $r13 = virtualinvoke r3.<com.github.jknack.handlebars.internal.antlr.NoViableAltException: com.github.jknack.handlebars.internal.antlr.Token getOffendingToken()>() 
(assert true)
;(assert (notifyErrorListeners/-935134556 var3294 var177 var1766 (cast-from-var3190-to-var900 var1972))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: void notifyErrorListeners(com.github.jknack.handlebars.internal.antlr.Token,java.lang.String,com.github.jknack.handlebars.internal.antlr.RecognitionException)>($r13, $r12, r3) 

(declare-const var3294!1 var1194)
(declare-const var177!1 var3282)
(declare-const var1766!1 String)
(declare-const var1972!1 var3190)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getInputStream/-931086399=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), escapeWSAndQuote/-1413490239=([com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getOffendingToken/-1678522683=([com.github.jknack.handlebars.internal.antlr.RecognitionException], com.github.jknack.handlebars.internal.antlr.Token), cast-from-var3190-to-var900=([com.github.jknack.handlebars.internal.antlr.NoViableAltException], com.github.jknack.handlebars.internal.antlr.RecognitionException), notifyErrorListeners/-935134556=([com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.Token, java.lang.String, com.github.jknack.handlebars.internal.antlr.RecognitionException], void)}
; {var2098=com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy, var1177=r2, var1194=com.github.jknack.handlebars.internal.antlr.Parser, var3294=r0, var3190=com.github.jknack.handlebars.internal.antlr.NoViableAltException, var1972=r3, var3215=com.github.jknack.handlebars.internal.antlr.TokenStream, var1536=r1, var618=r7, var2665=$r14, var898=$r9, var1676=$r10, var157=$r11, var1766=$r12, var3282=com.github.jknack.handlebars.internal.antlr.Token, var900=com.github.jknack.handlebars.internal.antlr.RecognitionException, var177=$r13}
; {com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy=var2098, r2=var1177, com.github.jknack.handlebars.internal.antlr.Parser=var1194, r0=var3294, com.github.jknack.handlebars.internal.antlr.NoViableAltException=var3190, r3=var1972, com.github.jknack.handlebars.internal.antlr.TokenStream=var3215, r1=var1536, r7=var618, $r14=var2665, $r9=var898, $r10=var1676, $r11=var157, $r12=var1766, com.github.jknack.handlebars.internal.antlr.Token=var3282, com.github.jknack.handlebars.internal.antlr.RecognitionException=var900, $r13=var177}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Parser;	r3 := @parameter1: com.github.jknack.handlebars.internal.antlr.NoViableAltException;	r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getInputStream()>();	if r1 == null goto r7 = "<unknown input>";	r7 = "<unknown input>";	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no viable alternative at input ");	$r10 = virtualinvoke r2.<com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy: java.lang.String escapeWSAndQuote(java.lang.String)>(r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke r3.<com.github.jknack.handlebars.internal.antlr.NoViableAltException: com.github.jknack.handlebars.internal.antlr.Token getOffendingToken()>();	virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: void notifyErrorListeners(com.github.jknack.handlebars.internal.antlr.Token,java.lang.String,com.github.jknack.handlebars.internal.antlr.RecognitionException)>($r13, $r12, r3);	return
;block_num 3