(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var975 0)
(declare-sort var1410 0)
(declare-sort var3839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-var1410-to-var3839 (var1410) var3839)
(declare-fun var3839_getNodeValue/-332788054 (var3839) String)
(declare-const null-var975 var975)
(declare-const null-var1410 var1410)
(declare-const var1800 var975) ; Statement: r9 := @this: freemarker.ext.xml._DomNavigator 
(assert (not (= var1800 null-var975)))
(declare-const var3756 var1410) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3756 null-var1410)))
(define-const var108 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var108)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var108!1 String)
(assert (= var108!1 ""))
(define-const var1764 Bool false) ; Statement: $z0 = r1 instanceof org.w3c.dom.Element 
 ; Statement: if $z0 == 0 goto $r2 = (org.w3c.dom.Node) r1 
(assert (= (ite var1764 1 0) 0)) ; Cond: $z0 == 0 
(define-const var928 var3839 (cast-from-var1410-to-var3839 var3756)) ; Statement: $r2 = (org.w3c.dom.Node) r1 
(define-const var824 String (var3839_getNodeValue/-332788054 var928)) ; Statement: $r3 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNodeValue()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-var1410-to-var3839=([java.lang.Object], org.w3c.dom.Node), var3839_getNodeValue/-332788054=([org.w3c.dom.Node], java.lang.String)}
; {var975=freemarker.ext.xml._DomNavigator, var1800=r9, var1410=java.lang.Object, var3756=r1, var108=$r0, var1764=$z0, var3839=org.w3c.dom.Node, var928=$r2, var824=$r3}
; {freemarker.ext.xml._DomNavigator=var975, r9=var1800, java.lang.Object=var1410, r1=var3756, $r0=var108, $z0=var1764, org.w3c.dom.Node=var3839, $r2=var928, $r3=var824}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r9 := @this: freemarker.ext.xml._DomNavigator;	r1 := @parameter0: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = r1 instanceof org.w3c.dom.Element;	if $z0 == 0 goto $r2 = (org.w3c.dom.Node) r1;	$r2 = (org.w3c.dom.Node) r1;	$r3 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNodeValue()>();	return $r3
;block_num 2