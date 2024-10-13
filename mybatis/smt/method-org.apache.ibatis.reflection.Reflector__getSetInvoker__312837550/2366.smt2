(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2472 0)
(declare-sort var3126 0)
(declare-sort var2949 0)
(declare-sort var2336 0)
(declare-sort var2756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setMethods/-1577411681 (var2472) var2949)
(declare-fun var2949_get/1088891777 (var2949 var2336) var2336)
(declare-fun cast-from-String-to-var2336 (String) var2336)
(declare-fun cast-from-var2336-to-var2756 (var2336) var2756)
(declare-const null-var2472 var2472)
(declare-const null-String String)
(declare-const null-var2756 var2756)
(declare-const var3164 var2472) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var3164 null-var2472)))
(declare-const var1129 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1129 null-String)))
(define-const var1698 var2949 (setMethods/-1577411681 var3164)) ; Statement: $r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map setMethods> 
(define-const var817 var2336 (var2949_get/1088891777 var1698 (cast-from-String-to-var2336 var1129))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1340 var2756 (cast-from-var2336-to-var2756 var817)) ; Statement: r4 = (org.apache.ibatis.reflection.invoker.Invoker) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var1340 null-var2756))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {setMethods/-1577411681=([org.apache.ibatis.reflection.Reflector], java.util.Map), var2949_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2336=([java.lang.String], java.lang.Object), cast-from-var2336-to-var2756=([java.lang.Object], org.apache.ibatis.reflection.invoker.Invoker)}
; {var2472=org.apache.ibatis.reflection.Reflector, var3164=r0, var1129=r1, var3126=null_type, var2949=java.util.Map, var1698=$r2, var2336=java.lang.Object, var817=$r3, var2756=org.apache.ibatis.reflection.invoker.Invoker, var1340=r4}
; {org.apache.ibatis.reflection.Reflector=var2472, r0=var3164, r1=var1129, null_type=var3126, java.util.Map=var2949, $r2=var1698, java.lang.Object=var2336, $r3=var817, org.apache.ibatis.reflection.invoker.Invoker=var2756, r4=var1340}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map setMethods>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.ibatis.reflection.invoker.Invoker) $r3;	if r4 != null goto return r4;	return r4
;block_num 2