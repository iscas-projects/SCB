(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3094 0)
(declare-sort var3645 0)
(declare-sort var3616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isOverlappedBy/1466116538 (var3094 var3094) Bool)
(declare-fun var3645-init () var3645)
(declare-fun arr-var3616-init () (Array Int var3616))
(declare-fun cast-from-var3094-to-var3616 (var3094) var3616)
(declare-fun String_format/1339386452 (String (Array Int var3616)) String)
(declare-fun <init>/875830710 (var3645 String) void)
(declare-const null-var3094 var3094)
(declare-const null-__Array__Int__var3616__ (Array Int var3616))
(declare-const var717 var3094) ; Statement: r0 := @this: org.apache.commons.lang3.Range 
(assert (not (= var717 null-var3094)))
(declare-const var2763 var3094) ; Statement: r1 := @parameter0: org.apache.commons.lang3.Range 
(assert (not (= var2763 null-var3094)))
(assert true)
(define-const var1496 Bool (isOverlappedBy/1466116538 var717 var2763)) ; Statement: $z0 = virtualinvoke r0.<org.apache.commons.lang3.Range: boolean isOverlappedBy(org.apache.commons.lang3.Range)>(r1) 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<org.apache.commons.lang3.Range: boolean equals(java.lang.Object)>(r1) 
(assert (not (not (= (ite var1496 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var276 var3645 var3645-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var3546 (Array Int var3616) arr-var3616-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var3546!1 (Array Int var3616))
(assert (not (= var3546!1 null-__Array__Int__var3616__)))
(assert (= (select var3546!1 0) (cast-from-var3094-to-var3616 var2763))) ; Statement: $r12[0] = r1 
(define-const var3561 String (String_format/1339386452 "Cannot calculate intersection with non-overlapping range %s" var3546!1)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot calculate intersection with non-overlapping range %s", $r12) 
(assert true)
;(assert (<init>/875830710 var276 var3561)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var276!1 var3645)
(declare-const var3561!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {isOverlappedBy/1466116538=([org.apache.commons.lang3.Range, org.apache.commons.lang3.Range], boolean), var3645-init=([], java.lang.IllegalArgumentException), arr-var3616-init=([], java.lang.Object[]), cast-from-var3094-to-var3616=([org.apache.commons.lang3.Range], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3094=org.apache.commons.lang3.Range, var717=r0, var2763=r1, var1496=$z0, var3645=java.lang.IllegalArgumentException, var276=$r11, var3616=java.lang.Object, var3546=$r12, var3561=$r13}
; {org.apache.commons.lang3.Range=var3094, r0=var717, r1=var2763, $z0=var1496, java.lang.IllegalArgumentException=var3645, $r11=var276, java.lang.Object=var3616, $r12=var3546, $r13=var3561}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.commons.lang3.Range;	r1 := @parameter0: org.apache.commons.lang3.Range;	$z0 = virtualinvoke r0.<org.apache.commons.lang3.Range: boolean isOverlappedBy(org.apache.commons.lang3.Range)>(r1);	if $z0 != 0 goto $z1 = virtualinvoke r0.<org.apache.commons.lang3.Range: boolean equals(java.lang.Object)>(r1);	$r11 = new java.lang.IllegalArgumentException;	$r12 = newarray (java.lang.Object)[1];	$r12[0] = r1;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Cannot calculate intersection with non-overlapping range %s", $r12);	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r11
;block_num 2