(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var3341 0)
(declare-sort var379 0)
(declare-sort var1239 0)
(declare-sort var3703 0)
(declare-sort var3144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3341-to-var3703 (var3341) var3703)
(declare-fun var3703_getChildNodes/-162022572 (var3703) var3144)
(declare-fun var3144_getLength/224812497 (var3144) Int)
(declare-const null-var1131 var1131)
(declare-const null-var3341 var3341)
(declare-const null-String String)
(declare-const null-var1239 var1239)
(declare-const var3173 var1131) ; Statement: r6 := @this: freemarker.ext.xml._DomNavigator 
(assert (not (= var3173 null-var1131)))
(declare-const var505 var3341) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var505 null-var3341)))
(declare-const var3311 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3311 null-String)))
(declare-const var402 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var402 null-String)))
(declare-const var1665 var1239) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1665 null-var1239)))
(define-const var1602 String "") ; Statement: $r0 = "" 
(assert true)
(define-const var2887 Bool (= var1602 var402)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r10) 
 ; Statement: if $z0 == 0 goto $r2 = (org.w3c.dom.Node) r1 
(assert (= (ite var2887 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3739 var3703 (cast-from-var3341-to-var3703 var505)) ; Statement: $r2 = (org.w3c.dom.Node) r1 
(define-const var3509 var3144 (var3703_getChildNodes/-162022572 var3739)) ; Statement: $r9 = interfaceinvoke $r2.<org.w3c.dom.Node: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var1084 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1914 Int (var3144_getLength/224812497 var3509)) ; Statement: $i3 = interfaceinvoke $r9.<org.w3c.dom.NodeList: int getLength()>() 
 ; Statement: if i2 >= $i3 goto return 
(assert (>= var1084 var1914)) ; Cond: i2 >= $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3341-to-var3703=([java.lang.Object], org.w3c.dom.Node), var3703_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), var3144_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var1131=freemarker.ext.xml._DomNavigator, var3173=r6, var3341=java.lang.Object, var505=r1, var3311=r4, var379=null_type, var402=r10, var1239=java.util.List, var1665=r5, var1602=$r0, var2887=$z0, var3703=org.w3c.dom.Node, var3739=$r2, var3144=org.w3c.dom.NodeList, var3509=$r9, var1084=i2, var1914=$i3}
; {freemarker.ext.xml._DomNavigator=var1131, r6=var3173, java.lang.Object=var3341, r1=var505, r4=var3311, null_type=var379, r10=var402, java.util.List=var1239, r5=var1665, $r0=var1602, $z0=var2887, org.w3c.dom.Node=var3703, $r2=var3739, org.w3c.dom.NodeList=var3144, $r9=var3509, i2=var1084, $i3=var1914}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: freemarker.ext.xml._DomNavigator;	r1 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r5 := @parameter3: java.util.List;	$r0 = "";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r10);	if $z0 == 0 goto $r2 = (org.w3c.dom.Node) r1;	$r2 = (org.w3c.dom.Node) r1;	$r9 = interfaceinvoke $r2.<org.w3c.dom.Node: org.w3c.dom.NodeList getChildNodes()>();	i2 = 0;	$i3 = interfaceinvoke $r9.<org.w3c.dom.NodeList: int getLength()>();	if i2 >= $i3 goto return;	return
;block_num 4