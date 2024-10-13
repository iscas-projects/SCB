(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3578 0)
(declare-sort var569 0)
(declare-sort var3638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3578 var3578)
(declare-const null-String String)
(declare-const null-__Array__Int__var3638__ (Array Int var3638))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var486 var3578) ; Statement: r6 := @this: org.apache.log4j.jmx.AppenderDynamicMBean 
(assert (not (= var486 null-var3578)))
(declare-const var3659 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3659 null-String)))
(declare-const var577 (Array Int var3638)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var577 null-__Array__Int__var3638__)))
(declare-const var3188 (Array Int String)) ; Statement: r11 := @parameter2: java.lang.String[] 
(assert (not (= var3188 null-__Array__Int__String__)))
(assert true)
(define-const var1484 Bool (= var3659 "activateOptions")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("activateOptions") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("setLayout") 
(assert (= (ite var1484 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var207 Bool (= var3659 "setLayout")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("setLayout") 
 ; Statement: if $z1 == 0 goto return null 
(assert (= (ite var207 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3578=org.apache.log4j.jmx.AppenderDynamicMBean, var486=r6, var3659=r0, var569=null_type, var3638=java.lang.Object, var577=r1, var3188=r11, var1484=$z0, var207=$z1}
; {org.apache.log4j.jmx.AppenderDynamicMBean=var3578, r6=var486, r0=var3659, null_type=var569, java.lang.Object=var3638, r1=var577, r11=var3188, $z0=var1484, $z1=var207}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r6 := @this: org.apache.log4j.jmx.AppenderDynamicMBean;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object[];	r11 := @parameter2: java.lang.String[];	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("activateOptions");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("setLayout");	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("setLayout");	if $z1 == 0 goto return null;	return null
;block_num 3