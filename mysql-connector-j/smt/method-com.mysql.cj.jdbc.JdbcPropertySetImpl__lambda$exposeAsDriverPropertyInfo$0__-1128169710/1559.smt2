(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2044 0)
(declare-sort var3148 0)
(declare-sort var214 0)
(declare-sort var3231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2044_getValue/381491177 (var2044) var3148)
(declare-fun cast-from-var3148-to-var214 (var3148) var214)
(declare-fun var214_getCategory/-820805090 (var214) String)
(declare-const null-var2044 var2044)
(declare-const var3231-CATEGORY_XDEVAPI String)
(declare-const var1023 var2044) ; Statement: r0 := @parameter0: java.util.Map$Entry 
(assert (not (= var1023 null-var2044)))
(define-const var998 var3148 (var2044_getValue/381491177 var1023)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getValue()>() 
(define-const var2219 var214 (cast-from-var3148-to-var214 var998)) ; Statement: $r2 = (com.mysql.cj.conf.PropertyDefinition) $r1 
(define-const var704 String (var214_getCategory/-820805090 var2219)) ; Statement: $r4 = interfaceinvoke $r2.<com.mysql.cj.conf.PropertyDefinition: java.lang.String getCategory()>() 
(define-const var3881 String var3231-CATEGORY_XDEVAPI) ; Statement: $r3 = <com.mysql.cj.conf.PropertyDefinitions: java.lang.String CATEGORY_XDEVAPI> 
(assert true)
(define-const var1805 Bool (= var704 var3881)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1805 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2902 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2044_getValue/381491177=([java.util.Map$Entry], java.lang.Object), cast-from-var3148-to-var214=([java.lang.Object], com.mysql.cj.conf.PropertyDefinition), var214_getCategory/-820805090=([com.mysql.cj.conf.PropertyDefinition], java.lang.String)}
; {var2044=java.util.Map$Entry, var1023=r0, var3148=java.lang.Object, var998=$r1, var214=com.mysql.cj.conf.PropertyDefinition, var2219=$r2, var704=$r4, var3231=com.mysql.cj.conf.PropertyDefinitions, var3881=$r3, var1805=$z0, var2902=$z1}
; {java.util.Map$Entry=var2044, r0=var1023, java.lang.Object=var3148, $r1=var998, com.mysql.cj.conf.PropertyDefinition=var214, $r2=var2219, $r4=var704, com.mysql.cj.conf.PropertyDefinitions=var3231, $r3=var3881, $z0=var1805, $z1=var2902}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.util.Map$Entry;	$r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getValue()>();	$r2 = (com.mysql.cj.conf.PropertyDefinition) $r1;	$r4 = interfaceinvoke $r2.<com.mysql.cj.conf.PropertyDefinition: java.lang.String getCategory()>();	$r3 = <com.mysql.cj.conf.PropertyDefinitions: java.lang.String CATEGORY_XDEVAPI>;	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3