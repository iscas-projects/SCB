(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var705 0)
(declare-sort var678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var678_toString/70922743 (var705) String)
(declare-fun arr-var705-init () (Array Int var705))
(declare-fun cast-from-String-to-var705 (String) var705)
(declare-fun String_format/1339386452 (String (Array Int var705)) String)
(declare-const null-var705 var705)
(declare-const null-__Array__Int__var705__ (Array Int var705))
(declare-const var1372 var705) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1372 null-var705)))
(declare-const var73 var705) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var73 null-var705)))
(define-const var1552 String (var678_toString/70922743 var1372)) ; Statement: r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>(r0) 
(define-const var3471 String (var678_toString/70922743 var73)) ; Statement: r3 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>(r2) 
(assert true)
(define-const var3752 Bool (= var1552 var3471)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r4 = newarray (java.lang.Object)[2] 
(assert (= (ite var3752 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1803 (Array Int var705) arr-var705-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(declare-const var1803!1 (Array Int var705))
(assert (not (= var1803!1 null-__Array__Int__var705__)))
(assert (= (select var1803!1 0) (cast-from-String-to-var705 var1552))) ; Statement: $r4[0] = r1 
(declare-const var1803!2 (Array Int var705))
(assert (not (= var1803!2 null-__Array__Int__var705__)))
(assert (= (select var1803!2 1) (cast-from-String-to-var705 var3471))) ; Statement: $r4[1] = r3 
(define-const var2768 String (String_format/1339386452 "expected: <%s> but was: <%s>" var1803!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("expected: <%s> but was: <%s>", $r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var678_toString/70922743=([java.lang.Object], java.lang.String), arr-var705-init=([], java.lang.Object[]), cast-from-String-to-var705=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var705=java.lang.Object, var1372=r0, var73=r2, var678=org.junit.jupiter.api.AssertionFailureBuilder, var1552=r1, var3471=r3, var3752=$z0, var1803=$r4, var2768=$r5}
; {java.lang.Object=var705, r0=var1372, r2=var73, org.junit.jupiter.api.AssertionFailureBuilder=var678, r1=var1552, r3=var3471, $z0=var3752, $r4=var1803, $r5=var2768}
;seq <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>;	<org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>(r0);	r3 = staticinvoke <org.junit.jupiter.api.AssertionFailureBuilder: java.lang.String toString(java.lang.Object)>(r2);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $r4 = newarray (java.lang.Object)[2];	$r4 = newarray (java.lang.Object)[2];	$r4[0] = r1;	$r4[1] = r3;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("expected: <%s> but was: <%s>", $r4);	return $r5
;block_num 2