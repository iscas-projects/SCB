(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1933 0)
(declare-sort var35 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$value/-29446135 (var1933) var35)
(declare-fun arr-var35-init () (Array Int var35))
(declare-fun cast-from-String-to-var35 (String) var35)
(declare-fun val$name/-29446135 (var1933) String)
(declare-fun String_format/1339386452 (String (Array Int var35)) String)
(declare-const null-var1933 var1933)
(declare-const null-var35 var35)
(declare-const null-__Array__Int__var35__ (Array Int var35))
(declare-const var1535 var1933) ; Statement: r0 := @this: org.junit.experimental.theories.PotentialAssignment$1 
(assert (not (= var1535 null-var1933)))
(define-const var2347 var35 (val$value/-29446135 var1535)) ; Statement: $r1 = r0.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.Object val$value> 
 ; Statement: if $r1 != null goto $r2 = newarray (java.lang.Object)[1] 
(assert (not (not (= var2347 null-var35)))) ; Negate: Cond: $r1 != null  
(define-const var662 String "null") ; Statement: r9 = "null" 
 ; Statement: goto [?= $r10 = newarray (java.lang.Object)[2]] 
(assert true) ; Non Conditional
(define-const var3103 (Array Int var35) arr-var35-init) ; Statement: $r10 = newarray (java.lang.Object)[2] 
(declare-const var3103!1 (Array Int var35))
(assert (not (= var3103!1 null-__Array__Int__var35__)))
(assert (= (select var3103!1 0) (cast-from-String-to-var35 var662))) ; Statement: $r10[0] = r9 
(define-const var1277 String (val$name/-29446135 var1535)) ; Statement: $r11 = r0.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.String val$name> 
(declare-const var3103!2 (Array Int var35))
(assert (not (= var3103!2 null-__Array__Int__var35__)))
(assert (= (select var3103!2 1) (cast-from-String-to-var35 var1277))) ; Statement: $r10[1] = $r11 
(define-const var1169 String (String_format/1339386452 "%s <from %s>" var3103!2)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s <from %s>", $r10) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {val$value/-29446135=([org.junit.experimental.theories.PotentialAssignment$1], java.lang.Object), arr-var35-init=([], java.lang.Object[]), cast-from-String-to-var35=([java.lang.String], java.lang.Object), val$name/-29446135=([org.junit.experimental.theories.PotentialAssignment$1], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1933=org.junit.experimental.theories.PotentialAssignment$1, var1535=r0, var35=java.lang.Object, var2347=$r1, var662=r9, var3103=$r10, var1277=$r11, var1169=$r12}
; {org.junit.experimental.theories.PotentialAssignment$1=var1933, r0=var1535, java.lang.Object=var35, $r1=var2347, r9=var662, $r10=var3103, $r11=var1277, $r12=var1169}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.junit.experimental.theories.PotentialAssignment$1;	$r1 = r0.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.Object val$value>;	if $r1 != null goto $r2 = newarray (java.lang.Object)[1];	r9 = "null";	goto [?= $r10 = newarray (java.lang.Object)[2]];	$r10 = newarray (java.lang.Object)[2];	$r10[0] = r9;	$r11 = r0.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.String val$name>;	$r10[1] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s <from %s>", $r10);	return $r12
;block_num 3