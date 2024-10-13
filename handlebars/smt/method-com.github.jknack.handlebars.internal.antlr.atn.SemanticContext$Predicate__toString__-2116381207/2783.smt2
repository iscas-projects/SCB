(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleIndex/2103832841 (var971) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun predIndex/2103832841 (var971) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var971 var971)
(declare-const var1127 var971) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate 
(assert (not (= var1127 null-var971)))
(define-const var3872 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3872)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3872!1 String)
(assert (= var3872!1 ""))
(assert true)
(define-const var82 String (append/672562846 var3872!1 "{")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var3872!2 String)
(assert (= var3872!2 (str.++ var3872!1 "{")))
(define-const var42 Int (ruleIndex/2103832841 var1127)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate: int ruleIndex> 
(assert true)
(define-const var3897 String (append/-1001720160 var82 var42)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var82!1 String)
(assert (str.prefixof var82 var82!1))
(assert true)
(define-const var418 String (append/672562846 var3897 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3897!1 String)
(assert (= var3897!1 (str.++ var3897 ":")))
(define-const var2253 Int (predIndex/2103832841 var1127)) ; Statement: $i1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate: int predIndex> 
(assert true)
(define-const var2444 String (append/-1001720160 var418 var2253)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var418!1 String)
(assert (str.prefixof var418 var418!1))
(assert true)
(define-const var3440 String (append/672562846 var2444 "}?")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}?") 
(declare-const var2444!1 String)
(assert (= var2444!1 (str.++ var2444 "}?")))
(assert true)
(define-const var368 String (toString/-2075883882 var3440)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleIndex/2103832841=([com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), predIndex/2103832841=([com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var971=com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate, var1127=r1, var3872=$r0, var82=$r2, var42=$i0, var3897=$r3, var418=$r4, var2253=$i1, var2444=$r5, var3440=$r6, var368=$r7}
; {com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate=var971, r1=var1127, $r0=var3872, $r2=var82, $i0=var42, $r3=var3897, $r4=var418, $i1=var2253, $r5=var2444, $r6=var3440, $r7=var368}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate: int ruleIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$Predicate: int predIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}?");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1