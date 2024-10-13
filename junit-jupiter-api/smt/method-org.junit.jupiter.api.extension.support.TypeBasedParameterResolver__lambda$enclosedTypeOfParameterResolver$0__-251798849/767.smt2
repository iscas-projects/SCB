(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2817 0)
(declare-sort var3099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3099-init () (Array Int var3099))
(declare-fun getClass/1258963082 (var3099) ClassObject)
(declare-fun cast-from-var2817-to-var3099 (var2817) var3099)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var3099 (String) var3099)
(declare-fun String_format/1339386452 (String (Array Int var3099)) String)
(declare-const null-var2817 var2817)
(declare-const null-__Array__Int__var3099__ (Array Int var3099))
(declare-const var3912 var2817) ; Statement: r1 := @this: org.junit.jupiter.api.extension.support.TypeBasedParameterResolver 
(assert (not (= var3912 null-var2817)))
(define-const var571 (Array Int var3099) arr-var3099-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var82 ClassObject (getClass/1258963082 (cast-from-var2817-to-var3099 var3912))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var298 String (getName/-1958580599 var82)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(declare-const var571!1 (Array Int var3099))
(assert (not (= var571!1 null-__Array__Int__var3099__)))
(assert (= (select var571!1 0) (cast-from-String-to-var3099 var298))) ; Statement: $r0[0] = $r3 
(define-const var2662 String (String_format/1339386452 "Failed to discover parameter type supported by %s; potentially caused by lacking parameterized type in class declaration." var571!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Failed to discover parameter type supported by %s; potentially caused by lacking parameterized type in class declaration.", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3099-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2817-to-var3099=([org.junit.jupiter.api.extension.support.TypeBasedParameterResolver], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var3099=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2817=org.junit.jupiter.api.extension.support.TypeBasedParameterResolver, var3912=r1, var3099=java.lang.Object, var571=$r0, var82=$r2, var298=$r3, var2662=$r4}
; {org.junit.jupiter.api.extension.support.TypeBasedParameterResolver=var2817, r1=var3912, java.lang.Object=var3099, $r0=var571, $r2=var82, $r3=var298, $r4=var2662}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.junit.jupiter.api.extension.support.TypeBasedParameterResolver;	$r0 = newarray (java.lang.Object)[1];	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Failed to discover parameter type supported by %s; potentially caused by lacking parameterized type in class declaration.", $r0);	return $r4
;block_num 1