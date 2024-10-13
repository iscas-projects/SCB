(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1665 0)
(declare-sort var838 0)
(declare-sort var3193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOffendingToken/-1678522683 (var838) var3193)
(declare-fun var3193_getLine/1695299143 (var3193) Int)
(declare-fun var3193_getCharPositionInLine/-1512232701 (var3193) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1665 var1665)
(declare-const null-var838 var838)
(declare-const var606 var1665) ; Statement: r9 := @this: com.github.jknack.handlebars.internal.antlr.Recognizer 
(assert (not (= var606 null-var1665)))
(declare-const var2474 var838) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.RecognitionException 
(assert (not (= var2474 null-var838)))
(assert true)
(define-const var1431 var3193 (getOffendingToken/-1678522683 var2474)) ; Statement: $r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.RecognitionException: com.github.jknack.handlebars.internal.antlr.Token getOffendingToken()>() 
(define-const var816 Int (var3193_getLine/1695299143 var1431)) ; Statement: i0 = interfaceinvoke $r1.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(assert true)
(define-const var381 var3193 (getOffendingToken/-1678522683 var2474)) ; Statement: $r2 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.RecognitionException: com.github.jknack.handlebars.internal.antlr.Token getOffendingToken()>() 
(define-const var1855 Int (var3193_getCharPositionInLine/-1512232701 var381)) ; Statement: i1 = interfaceinvoke $r2.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(define-const var3016 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3016)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3016!1 String)
(assert (= var3016!1 ""))
(assert true)
(define-const var1007 String (append/672562846 var3016!1 "line ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ") 
(declare-const var3016!2 String)
(assert (= var3016!2 (str.++ var3016!1 "line ")))
(assert true)
(define-const var2440 String (append/-1001720160 var1007 var816)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1007!1 String)
(assert (str.prefixof var1007 var1007!1))
(assert true)
(define-const var128 String (append/672562846 var2440 ":")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2440!1 String)
(assert (= var2440!1 (str.++ var2440 ":")))
(assert true)
(define-const var1201 String (append/-1001720160 var128 var1855)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var128!1 String)
(assert (str.prefixof var128 var128!1))
(assert true)
(define-const var506 String (toString/-2075883882 var1201)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getOffendingToken/-1678522683=([com.github.jknack.handlebars.internal.antlr.RecognitionException], com.github.jknack.handlebars.internal.antlr.Token), var3193_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var3193_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1665=com.github.jknack.handlebars.internal.antlr.Recognizer, var606=r9, var838=com.github.jknack.handlebars.internal.antlr.RecognitionException, var2474=r0, var3193=com.github.jknack.handlebars.internal.antlr.Token, var1431=$r1, var816=i0, var381=$r2, var1855=i1, var3016=$r3, var1007=$r4, var2440=$r5, var128=$r6, var1201=$r7, var506=$r8}
; {com.github.jknack.handlebars.internal.antlr.Recognizer=var1665, r9=var606, com.github.jknack.handlebars.internal.antlr.RecognitionException=var838, r0=var2474, com.github.jknack.handlebars.internal.antlr.Token=var3193, $r1=var1431, i0=var816, $r2=var381, i1=var1855, $r3=var3016, $r4=var1007, $r5=var2440, $r6=var128, $r7=var1201, $r8=var506}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.github.jknack.handlebars.internal.antlr.Recognizer;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.RecognitionException;	$r1 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.RecognitionException: com.github.jknack.handlebars.internal.antlr.Token getOffendingToken()>();	i0 = interfaceinvoke $r1.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$r2 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.RecognitionException: com.github.jknack.handlebars.internal.antlr.Token getOffendingToken()>();	i1 = interfaceinvoke $r2.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("line ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1