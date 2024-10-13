(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1213 0)
(declare-sort var1635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun invert/-1372956512 (var1213) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1635) ClassObject)
(declare-fun cast-from-var1213-to-var1635 (var1213) var1635)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeName/-1372956512 (var1213) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1213 var1213)
(declare-const var2249 var1213) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement 
(assert (not (= var2249 null-var1213)))
(define-const var2801 Bool (invert/-1372956512 var2249)) ; Statement: $z0 = r0.<com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement: boolean invert> 
 ; Statement: if $z0 == 0 goto $r11 = "" 
(assert (not (= (ite var2801 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1591 String "!") ; Statement: $r11 = "!" 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1704 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1704)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1704!1 String)
(assert (= var1704!1 ""))
(assert true)
(define-const var3797 ClassObject (getClass/1258963082 (cast-from-var1213-to-var1635 var2249))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1801 String (getSimpleName/-390194377 var3797)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1856 String (append/672562846 var1704!1 var1801)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1704!2 String)
(assert (= var1704!2 (str.++ var1704!1 var1801)))
(assert true)
(define-const var362 String (append/672562846 var1856 "[")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1856!1 String)
(assert (= var1856!1 (str.++ var1856 "[")))
(assert true)
(define-const var3269 String (append/672562846 var362 var1591)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var362!1 String)
(assert (= var362!1 (str.++ var362 var1591)))
(define-const var2833 String (nodeName/-1372956512 var2249)) ; Statement: $r6 = r0.<com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement: java.lang.String nodeName> 
(assert true)
(define-const var3485 String (append/672562846 var3269 var2833)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3269!1 String)
(assert (= var3269!1 (str.++ var3269 var2833)))
(assert true)
(define-const var2688 String (append/672562846 var3485 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3485!1 String)
(assert (= var3485!1 (str.++ var3485 "]")))
(assert true)
(define-const var3119 String (toString/-2075883882 var2688)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {invert/-1372956512=([com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1213-to-var1635=([com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeName/-1372956512=([com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1213=com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement, var2249=r0, var2801=$z0, var1591=$r11, var1704=$r1, var1635=java.lang.Object, var3797=$r2, var1801=$r3, var1856=$r4, var362=$r5, var3269=$r7, var2833=$r6, var3485=$r8, var2688=$r9, var3119=$r10}
; {com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement=var1213, r0=var2249, $z0=var2801, $r11=var1591, $r1=var1704, java.lang.Object=var1635, $r2=var3797, $r3=var1801, $r4=var1856, $r5=var362, $r7=var3269, $r6=var2833, $r8=var3485, $r9=var2688, $r10=var3119}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement;	$z0 = r0.<com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement: boolean invert>;	if $z0 == 0 goto $r11 = "";	$r11 = "!";	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r6 = r0.<com.github.jknack.handlebars.internal.antlr.tree.xpath.XPathElement: java.lang.String nodeName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3