(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var3646 0)
(declare-sort var2925 0)
(declare-sort var2528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setTypes/-1577411681 (var426) var2925)
(declare-fun var2925_get/1088891777 (var2925 var2528) var2528)
(declare-fun cast-from-String-to-var2528 (String) var2528)
(declare-fun cast-from-var2528-to-ClassObject (var2528) ClassObject)
(declare-const null-var426 var426)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2489 var426) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var2489 null-var426)))
(declare-const var2378 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2378 null-String)))
(define-const var2823 var2925 (setTypes/-1577411681 var2489)) ; Statement: $r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map setTypes> 
(define-const var2669 var2528 (var2925_get/1088891777 var2823 (cast-from-String-to-var2528 var2378))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3035 ClassObject (cast-from-var2528-to-ClassObject var2669)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var3035 null-ClassObject))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {setTypes/-1577411681=([org.apache.ibatis.reflection.Reflector], java.util.Map), var2925_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2528=([java.lang.String], java.lang.Object), cast-from-var2528-to-ClassObject=([java.lang.Object], java.lang.Class)}
; {var426=org.apache.ibatis.reflection.Reflector, var2489=r0, var2378=r1, var3646=null_type, var2925=java.util.Map, var2823=$r2, var2528=java.lang.Object, var2669=$r3, var3035=r4}
; {org.apache.ibatis.reflection.Reflector=var426, r0=var2489, r1=var2378, null_type=var3646, java.util.Map=var2925, $r2=var2823, java.lang.Object=var2528, $r3=var2669, r4=var3035}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map setTypes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto return r4;	return r4
;block_num 2