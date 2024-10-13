(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1148 0)
(declare-sort var1325 0)
(declare-sort var1701 0)
(declare-sort var109 0)
(declare-sort var1634 0)
(declare-sort var14 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1325-to-var1701 (var1325) var1701)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNamespace/650254937 (var1701) var109)
(declare-fun getURI/265168765 (var109) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1403879269 (var1701) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var14_singletonList/684126186 (var1325) var1634)
(declare-fun cast-from-String-to-var1325 (String) var1325)
(declare-const null-var1148 var1148)
(declare-const null-var1325 var1325)
(declare-const var1778 var1148) ; Statement: r17 := @this: freemarker.ext.jdom.NodeListModel$CanonicalNameOp 
(assert (not (= var1778 null-var1148)))
(declare-const var2410 var1325) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2410 null-var1325)))
(define-const var2212 Bool false) ; Statement: $z0 = r0 instanceof org.jdom.Element 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.jdom.Attribute 
(assert (not (= (ite var2212 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2733 var1701 (cast-from-var1325-to-var1701 var2410)) ; Statement: r18 = (org.jdom.Element) r0 
(define-const var3793 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3793)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3793!1 String)
(assert (= var3793!1 ""))
(assert true)
(define-const var217 var109 (getNamespace/650254937 var2733)) ; Statement: $r10 = virtualinvoke r18.<org.jdom.Element: org.jdom.Namespace getNamespace()>() 
(assert true)
(define-const var2910 String (getURI/265168765 var217)) ; Statement: $r11 = virtualinvoke $r10.<org.jdom.Namespace: java.lang.String getURI()>() 
(assert true)
(define-const var567 String (append/672562846 var3793!1 var2910)) ; Statement: $r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3793!2 String)
(assert (= var3793!2 (str.++ var3793!1 var2910)))
(assert true)
(define-const var3029 String (getName/1403879269 var2733)) ; Statement: $r12 = virtualinvoke r18.<org.jdom.Element: java.lang.String getName()>() 
(assert true)
(define-const var3630 String (append/672562846 var567 var3029)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var567!1 String)
(assert (= var567!1 (str.++ var567 var3029)))
(assert true)
(define-const var1426 String (toString/-2075883882 var3630)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2828 var1634 (var14_singletonList/684126186 (cast-from-String-to-var1325 var1426))) ; Statement: $r16 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r15) 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1325-to-var1701=([java.lang.Object], org.jdom.Element), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNamespace/650254937=([org.jdom.Element], org.jdom.Namespace), getURI/265168765=([org.jdom.Namespace], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1403879269=([org.jdom.Element], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var14_singletonList/684126186=([java.lang.Object], java.util.List), cast-from-String-to-var1325=([java.lang.String], java.lang.Object)}
; {var1148=freemarker.ext.jdom.NodeListModel$CanonicalNameOp, var1778=r17, var1325=java.lang.Object, var2410=r0, var2212=$z0, var1701=org.jdom.Element, var2733=r18, var3793=$r9, var109=org.jdom.Namespace, var217=$r10, var2910=$r11, var567=$r13, var3029=$r12, var3630=$r14, var1426=$r15, var1634=java.util.List, var14=java.util.Collections, var2828=$r16}
; {freemarker.ext.jdom.NodeListModel$CanonicalNameOp=var1148, r17=var1778, java.lang.Object=var1325, r0=var2410, $z0=var2212, org.jdom.Element=var1701, r18=var2733, $r9=var3793, org.jdom.Namespace=var109, $r10=var217, $r11=var2910, $r13=var567, $r12=var3029, $r14=var3630, $r15=var1426, java.util.List=var1634, java.util.Collections=var14, $r16=var2828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r17 := @this: freemarker.ext.jdom.NodeListModel$CanonicalNameOp;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof org.jdom.Element;	if $z0 == 0 goto $z1 = r0 instanceof org.jdom.Attribute;	r18 = (org.jdom.Element) r0;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke r18.<org.jdom.Element: org.jdom.Namespace getNamespace()>();	$r11 = virtualinvoke $r10.<org.jdom.Namespace: java.lang.String getURI()>();	$r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = virtualinvoke r18.<org.jdom.Element: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r15);	return $r16
;block_num 2