(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3855 0)
(declare-sort var3691 0)
(declare-sort var3964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3855 var3855)
(declare-const null-String String)
(declare-const null-__Array__Int__var3964__ (Array Int var3964))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1990 var3855) ; Statement: r1 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var1990 null-var3855)))
(declare-const var1146 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1146 null-String)))
(declare-const var1267 (Array Int var3964)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var1267 null-__Array__Int__var3964__)))
(declare-const var952 (Array Int String)) ; Statement: r7 := @parameter2: java.lang.String[] 
(assert (not (= var952 null-__Array__Int__String__)))
(assert true)
(define-const var3069 Bool (= var1146 "addAppender")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("addAppender") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3069 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3855=org.apache.log4j.jmx.LoggerDynamicMBean, var1990=r1, var1146=r0, var3691=null_type, var3964=java.lang.Object, var1267=r2, var952=r7, var3069=$z0}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var3855, r1=var1990, r0=var1146, null_type=var3691, java.lang.Object=var3964, r2=var1267, r7=var952, $z0=var3069}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object[];	r7 := @parameter2: java.lang.String[];	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("addAppender");	if $z0 == 0 goto return null;	return null
;block_num 2