(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2276 0)
(declare-sort var787 0)
(declare-sort var1717 0)
(declare-sort var3688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun propertyNames/129409880 (var787) var3688)
(declare-fun var3688_hasMoreElements/-1180312480 (var3688) Bool)
(declare-fun activate/1266231958 (var2276) void)
(declare-const null-var2276 var2276)
(declare-const null-var787 var787)
(declare-const null-String String)
(declare-const var3300 var2276) ; Statement: r3 := @this: org.apache.log4j.config.PropertySetter 
(assert (not (= var3300 null-var2276)))
(declare-const var2087 var787) ; Statement: r1 := @parameter0: java.util.Properties 
(assert (not (= var2087 null-var787)))
(declare-const var133 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var133 null-String)))
(assert true)
(define-const var164 Int (length/-134980193 var133)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1198 var3688 (propertyNames/129409880 var2087)) ; Statement: r2 = virtualinvoke r1.<java.util.Properties: java.util.Enumeration propertyNames()>() 
(assert true) ; Non Conditional
(define-const var2499 Bool (var3688_hasMoreElements/-1180312480 var1198)) ; Statement: $z7 = interfaceinvoke r2.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z7 == 0 goto virtualinvoke r3.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (= (ite var2499 1 0) 0)) ; Cond: $z7 == 0 
(assert true)
;(assert (activate/1266231958 var3300)) ; Statement: virtualinvoke r3.<org.apache.log4j.config.PropertySetter: void activate()>() 

(declare-const var3300!1 var2276)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), propertyNames/129409880=([java.util.Properties], java.util.Enumeration), var3688_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), activate/1266231958=([org.apache.log4j.config.PropertySetter], void)}
; {var2276=org.apache.log4j.config.PropertySetter, var3300=r3, var787=java.util.Properties, var2087=r1, var133=r0, var1717=null_type, var164=i0, var3688=java.util.Enumeration, var1198=r2, var2499=$z7}
; {org.apache.log4j.config.PropertySetter=var2276, r3=var3300, java.util.Properties=var787, r1=var2087, r0=var133, null_type=var1717, i0=var164, java.util.Enumeration=var3688, r2=var1198, $z7=var2499}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: org.apache.log4j.config.PropertySetter;	r1 := @parameter0: java.util.Properties;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r2 = virtualinvoke r1.<java.util.Properties: java.util.Enumeration propertyNames()>();	$z7 = interfaceinvoke r2.<java.util.Enumeration: boolean hasMoreElements()>();	if $z7 == 0 goto virtualinvoke r3.<org.apache.log4j.config.PropertySetter: void activate()>();	virtualinvoke r3.<org.apache.log4j.config.PropertySetter: void activate()>();	return
;block_num 3