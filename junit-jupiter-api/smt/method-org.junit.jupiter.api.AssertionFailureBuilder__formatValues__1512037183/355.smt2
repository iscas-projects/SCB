(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3767 0)
(declare-sort var2507 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2507_toString/70922743 (var3767) String)
(declare-fun arr-var3767-init () (Array Int var3767))
(declare-fun var2507_formatClassAndValue/935799385 (var3767 String) String)
(declare-fun cast-from-String-to-var3767 (String) var3767)
(declare-fun String_format/1339386452 (String (Array Int var3767)) String)
(declare-const null-var3767 var3767)
(declare-const null-__Array__Int__var3767__ (Array Int var3767))
(declare-const var3818 var3767) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3818 null-var3767)))
(declare-const var2899 var3767) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2899 null-var3767)))
(define-const var2857 String (var2507_toString/70922743 var3818)) ; Statement: r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>(r0) 
(define-const var2621 String (var2507_toString/70922743 var2899)) ; Statement: r3 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>(r2) 
(assert true)
(define-const var3135 Bool (= var2857 var2621)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r4 = newarray (java.lang.Object)[2] 
(assert (not (= (ite var3135 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1151 (Array Int var3767) arr-var3767-init) ; Statement: $r6 = newarray (java.lang.Object)[2] 
(define-const var627 String (var2507_formatClassAndValue/935799385 var3818 var2857)) ; Statement: $r7 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String formatClassAndValue(java.lang.Object,java.lang.String)>(r0, r1) 
(declare-const var1151!1 (Array Int var3767))
(assert (not (= var1151!1 null-__Array__Int__var3767__)))
(assert (= (select var1151!1 0) (cast-from-String-to-var3767 var627))) ; Statement: $r6[0] = $r7 
(define-const var2364 String (var2507_formatClassAndValue/935799385 var2899 var2621)) ; Statement: $r8 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String formatClassAndValue(java.lang.Object,java.lang.String)>(r2, r3) 
(declare-const var1151!2 (Array Int var3767))
(assert (not (= var1151!2 null-__Array__Int__var3767__)))
(assert (= (select var1151!2 1) (cast-from-String-to-var3767 var2364))) ; Statement: $r6[1] = $r8 
(define-const var1118 String (String_format/1339386452 "expected: %s but was: %s" var1151!2)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("expected: %s but was: %s", $r6) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2507_toString/70922743=([java.lang.Object], java.lang.String), arr-var3767-init=([], java.lang.Object[]), var2507_formatClassAndValue/935799385=([java.lang.Object, java.lang.String], java.lang.String), cast-from-String-to-var3767=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3767=java.lang.Object, var3818=r0, var2899=r2, var2507=org.junit.jupiter.api.AssertionFailureBuilder, var2857=r1, var2621=r3, var3135=$z0, var1151=$r6, var627=$r7, var2364=$r8, var1118=$r9}
; {java.lang.Object=var3767, r0=var3818, r2=var2899, org.junit.jupiter.api.AssertionFailureBuilder=var2507, r1=var2857, r3=var2621, $z0=var3135, $r6=var1151, $r7=var627, $r8=var2364, $r9=var1118}
;seq <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>;	<org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>(r0);	r3 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>(r2);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $r4 = newarray (java.lang.Object)[2];	$r6 = newarray (java.lang.Object)[2];	$r7 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String formatClassAndValue(java.lang.Object,java.lang.String)>(r0, r1);	$r6[0] = $r7;	$r8 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String formatClassAndValue(java.lang.Object,java.lang.String)>(r2, r3);	$r6[1] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("expected: %s but was: %s", $r6);	return $r9
;block_num 2