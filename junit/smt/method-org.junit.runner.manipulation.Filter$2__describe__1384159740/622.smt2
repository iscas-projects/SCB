(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1350 0)
(declare-sort var1990 0)
(declare-sort var868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1990-init () (Array Int var1990))
(declare-fun val$desiredDescription/-1028590237 (var1350) var868)
(declare-fun getDisplayName/1305192085 (var868) String)
(declare-fun cast-from-String-to-var1990 (String) var1990)
(declare-fun String_format/1339386452 (String (Array Int var1990)) String)
(declare-const null-var1350 var1350)
(declare-const null-__Array__Int__var1990__ (Array Int var1990))
(declare-const var2734 var1350) ; Statement: r1 := @this: org.junit.runner.manipulation.Filter$2 
(assert (not (= var2734 null-var1350)))
(define-const var8 (Array Int var1990) arr-var1990-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var3013 var868 (val$desiredDescription/-1028590237 var2734)) ; Statement: $r2 = r1.<org.junit.runner.manipulation.Filter$2: org.junit.runner.Description val$desiredDescription> 
(assert true)
(define-const var1159 String (getDisplayName/1305192085 var3013)) ; Statement: $r3 = virtualinvoke $r2.<org.junit.runner.Description: java.lang.String getDisplayName()>() 
(declare-const var8!1 (Array Int var1990))
(assert (not (= var8!1 null-__Array__Int__var1990__)))
(assert (= (select var8!1 0) (cast-from-String-to-var1990 var1159))) ; Statement: $r0[0] = $r3 
(define-const var681 String (String_format/1339386452 "Method %s" var8!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Method %s", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1990-init=([], java.lang.Object[]), val$desiredDescription/-1028590237=([org.junit.runner.manipulation.Filter$2], org.junit.runner.Description), getDisplayName/1305192085=([org.junit.runner.Description], java.lang.String), cast-from-String-to-var1990=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1350=org.junit.runner.manipulation.Filter$2, var2734=r1, var1990=java.lang.Object, var8=$r0, var868=org.junit.runner.Description, var3013=$r2, var1159=$r3, var681=$r4}
; {org.junit.runner.manipulation.Filter$2=var1350, r1=var2734, java.lang.Object=var1990, $r0=var8, org.junit.runner.Description=var868, $r2=var3013, $r3=var1159, $r4=var681}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.junit.runner.manipulation.Filter$2;	$r0 = newarray (java.lang.Object)[1];	$r2 = r1.<org.junit.runner.manipulation.Filter$2: org.junit.runner.Description val$desiredDescription>;	$r3 = virtualinvoke $r2.<org.junit.runner.Description: java.lang.String getDisplayName()>();	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Method %s", $r0);	return $r4
;block_num 1