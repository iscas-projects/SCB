(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3088 0)
(declare-sort var1922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun invert/2096212421 (var3088) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1922) ClassObject)
(declare-fun cast-from-var3088-to-var1922 (var3088) var1922)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeName/2096212421 (var3088) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3088 var3088)
(declare-const var1391 var3088) ; Statement: r0 := @this: org.antlr.v4.runtime.tree.xpath.XPathElement 
(assert (not (= var1391 null-var3088)))
(define-const var1060 Bool (invert/2096212421 var1391)) ; Statement: $z0 = r0.<org.antlr.v4.runtime.tree.xpath.XPathElement: boolean invert> 
 ; Statement: if $z0 == 0 goto $r11 = "" 
(assert (not (= (ite var1060 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3451 String "!") ; Statement: $r11 = "!" 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var725 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var725)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var725!1 String)
(assert (= var725!1 ""))
(assert true)
(define-const var2127 ClassObject (getClass/1258963082 (cast-from-var3088-to-var1922 var1391))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2517 String (getSimpleName/-390194377 var2127)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2436 String (append/672562846 var725!1 var2517)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var725!2 String)
(assert (= var725!2 (str.++ var725!1 var2517)))
(assert true)
(define-const var3781 String (append/672562846 var2436 "[")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2436!1 String)
(assert (= var2436!1 (str.++ var2436 "[")))
(assert true)
(define-const var2693 String (append/672562846 var3781 var3451)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3781!1 String)
(assert (= var3781!1 (str.++ var3781 var3451)))
(define-const var2201 String (nodeName/2096212421 var1391)) ; Statement: $r6 = r0.<org.antlr.v4.runtime.tree.xpath.XPathElement: java.lang.String nodeName> 
(assert true)
(define-const var2460 String (append/672562846 var2693 var2201)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2693!1 String)
(assert (= var2693!1 (str.++ var2693 var2201)))
(assert true)
(define-const var1838 String (append/672562846 var2460 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2460!1 String)
(assert (= var2460!1 (str.++ var2460 "]")))
(assert true)
(define-const var2919 String (toString/-2075883882 var1838)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {invert/2096212421=([org.antlr.v4.runtime.tree.xpath.XPathElement], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3088-to-var1922=([org.antlr.v4.runtime.tree.xpath.XPathElement], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeName/2096212421=([org.antlr.v4.runtime.tree.xpath.XPathElement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3088=org.antlr.v4.runtime.tree.xpath.XPathElement, var1391=r0, var1060=$z0, var3451=$r11, var725=$r1, var1922=java.lang.Object, var2127=$r2, var2517=$r3, var2436=$r4, var3781=$r5, var2693=$r7, var2201=$r6, var2460=$r8, var1838=$r9, var2919=$r10}
; {org.antlr.v4.runtime.tree.xpath.XPathElement=var3088, r0=var1391, $z0=var1060, $r11=var3451, $r1=var725, java.lang.Object=var1922, $r2=var2127, $r3=var2517, $r4=var2436, $r5=var3781, $r7=var2693, $r6=var2201, $r8=var2460, $r9=var1838, $r10=var2919}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.tree.xpath.XPathElement;	$z0 = r0.<org.antlr.v4.runtime.tree.xpath.XPathElement: boolean invert>;	if $z0 == 0 goto $r11 = "";	$r11 = "!";	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r6 = r0.<org.antlr.v4.runtime.tree.xpath.XPathElement: java.lang.String nodeName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3