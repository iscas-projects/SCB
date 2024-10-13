(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2862 0)
(declare-sort var2117 0)
(declare-sort var1390 0)
(declare-sort var633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2117-init () (Array Int var2117))
(declare-fun succeeded/-1111384579 (var2862) Bool)
(declare-fun cast-from-String-to-var2117 (String) var2117)
(declare-fun getLabels/-463263563 (var2862) var1390)
(declare-fun size/2097699827 (var633) Int)
(declare-fun cast-from-var1390-to-var633 (var1390) var633)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2117 (Int) var2117)
(declare-fun String_format/1339386452 (String (Array Int var2117)) String)
(declare-const null-var2862 var2862)
(declare-const null-__Array__Int__var2117__ (Array Int var2117))
(declare-const var218 var2862) ; Statement: r1 := @this: org.antlr.v4.runtime.tree.pattern.ParseTreeMatch 
(assert (not (= var218 null-var2862)))
(define-const var2669 (Array Int var2117) arr-var2117-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var970 Bool (succeeded/-1111384579 var218)) ; Statement: $z0 = virtualinvoke r1.<org.antlr.v4.runtime.tree.pattern.ParseTreeMatch: boolean succeeded()>() 
 ; Statement: if $z0 == 0 goto $r5 = "failed" 
(assert (not (= (ite var970 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1551 String "succeeded") ; Statement: $r5 = "succeeded" 
 ; Statement: goto [?= $r0[0] = $r5] 
(assert true) ; Non Conditional
(declare-const var2669!1 (Array Int var2117))
(assert (not (= var2669!1 null-__Array__Int__var2117__)))
(assert (= (select var2669!1 0) (cast-from-String-to-var2117 var1551))) ; Statement: $r0[0] = $r5 
(assert true)
(define-const var806 var1390 (getLabels/-463263563 var218)) ; Statement: $r2 = virtualinvoke r1.<org.antlr.v4.runtime.tree.pattern.ParseTreeMatch: org.antlr.v4.runtime.misc.MultiMap getLabels()>() 
(assert true)
(define-const var239 Int (size/2097699827 (cast-from-var1390-to-var633 var806))) ; Statement: $i0 = virtualinvoke $r2.<org.antlr.v4.runtime.misc.MultiMap: int size()>() 
(define-const var2455 Int (Int_valueOf/-1371140006 var239)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2669!2 (Array Int var2117))
(assert (not (= var2669!2 null-__Array__Int__var2117__)))
(assert (= (select var2669!2 1) (cast-from-Int-to-var2117 var2455))) ; Statement: $r0[1] = $r3 
(define-const var3227 String (String_format/1339386452 "Match %s; found %d labels" var2669!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Match %s; found %d labels", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2117-init=([], java.lang.Object[]), succeeded/-1111384579=([org.antlr.v4.runtime.tree.pattern.ParseTreeMatch], boolean), cast-from-String-to-var2117=([java.lang.String], java.lang.Object), getLabels/-463263563=([org.antlr.v4.runtime.tree.pattern.ParseTreeMatch], org.antlr.v4.runtime.misc.MultiMap), size/2097699827=([java.util.HashMap], int), cast-from-var1390-to-var633=([org.antlr.v4.runtime.misc.MultiMap], java.util.HashMap), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2117=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2862=org.antlr.v4.runtime.tree.pattern.ParseTreeMatch, var218=r1, var2117=java.lang.Object, var2669=$r0, var970=$z0, var1551=$r5, var1390=org.antlr.v4.runtime.misc.MultiMap, var806=$r2, var633=java.util.HashMap, var239=$i0, var2455=$r3, var3227=$r4}
; {org.antlr.v4.runtime.tree.pattern.ParseTreeMatch=var2862, r1=var218, java.lang.Object=var2117, $r0=var2669, $z0=var970, $r5=var1551, org.antlr.v4.runtime.misc.MultiMap=var1390, $r2=var806, java.util.HashMap=var633, $i0=var239, $r3=var2455, $r4=var3227}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.tree.pattern.ParseTreeMatch;	$r0 = newarray (java.lang.Object)[2];	$z0 = virtualinvoke r1.<org.antlr.v4.runtime.tree.pattern.ParseTreeMatch: boolean succeeded()>();	if $z0 == 0 goto $r5 = "failed";	$r5 = "succeeded";	goto [?= $r0[0] = $r5];	$r0[0] = $r5;	$r2 = virtualinvoke r1.<org.antlr.v4.runtime.tree.pattern.ParseTreeMatch: org.antlr.v4.runtime.misc.MultiMap getLabels()>();	$i0 = virtualinvoke $r2.<org.antlr.v4.runtime.misc.MultiMap: int size()>();	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Match %s; found %d labels", $r0);	return $r4
;block_num 3