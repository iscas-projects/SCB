(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var638 0)
(declare-sort var3053 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3053_deprecatedSetting/-667550565 (var3053 String String) void)
(declare-const null-String String)
(declare-const var3053-DEPRECATION_LOGGER var3053)
(declare-const var1259 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1259 null-String)))
(assert true)
(define-const var3595 Bool (startsWith/-1785782452 var1259 "hibernate.ejb.event")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.ejb.event") 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var3595 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1054 var3053 var3053-DEPRECATION_LOGGER) ; Statement: $r1 = <org.hibernate.internal.log.DeprecationLogger: org.hibernate.internal.log.DeprecationLogger DEPRECATION_LOGGER> 
;(assert (var3053_deprecatedSetting/-667550565 var1054 "hibernate.ejb.event" "hibernate.event.listener")) ; Statement: interfaceinvoke $r1.<org.hibernate.internal.log.DeprecationLogger: void deprecatedSetting(java.lang.String,java.lang.String)>("hibernate.ejb.event", "hibernate.event.listener") 

(declare-const var1054!1 var3053)
(declare-const var2885 String)
(declare-const var241 String)
 ; Statement: return "hibernate.ejb.event" 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3053_deprecatedSetting/-667550565=([org.hibernate.internal.log.DeprecationLogger, java.lang.String, java.lang.String], void)}
; {var1259=r0, var638=null_type, var3595=$z0, var3053=org.hibernate.internal.log.DeprecationLogger, var1054=$r1, var2885="hibernate.ejb.event", var241="hibernate.event.listener"}
; {r0=var1259, null_type=var638, $z0=var3595, org.hibernate.internal.log.DeprecationLogger=var3053, $r1=var1054, "hibernate.ejb.event"=var2885, "hibernate.event.listener"=var241}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.ejb.event");	if $z0 == 0 goto return null;	$r1 = <org.hibernate.internal.log.DeprecationLogger: org.hibernate.internal.log.DeprecationLogger DEPRECATION_LOGGER>;	interfaceinvoke $r1.<org.hibernate.internal.log.DeprecationLogger: void deprecatedSetting(java.lang.String,java.lang.String)>("hibernate.ejb.event", "hibernate.event.listener");	return "hibernate.ejb.event"
;block_num 2