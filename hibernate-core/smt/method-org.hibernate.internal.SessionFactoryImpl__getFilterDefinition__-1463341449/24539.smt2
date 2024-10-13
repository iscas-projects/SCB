(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1830 0)
(declare-sort var3383 0)
(declare-sort var3905 0)
(declare-sort var2226 0)
(declare-sort var1137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun filters/-1828393569 (var1830) var3905)
(declare-fun var3905_get/1088891777 (var3905 var2226) var2226)
(declare-fun cast-from-String-to-var2226 (String) var2226)
(declare-fun cast-from-var2226-to-var1137 (var2226) var1137)
(declare-const null-var1830 var1830)
(declare-const null-String String)
(declare-const null-var1137 var1137)
(declare-const var2945 var1830) ; Statement: r0 := @this: org.hibernate.internal.SessionFactoryImpl 
(assert (not (= var2945 null-var1830)))
(declare-const var824 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var824 null-String)))
(define-const var3729 var3905 (filters/-1828393569 var2945)) ; Statement: $r2 = r0.<org.hibernate.internal.SessionFactoryImpl: java.util.Map filters> 
(define-const var3966 var2226 (var3905_get/1088891777 var3729 (cast-from-String-to-var2226 var824))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var278 var1137 (cast-from-var2226-to-var1137 var3966)) ; Statement: r4 = (org.hibernate.engine.spi.FilterDefinition) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var278 null-var1137))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {filters/-1828393569=([org.hibernate.internal.SessionFactoryImpl], java.util.Map), var3905_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2226=([java.lang.String], java.lang.Object), cast-from-var2226-to-var1137=([java.lang.Object], org.hibernate.engine.spi.FilterDefinition)}
; {var1830=org.hibernate.internal.SessionFactoryImpl, var2945=r0, var824=r1, var3383=null_type, var3905=java.util.Map, var3729=$r2, var2226=java.lang.Object, var3966=$r3, var1137=org.hibernate.engine.spi.FilterDefinition, var278=r4}
; {org.hibernate.internal.SessionFactoryImpl=var1830, r0=var2945, r1=var824, null_type=var3383, java.util.Map=var3905, $r2=var3729, java.lang.Object=var2226, $r3=var3966, org.hibernate.engine.spi.FilterDefinition=var1137, r4=var278}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.internal.SessionFactoryImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.internal.SessionFactoryImpl: java.util.Map filters>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.engine.spi.FilterDefinition) $r3;	if r4 != null goto return r4;	return r4
;block_num 2