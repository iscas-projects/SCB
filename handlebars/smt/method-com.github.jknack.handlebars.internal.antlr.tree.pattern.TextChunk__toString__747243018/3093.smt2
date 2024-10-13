(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2622 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/1660617458 (var2622) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2622 var2622)
(declare-const var749 var2622) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TextChunk 
(assert (not (= var749 null-var2622)))
(define-const var364 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var364)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var364!1 String)
(assert (= var364!1 ""))
(assert true)
(define-const var968 String (append/672562846 var364!1 "\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var364!2 String)
(assert (= var364!2 (str.++ var364!1 "\u0027")))
(define-const var989 String (text/1660617458 var749)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TextChunk: java.lang.String text> 
(assert true)
(define-const var2467 String (append/672562846 var968 var989)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var968!1 String)
(assert (= var968!1 (str.++ var968 var989)))
(assert true)
(define-const var3452 String (append/672562846 var2467 "\u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2467!1 String)
(assert (= var2467!1 (str.++ var2467 "\u0027")))
(assert true)
(define-const var2281 String (toString/-2075883882 var3452)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), text/1660617458=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TextChunk], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2622=com.github.jknack.handlebars.internal.antlr.tree.pattern.TextChunk, var749=r1, var364=$r0, var968=$r3, var989=$r2, var2467=$r4, var3452=$r5, var2281=$r6}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.TextChunk=var2622, r1=var749, $r0=var364, $r3=var968, $r2=var989, $r4=var2467, $r5=var3452, $r6=var2281}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TextChunk;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TextChunk: java.lang.String text>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1