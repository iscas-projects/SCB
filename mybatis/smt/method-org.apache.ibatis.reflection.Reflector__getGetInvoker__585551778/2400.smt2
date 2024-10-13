(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var345 0)
(declare-sort var1281 0)
(declare-sort var961 0)
(declare-sort var3028 0)
(declare-sort var2457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethods/-1577411681 (var345) var961)
(declare-fun var961_get/1088891777 (var961 var3028) var3028)
(declare-fun cast-from-String-to-var3028 (String) var3028)
(declare-fun cast-from-var3028-to-var2457 (var3028) var2457)
(declare-const null-var345 var345)
(declare-const null-String String)
(declare-const null-var2457 var2457)
(declare-const var1688 var345) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var1688 null-var345)))
(declare-const var3289 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3289 null-String)))
(define-const var1999 var961 (getMethods/-1577411681 var1688)) ; Statement: $r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map getMethods> 
(define-const var1600 var3028 (var961_get/1088891777 var1999 (cast-from-String-to-var3028 var3289))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3842 var2457 (cast-from-var3028-to-var2457 var1600)) ; Statement: r4 = (org.apache.ibatis.reflection.invoker.Invoker) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var3842 null-var2457))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethods/-1577411681=([org.apache.ibatis.reflection.Reflector], java.util.Map), var961_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3028=([java.lang.String], java.lang.Object), cast-from-var3028-to-var2457=([java.lang.Object], org.apache.ibatis.reflection.invoker.Invoker)}
; {var345=org.apache.ibatis.reflection.Reflector, var1688=r0, var3289=r1, var1281=null_type, var961=java.util.Map, var1999=$r2, var3028=java.lang.Object, var1600=$r3, var2457=org.apache.ibatis.reflection.invoker.Invoker, var3842=r4}
; {org.apache.ibatis.reflection.Reflector=var345, r0=var1688, r1=var3289, null_type=var1281, java.util.Map=var961, $r2=var1999, java.lang.Object=var3028, $r3=var1600, org.apache.ibatis.reflection.invoker.Invoker=var2457, r4=var3842}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map getMethods>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.ibatis.reflection.invoker.Invoker) $r3;	if r4 != null goto return r4;	return r4
;block_num 2