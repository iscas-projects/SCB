(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1662 0)
(declare-sort var3270 0)
(declare-sort var2230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1662 var1662)
(declare-const null-String String)
(declare-const null-__Array__Int__var2230__ (Array Int var2230))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2313 var1662) ; Statement: r1 := @this: org.apache.log4j.jmx.LayoutDynamicMBean 
(assert (not (= var2313 null-var1662)))
(declare-const var2630 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2630 null-String)))
(declare-const var1776 (Array Int var2230)) ; Statement: r4 := @parameter1: java.lang.Object[] 
(assert (not (= var1776 null-__Array__Int__var2230__)))
(declare-const var3920 (Array Int String)) ; Statement: r5 := @parameter2: java.lang.String[] 
(assert (not (= var3920 null-__Array__Int__String__)))
(assert true)
(define-const var1756 Bool (= var2630 "activateOptions")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("activateOptions") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1756 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1662=org.apache.log4j.jmx.LayoutDynamicMBean, var2313=r1, var2630=r0, var3270=null_type, var2230=java.lang.Object, var1776=r4, var3920=r5, var1756=$z0}
; {org.apache.log4j.jmx.LayoutDynamicMBean=var1662, r1=var2313, r0=var2630, null_type=var3270, java.lang.Object=var2230, r4=var1776, r5=var3920, $z0=var1756}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.jmx.LayoutDynamicMBean;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Object[];	r5 := @parameter2: java.lang.String[];	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("activateOptions");	if $z0 == 0 goto return null;	return null
;block_num 2