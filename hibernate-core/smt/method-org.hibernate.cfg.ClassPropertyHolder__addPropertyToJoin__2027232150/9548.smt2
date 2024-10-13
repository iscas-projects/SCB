(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var3013 0)
(declare-sort var3246 0)
(declare-sort var570 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addProperty/-1365311140 (var570 var3013) void)
(declare-const null-var3671 var3671)
(declare-const null-var3013 var3013)
(declare-const null-var3246 var3246)
(declare-const null-var570 var570)
(declare-const var3813 var3671) ; Statement: r3 := @this: org.hibernate.cfg.ClassPropertyHolder 
(assert (not (= var3813 null-var3671)))
(declare-const var273 var3013) ; Statement: r2 := @parameter0: org.hibernate.mapping.Property 
(assert (not (= var273 null-var3013)))
(declare-const var2313 var3246) ; Statement: r0 := @parameter1: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var2313 null-var3246)))
(declare-const var3280 var570) ; Statement: r1 := @parameter2: org.hibernate.mapping.Join 
(assert (not (= var3280 null-var570)))
 ; Statement: if r0 == null goto virtualinvoke r1.<org.hibernate.mapping.Join: void addProperty(org.hibernate.mapping.Property)>(r2) 
(assert (= var2313 null-var3246)) ; Cond: r0 == null 
(assert true)
;(assert (addProperty/-1365311140 var3280 var273)) ; Statement: virtualinvoke r1.<org.hibernate.mapping.Join: void addProperty(org.hibernate.mapping.Property)>(r2) 

(declare-const var3280!1 var570)
(declare-const var273!1 var3013)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {addProperty/-1365311140=([org.hibernate.mapping.Join, org.hibernate.mapping.Property], void)}
; {var3671=org.hibernate.cfg.ClassPropertyHolder, var3813=r3, var3013=org.hibernate.mapping.Property, var273=r2, var3246=org.hibernate.annotations.common.reflection.XClass, var2313=r0, var570=org.hibernate.mapping.Join, var3280=r1}
; {org.hibernate.cfg.ClassPropertyHolder=var3671, r3=var3813, org.hibernate.mapping.Property=var3013, r2=var273, org.hibernate.annotations.common.reflection.XClass=var3246, r0=var2313, org.hibernate.mapping.Join=var570, r1=var3280}
;seq 
;cnt {}
;stmts r3 := @this: org.hibernate.cfg.ClassPropertyHolder;	r2 := @parameter0: org.hibernate.mapping.Property;	r0 := @parameter1: org.hibernate.annotations.common.reflection.XClass;	r1 := @parameter2: org.hibernate.mapping.Join;	if r0 == null goto virtualinvoke r1.<org.hibernate.mapping.Join: void addProperty(org.hibernate.mapping.Property)>(r2);	virtualinvoke r1.<org.hibernate.mapping.Join: void addProperty(org.hibernate.mapping.Property)>(r2);	return
;block_num 3