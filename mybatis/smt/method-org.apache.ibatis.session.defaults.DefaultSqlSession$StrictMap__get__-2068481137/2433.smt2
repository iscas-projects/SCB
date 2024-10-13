(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3875 0)
(declare-sort var2795 0)
(declare-sort var2247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun containsKey/172583680 (var2247 var2795) Bool)
(declare-fun cast-from-var3875-to-var2247 (var3875) var2247)
(declare-fun get/499451311 (var2247 var2795) var2795)
(declare-const null-var3875 var3875)
(declare-const null-var2795 var2795)
(declare-const var910 var3875) ; Statement: r0 := @this: org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap 
(assert (not (= var910 null-var3875)))
(declare-const var3468 var2795) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3468 null-var2795)))
(assert true)
(define-const var2203 Bool (containsKey/172583680 (cast-from-var3875-to-var2247 var910) var3468)) ; Statement: $z0 = specialinvoke r0.<java.util.HashMap: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1) 
(assert (not (= (ite var2203 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3220 var2795 (get/499451311 (cast-from-var3875-to-var2247 var910) var3468)) ; Statement: $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {containsKey/172583680=([java.util.HashMap, java.lang.Object], boolean), cast-from-var3875-to-var2247=([org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap], java.util.HashMap), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object)}
; {var3875=org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap, var910=r0, var2795=java.lang.Object, var3468=r1, var2247=java.util.HashMap, var2203=$z0, var3220=$r2}
; {org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap=var3875, r0=var910, java.lang.Object=var2795, r1=var3468, java.util.HashMap=var2247, $z0=var2203, $r2=var3220}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.session.defaults.DefaultSqlSession$StrictMap;	r1 := @parameter0: java.lang.Object;	$z0 = specialinvoke r0.<java.util.HashMap: boolean containsKey(java.lang.Object)>(r1);	if $z0 != 0 goto $r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1);	$r2 = specialinvoke r0.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r1);	return $r2
;block_num 2