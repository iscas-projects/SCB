(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2708 0)
(declare-sort var5 0)
(declare-sort var1436 0)
(declare-sort var2638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2708_getValue/381491177 (var2708) var5)
(declare-fun cast-from-var5-to-var1436 (var5) var1436)
(declare-fun var1436_getCategory/-820805090 (var1436) String)
(declare-const null-var2708 var2708)
(declare-const var2638-CATEGORY_XDEVAPI String)
(declare-const var3863 var2708) ; Statement: r0 := @parameter0: java.util.Map$Entry 
(assert (not (= var3863 null-var2708)))
(define-const var1304 var5 (var2708_getValue/381491177 var3863)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getValue()>() 
(define-const var918 var1436 (cast-from-var5-to-var1436 var1304)) ; Statement: $r2 = (com.mysql.cj.conf.PropertyDefinition) $r1 
(define-const var3389 String (var1436_getCategory/-820805090 var918)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.PropertyDefinition: java.lang.String getCategory()>() 
(define-const var1845 String var2638-CATEGORY_XDEVAPI) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions: java.lang.String CATEGORY_XDEVAPI> 
(assert true)
(define-const var799 Bool (= var3389 var1845)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var799 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3629 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2708_getValue/381491177=([java.util.Map$Entry], java.lang.Object), cast-from-var5-to-var1436=([java.lang.Object], com.mysql.cj.conf.PropertyDefinition), var1436_getCategory/-820805090=([com.mysql.cj.conf.PropertyDefinition], java.lang.String)}
; {var2708=java.util.Map$Entry, var3863=r0, var5=java.lang.Object, var1304=$r1, var1436=com.mysql.cj.conf.PropertyDefinition, var918=$r2, var3389=$r4, var2638=com.mysql.cj.conf.PropertyDefinitions, var1845=$r3, var799=$z0, var3629=$z1}
; {java.util.Map$Entry=var2708, r0=var3863, java.lang.Object=var5, $r1=var1304, com.mysql.cj.conf.PropertyDefinition=var1436, $r2=var918, $r4=var3389, com.mysql.cj.conf.PropertyDefinitions=var2638, $r3=var1845, $z0=var799, $z1=var3629}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.util.Map$Entry;	$r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getValue()>();	$r2 = (com.mysql.cj.conf.PropertyDefinition) $r1;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.PropertyDefinition: java.lang.String getCategory()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions: java.lang.String CATEGORY_XDEVAPI>;	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3