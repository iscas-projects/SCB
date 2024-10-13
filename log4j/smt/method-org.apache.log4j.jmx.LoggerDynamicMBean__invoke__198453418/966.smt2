(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1776 0)
(declare-sort var2276 0)
(declare-sort var672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var672-to-String (var672) String)
(declare-fun addAppender/1332525200 (var1776 String String) void)
(declare-const null-var1776 var1776)
(declare-const null-String String)
(declare-const null-__Array__Int__var672__ (Array Int var672))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3123 var1776) ; Statement: r1 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var3123 null-var1776)))
(declare-const var1001 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1001 null-String)))
(declare-const var2461 (Array Int var672)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var2461 null-__Array__Int__var672__)))
(declare-const var1222 (Array Int String)) ; Statement: r7 := @parameter2: java.lang.String[] 
(assert (not (= var1222 null-__Array__Int__String__)))
(assert true)
(define-const var2428 Bool (= var1001 "addAppender")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("addAppender") 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2428 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1858 var672 (select var2461 0)) ; Statement: $r3 = r2[0] 
(define-const var1097 String (cast-from-var672-to-String var1858)) ; Statement: $r6 = (java.lang.String) $r3 
(define-const var1273 var672 (select var2461 1)) ; Statement: $r4 = r2[1] 
(define-const var1275 String (cast-from-var672-to-String var1273)) ; Statement: $r5 = (java.lang.String) $r4 
(assert true)
;(assert (addAppender/1332525200 var3123 var1097 var1275)) ; Statement: virtualinvoke r1.<org.apache.log4j.jmx.LoggerDynamicMBean: void addAppender(java.lang.String,java.lang.String)>($r6, $r5) 

(declare-const var3123!1 var1776)
(declare-const var1097!1 String)
(declare-const var1275!1 String)
 ; Statement: return "Hello world." 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var672-to-String=([java.lang.Object], java.lang.String), addAppender/1332525200=([org.apache.log4j.jmx.LoggerDynamicMBean, java.lang.String, java.lang.String], void)}
; {var1776=org.apache.log4j.jmx.LoggerDynamicMBean, var3123=r1, var1001=r0, var2276=null_type, var672=java.lang.Object, var2461=r2, var1222=r7, var2428=$z0, var1858=$r3, var1097=$r6, var1273=$r4, var1275=$r5}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var1776, r1=var3123, r0=var1001, null_type=var2276, java.lang.Object=var672, r2=var2461, r7=var1222, $z0=var2428, $r3=var1858, $r6=var1097, $r4=var1273, $r5=var1275}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object[];	r7 := @parameter2: java.lang.String[];	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("addAppender");	if $z0 == 0 goto return null;	$r3 = r2[0];	$r6 = (java.lang.String) $r3;	$r4 = r2[1];	$r5 = (java.lang.String) $r4;	virtualinvoke r1.<org.apache.log4j.jmx.LoggerDynamicMBean: void addAppender(java.lang.String,java.lang.String)>($r6, $r5);	return "Hello world."
;block_num 2