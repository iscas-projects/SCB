(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1611 0)
(declare-sort var2339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun invert/2096212421 (var1611) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2339) ClassObject)
(declare-fun cast-from-var1611-to-var2339 (var1611) var2339)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeName/2096212421 (var1611) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1611 var1611)
(declare-const var2413 var1611) ; Statement: r0 := @this: org.antlr.v4.runtime.tree.xpath.XPathElement 
(assert (not (= var2413 null-var1611)))
(define-const var2602 Bool (invert/2096212421 var2413)) ; Statement: $z0 = r0.<org.antlr.v4.runtime.tree.xpath.XPathElement: boolean invert> 
 ; Statement: if $z0 == 0 goto $r11 = "" 
(assert (= (ite var2602 1 0) 0)) ; Cond: $z0 == 0 
(define-const var935 String "") ; Statement: $r11 = "" 
(assert true) ; Non Conditional
(define-const var2615 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2615)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2615!1 String)
(assert (= var2615!1 ""))
(assert true)
(define-const var1721 ClassObject (getClass/1258963082 (cast-from-var1611-to-var2339 var2413))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1840 String (getSimpleName/-390194377 var1721)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var833 String (append/672562846 var2615!1 var1840)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2615!2 String)
(assert (= var2615!2 (str.++ var2615!1 var1840)))
(assert true)
(define-const var1602 String (append/672562846 var833 "[")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var833!1 String)
(assert (= var833!1 (str.++ var833 "[")))
(assert true)
(define-const var3344 String (append/672562846 var1602 var935)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1602!1 String)
(assert (= var1602!1 (str.++ var1602 var935)))
(define-const var2887 String (nodeName/2096212421 var2413)) ; Statement: $r6 = r0.<org.antlr.v4.runtime.tree.xpath.XPathElement: java.lang.String nodeName> 
(assert true)
(define-const var1438 String (append/672562846 var3344 var2887)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3344!1 String)
(assert (= var3344!1 (str.++ var3344 var2887)))
(assert true)
(define-const var2812 String (append/672562846 var1438 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1438!1 String)
(assert (= var1438!1 (str.++ var1438 "]")))
(assert true)
(define-const var779 String (toString/-2075883882 var2812)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {invert/2096212421=([org.antlr.v4.runtime.tree.xpath.XPathElement], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1611-to-var2339=([org.antlr.v4.runtime.tree.xpath.XPathElement], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeName/2096212421=([org.antlr.v4.runtime.tree.xpath.XPathElement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1611=org.antlr.v4.runtime.tree.xpath.XPathElement, var2413=r0, var2602=$z0, var935=$r11, var2615=$r1, var2339=java.lang.Object, var1721=$r2, var1840=$r3, var833=$r4, var1602=$r5, var3344=$r7, var2887=$r6, var1438=$r8, var2812=$r9, var779=$r10}
; {org.antlr.v4.runtime.tree.xpath.XPathElement=var1611, r0=var2413, $z0=var2602, $r11=var935, $r1=var2615, java.lang.Object=var2339, $r2=var1721, $r3=var1840, $r4=var833, $r5=var1602, $r7=var3344, $r6=var2887, $r8=var1438, $r9=var2812, $r10=var779}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.tree.xpath.XPathElement;	$z0 = r0.<org.antlr.v4.runtime.tree.xpath.XPathElement: boolean invert>;	if $z0 == 0 goto $r11 = "";	$r11 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r6 = r0.<org.antlr.v4.runtime.tree.xpath.XPathElement: java.lang.String nodeName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3