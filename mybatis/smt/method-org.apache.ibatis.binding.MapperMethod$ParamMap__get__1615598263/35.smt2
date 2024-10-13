(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2684 0)
(declare-sort var2427 0)
(declare-sort var167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun containsKey/172583680 (var167 var2427) Bool)
(declare-fun cast-from-var2684-to-var167 (var2684) var167)
(declare-fun get/499451311 (var167 var2427) var2427)
(declare-const null-var2684 var2684)
(declare-const null-var2427 var2427)
(declare-const var1279 var2684) ; Statement: r0 := @this: org.apache.ibatis.binding.MapperMethod$ParamMap 
(assert (not (= var1279 null-var2684)))
(declare-const var2969 var2427) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2969 null-var2427)))
(assert true)
(define-const var230 Bool (containsKey/172583680 (cast-from-var2684-to-var167 var1279) var2969)) ; Statement: $z0 = specialinvoke r0.<java.util.HashMap: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1) 
(assert (not (= (ite var230 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var140 var2427 (get/499451311 (cast-from-var2684-to-var167 var1279) var2969)) ; Statement: $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {containsKey/172583680=([java.util.HashMap, java.lang.Object], boolean), cast-from-var2684-to-var167=([org.apache.ibatis.binding.MapperMethod$ParamMap], java.util.HashMap), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object)}
; {var2684=org.apache.ibatis.binding.MapperMethod$ParamMap, var1279=r0, var2427=java.lang.Object, var2969=r1, var167=java.util.HashMap, var230=$z0, var140=$r2}
; {org.apache.ibatis.binding.MapperMethod$ParamMap=var2684, r0=var1279, java.lang.Object=var2427, r1=var2969, java.util.HashMap=var167, $z0=var230, $r2=var140}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.binding.MapperMethod$ParamMap;	r1 := @parameter0: java.lang.Object;	$z0 = specialinvoke r0.<java.util.HashMap: boolean containsKey(java.lang.Object)>(r1);	if $z0 != 0 goto $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1);	$r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1);	return $r2
;block_num 2