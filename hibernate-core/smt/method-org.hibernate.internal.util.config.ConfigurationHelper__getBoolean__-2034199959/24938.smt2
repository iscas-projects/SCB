(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1840 0)
(declare-sort var3517 0)
(declare-sort var3533 0)
(declare-sort var521 0)
(declare-sort var2993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3517_get/1088891777 (var3517 var3533) var3533)
(declare-fun cast-from-String-to-var3533 (String) var3533)
(declare-fun var2993_toBoolean/1248062886 (var3533 Bool) var521)
(declare-fun booleanValue/-1820462562 (var521) Bool)
(declare-const null-String String)
(declare-const null-var3517 var3517)
(declare-const null-Bool Bool)
(declare-const null-var521 var521)
(declare-const var604 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var604 null-String)))
(declare-const var882 var3517) ; Statement: r0 := @parameter1: java.util.Map 
(assert (not (= var882 null-var3517)))
(declare-const var3086 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3086 null-Bool)))
(define-const var1501 var3533 (var3517_get/1088891777 var882 (cast-from-String-to-var3533 var604))) ; Statement: r2 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3201 var521 (var2993_toBoolean/1248062886 var1501 var3086)) ; Statement: r3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.Boolean toBoolean(java.lang.Object,boolean)>(r2, z0) 
 ; Statement: if r3 != null goto $z1 = virtualinvoke r3.<java.lang.Boolean: boolean booleanValue()>() 
(assert (not (= var3201 null-var521))) ; Cond: r3 != null 
(assert true)
(define-const var443 Bool (booleanValue/-1820462562 var3201)) ; Statement: $z1 = virtualinvoke r3.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3517_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3533=([java.lang.String], java.lang.Object), var2993_toBoolean/1248062886=([java.lang.Object, boolean], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean)}
; {var604=r1, var1840=null_type, var3517=java.util.Map, var882=r0, var3086=z0, var3533=java.lang.Object, var1501=r2, var521=java.lang.Boolean, var2993=org.hibernate.internal.util.config.ConfigurationHelper, var3201=r3, var443=$z1}
; {r1=var604, null_type=var1840, java.util.Map=var3517, r0=var882, z0=var3086, java.lang.Object=var3533, r2=var1501, java.lang.Boolean=var521, org.hibernate.internal.util.config.ConfigurationHelper=var2993, r3=var3201, $z1=var443}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Map;	z0 := @parameter2: boolean;	r2 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.Boolean toBoolean(java.lang.Object,boolean)>(r2, z0);	if r3 != null goto $z1 = virtualinvoke r3.<java.lang.Boolean: boolean booleanValue()>();	$z1 = virtualinvoke r3.<java.lang.Boolean: boolean booleanValue()>();	return $z1
;block_num 2