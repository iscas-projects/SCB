(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2229 0)
(declare-sort var3674 0)
(declare-sort var1638 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3674-init () (Array Int var3674))
(declare-fun succeeded/-1111384579 (var2229) Bool)
(declare-fun cast-from-String-to-var3674 (String) var3674)
(declare-fun getLabels/-463263563 (var2229) var1638)
(declare-fun size/2097699827 (var123) Int)
(declare-fun cast-from-var1638-to-var123 (var1638) var123)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var3674 (Int) var3674)
(declare-fun String_format/1339386452 (String (Array Int var3674)) String)
(declare-const null-var2229 var2229)
(declare-const null-__Array__Int__var3674__ (Array Int var3674))
(declare-const var2319 var2229) ; Statement: r1 := @this: org.antlr.v4.runtime.tree.pattern.ParseTreeMatch 
(assert (not (= var2319 null-var2229)))
(define-const var2579 (Array Int var3674) arr-var3674-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var2766 Bool (succeeded/-1111384579 var2319)) ; Statement: $z0 = virtualinvoke r1.<org.antlr.v4.runtime.tree.pattern.ParseTreeMatch: boolean succeeded()>() 
 ; Statement: if $z0 == 0 goto $r5 = "failed" 
(assert (= (ite var2766 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2803 String "failed") ; Statement: $r5 = "failed" 
(assert true) ; Non Conditional
(declare-const var2579!1 (Array Int var3674))
(assert (not (= var2579!1 null-__Array__Int__var3674__)))
(assert (= (select var2579!1 0) (cast-from-String-to-var3674 var2803))) ; Statement: $r0[0] = $r5 
(assert true)
(define-const var1817 var1638 (getLabels/-463263563 var2319)) ; Statement: $r2 = virtualinvoke r1.<org.antlr.v4.runtime.tree.pattern.ParseTreeMatch: org.antlr.v4.runtime.misc.MultiMap getLabels()>() 
(assert true)
(define-const var1543 Int (size/2097699827 (cast-from-var1638-to-var123 var1817))) ; Statement: $i0 = virtualinvoke $r2.<org.antlr.v4.runtime.misc.MultiMap: int size()>() 
(define-const var15 Int (Int_valueOf/-1371140006 var1543)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2579!2 (Array Int var3674))
(assert (not (= var2579!2 null-__Array__Int__var3674__)))
(assert (= (select var2579!2 1) (cast-from-Int-to-var3674 var15))) ; Statement: $r0[1] = $r3 
(define-const var1888 String (String_format/1339386452 "Match %s; found %d labels" var2579!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Match %s; found %d labels", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3674-init=([], java.lang.Object[]), succeeded/-1111384579=([org.antlr.v4.runtime.tree.pattern.ParseTreeMatch], boolean), cast-from-String-to-var3674=([java.lang.String], java.lang.Object), getLabels/-463263563=([org.antlr.v4.runtime.tree.pattern.ParseTreeMatch], org.antlr.v4.runtime.misc.MultiMap), size/2097699827=([java.util.HashMap], int), cast-from-var1638-to-var123=([org.antlr.v4.runtime.misc.MultiMap], java.util.HashMap), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var3674=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2229=org.antlr.v4.runtime.tree.pattern.ParseTreeMatch, var2319=r1, var3674=java.lang.Object, var2579=$r0, var2766=$z0, var2803=$r5, var1638=org.antlr.v4.runtime.misc.MultiMap, var1817=$r2, var123=java.util.HashMap, var1543=$i0, var15=$r3, var1888=$r4}
; {org.antlr.v4.runtime.tree.pattern.ParseTreeMatch=var2229, r1=var2319, java.lang.Object=var3674, $r0=var2579, $z0=var2766, $r5=var2803, org.antlr.v4.runtime.misc.MultiMap=var1638, $r2=var1817, java.util.HashMap=var123, $i0=var1543, $r3=var15, $r4=var1888}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.tree.pattern.ParseTreeMatch;	$r0 = newarray (java.lang.Object)[2];	$z0 = virtualinvoke r1.<org.antlr.v4.runtime.tree.pattern.ParseTreeMatch: boolean succeeded()>();	if $z0 == 0 goto $r5 = "failed";	$r5 = "failed";	$r0[0] = $r5;	$r2 = virtualinvoke r1.<org.antlr.v4.runtime.tree.pattern.ParseTreeMatch: org.antlr.v4.runtime.misc.MultiMap getLabels()>();	$i0 = virtualinvoke $r2.<org.antlr.v4.runtime.misc.MultiMap: int size()>();	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Match %s; found %d labels", $r0);	return $r4
;block_num 3