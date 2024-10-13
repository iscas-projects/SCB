(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2553 0)
(declare-sort var909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun invert/-1372956512 (var2553) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var909) ClassObject)
(declare-fun cast-from-var2553-to-var909 (var2553) var909)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeName/-1372956512 (var2553) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2553 var2553)
(declare-const var49 var2553) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement 
(assert (not (= var49 null-var2553)))
(define-const var150 Bool (invert/-1372956512 var49)) ; Statement: $z0 = r0.<com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement: boolean invert> 
 ; Statement: if $z0 == 0 goto $r11 = "" 
(assert (= (ite var150 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2955 String "") ; Statement: $r11 = "" 
(assert true) ; Non Conditional
(define-const var2764 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2764)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2764!1 String)
(assert (= var2764!1 ""))
(assert true)
(define-const var1166 ClassObject (getClass/1258963082 (cast-from-var2553-to-var909 var49))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var705 String (getSimpleName/-390194377 var1166)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2082 String (append/672562846 var2764!1 var705)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2764!2 String)
(assert (= var2764!2 (str.++ var2764!1 var705)))
(assert true)
(define-const var3221 String (append/672562846 var2082 "[")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2082!1 String)
(assert (= var2082!1 (str.++ var2082 "[")))
(assert true)
(define-const var1527 String (append/672562846 var3221 var2955)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3221!1 String)
(assert (= var3221!1 (str.++ var3221 var2955)))
(define-const var3373 String (nodeName/-1372956512 var49)) ; Statement: $r6 = r0.<com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement: java.lang.String nodeName> 
(assert true)
(define-const var3255 String (append/672562846 var1527 var3373)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1527!1 String)
(assert (= var1527!1 (str.++ var1527 var3373)))
(assert true)
(define-const var1685 String (append/672562846 var3255 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3255!1 String)
(assert (= var3255!1 (str.++ var3255 "]")))
(assert true)
(define-const var2066 String (toString/-2075883882 var1685)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {invert/-1372956512=([com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2553-to-var909=([com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeName/-1372956512=([com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2553=com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement, var49=r0, var150=$z0, var2955=$r11, var2764=$r1, var909=java.lang.Object, var1166=$r2, var705=$r3, var2082=$r4, var3221=$r5, var1527=$r7, var3373=$r6, var3255=$r8, var1685=$r9, var2066=$r10}
; {com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement=var2553, r0=var49, $z0=var150, $r11=var2955, $r1=var2764, java.lang.Object=var909, $r2=var1166, $r3=var705, $r4=var2082, $r5=var3221, $r7=var1527, $r6=var3373, $r8=var3255, $r9=var1685, $r10=var2066}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement;	$z0 = r0.<com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement: boolean invert>;	if $z0 == 0 goto $r11 = "";	$r11 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r6 = r0.<com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement: java.lang.String nodeName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3