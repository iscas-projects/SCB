(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3284 0)
(declare-sort var1144 0)
(declare-sort var1141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1144-init () (Array Int var1144))
(declare-fun fieldName/1057785277 (var3284) String)
(declare-fun cast-from-String-to-var1144 (String) var1144)
(declare-fun getLeft/1053147166 (var1141) var1144)
(declare-fun cast-from-var3284-to-var1141 (var3284) var1141)
(declare-fun getRight/-570391911 (var1141) var1144)
(declare-fun String_format/1339386452 (String (Array Int var1144)) String)
(declare-const null-var3284 var3284)
(declare-const null-__Array__Int__var1144__ (Array Int var1144))
(declare-const var3344 var3284) ; Statement: r1 := @this: org.apache.commons.lang3.builder.Diff 
(assert (not (= var3344 null-var3284)))
(define-const var2310 (Array Int var1144) arr-var1144-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(define-const var2512 String (fieldName/1057785277 var3344)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.Diff: java.lang.String fieldName> 
(declare-const var2310!1 (Array Int var1144))
(assert (not (= var2310!1 null-__Array__Int__var1144__)))
(assert (= (select var2310!1 0) (cast-from-String-to-var1144 var2512))) ; Statement: $r0[0] = $r2 
(assert true)
(define-const var2539 var1144 (getLeft/1053147166 (cast-from-var3284-to-var1141 var3344))) ; Statement: $r3 = virtualinvoke r1.<org.apache.commons.lang3.builder.Diff: java.lang.Object getLeft()>() 
(declare-const var2310!2 (Array Int var1144))
(assert (not (= var2310!2 null-__Array__Int__var1144__)))
(assert (= (select var2310!2 1) var2539)) ; Statement: $r0[1] = $r3 
(assert true)
(define-const var1060 var1144 (getRight/-570391911 (cast-from-var3284-to-var1141 var3344))) ; Statement: $r4 = virtualinvoke r1.<org.apache.commons.lang3.builder.Diff: java.lang.Object getRight()>() 
(declare-const var2310!3 (Array Int var1144))
(assert (not (= var2310!3 null-__Array__Int__var1144__)))
(assert (= (select var2310!3 2) var1060)) ; Statement: $r0[2] = $r4 
(define-const var1122 String (String_format/1339386452 "[%s: %s, %s]" var2310!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("[%s: %s, %s]", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1144-init=([], java.lang.Object[]), fieldName/1057785277=([org.apache.commons.lang3.builder.Diff], java.lang.String), cast-from-String-to-var1144=([java.lang.String], java.lang.Object), getLeft/1053147166=([org.apache.commons.lang3.tuple.Pair], java.lang.Object), cast-from-var3284-to-var1141=([org.apache.commons.lang3.builder.Diff], org.apache.commons.lang3.tuple.Pair), getRight/-570391911=([org.apache.commons.lang3.tuple.Pair], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3284=org.apache.commons.lang3.builder.Diff, var3344=r1, var1144=java.lang.Object, var2310=$r0, var2512=$r2, var1141=org.apache.commons.lang3.tuple.Pair, var2539=$r3, var1060=$r4, var1122=$r5}
; {org.apache.commons.lang3.builder.Diff=var3284, r1=var3344, java.lang.Object=var1144, $r0=var2310, $r2=var2512, org.apache.commons.lang3.tuple.Pair=var1141, $r3=var2539, $r4=var1060, $r5=var1122}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.Diff;	$r0 = newarray (java.lang.Object)[3];	$r2 = r1.<org.apache.commons.lang3.builder.Diff: java.lang.String fieldName>;	$r0[0] = $r2;	$r3 = virtualinvoke r1.<org.apache.commons.lang3.builder.Diff: java.lang.Object getLeft()>();	$r0[1] = $r3;	$r4 = virtualinvoke r1.<org.apache.commons.lang3.builder.Diff: java.lang.Object getRight()>();	$r0[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("[%s: %s, %s]", $r0);	return $r5
;block_num 1