(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2978 0)
(declare-sort var1216 0)
(declare-sort var3239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3239-init () (Array Int var3239))
(declare-fun getLeft/1053147166 (var2978) var3239)
(declare-fun getRight/-570391911 (var2978) var3239)
(declare-fun String_format/1339386452 (String (Array Int var3239)) String)
(declare-const null-var2978 var2978)
(declare-const null-String String)
(declare-const null-__Array__Int__var3239__ (Array Int var3239))
(declare-const var1235 var2978) ; Statement: r2 := @this: org.apache.commons.lang3.tuple.Pair 
(assert (not (= var1235 null-var2978)))
(declare-const var1213 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1213 null-String)))
(define-const var3379 (Array Int var3239) arr-var3239-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var404 var3239 (getLeft/1053147166 var1235)) ; Statement: $r3 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Pair: java.lang.Object getLeft()>() 
(declare-const var3379!1 (Array Int var3239))
(assert (not (= var3379!1 null-__Array__Int__var3239__)))
(assert (= (select var3379!1 0) var404)) ; Statement: $r1[0] = $r3 
(assert true)
(define-const var3729 var3239 (getRight/-570391911 var1235)) ; Statement: $r4 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Pair: java.lang.Object getRight()>() 
(declare-const var3379!2 (Array Int var3239))
(assert (not (= var3379!2 null-__Array__Int__var3239__)))
(assert (= (select var3379!2 1) var3729)) ; Statement: $r1[1] = $r4 
(define-const var552 String (String_format/1339386452 var1213 var3379!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3239-init=([], java.lang.Object[]), getLeft/1053147166=([org.apache.commons.lang3.tuple.Pair], java.lang.Object), getRight/-570391911=([org.apache.commons.lang3.tuple.Pair], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2978=org.apache.commons.lang3.tuple.Pair, var1235=r2, var1213=r0, var1216=null_type, var3239=java.lang.Object, var3379=$r1, var404=$r3, var3729=$r4, var552=$r5}
; {org.apache.commons.lang3.tuple.Pair=var2978, r2=var1235, r0=var1213, null_type=var1216, java.lang.Object=var3239, $r1=var3379, $r3=var404, $r4=var3729, $r5=var552}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.apache.commons.lang3.tuple.Pair;	r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[2];	$r3 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Pair: java.lang.Object getLeft()>();	$r1[0] = $r3;	$r4 = virtualinvoke r2.<org.apache.commons.lang3.tuple.Pair: java.lang.Object getRight()>();	$r1[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, $r1);	return $r5
;block_num 1