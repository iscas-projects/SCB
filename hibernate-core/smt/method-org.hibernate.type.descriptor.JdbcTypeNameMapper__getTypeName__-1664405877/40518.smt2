(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3796 0)
(declare-sort var3318 0)
(declare-sort var2334 0)
(declare-sort var3813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3796_get/1088891777 (var3796 var2334) var2334)
(declare-fun cast-from-Int-to-var2334 (Int) var2334)
(declare-fun cast-from-var2334-to-String (var2334) String)
(declare-const null-Int Int)
(declare-const var3318-JDBC_TYPE_MAP var3796)
(declare-const null-String String)
(declare-const var3809 Int) ; Statement: r0 := @parameter0: java.lang.Integer 
(assert (not (= var3809 null-Int)))
(define-const var3444 var3796 var3318-JDBC_TYPE_MAP) ; Statement: $r1 = <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.util.Map JDBC_TYPE_MAP> 
(define-const var1943 var2334 (var3796_get/1088891777 var3444 (cast-from-Int-to-var2334 var3809))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var955 String (cast-from-var2334-to-String var1943)) ; Statement: r3 = (java.lang.String) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var955 null-String))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3796_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var2334=([java.lang.Integer], java.lang.Object), cast-from-var2334-to-String=([java.lang.Object], java.lang.String)}
; {var3809=r0, var3796=java.util.Map, var3318=org.hibernate.type.descriptor.JdbcTypeNameMapper, var3444=$r1, var2334=java.lang.Object, var1943=$r2, var955=r3, var3813=null_type}
; {r0=var3809, java.util.Map=var3796, org.hibernate.type.descriptor.JdbcTypeNameMapper=var3318, $r1=var3444, java.lang.Object=var2334, $r2=var1943, r3=var955, null_type=var3813}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Integer;	$r1 = <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.util.Map JDBC_TYPE_MAP>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (java.lang.String) $r2;	if r3 != null goto return r3;	return r3
;block_num 2