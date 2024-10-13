(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3554 0)
(declare-sort var3585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3554 var3554)
(declare-const null-String String)
(declare-const var1446 var3554) ; Statement: r2 := @this: com.google.javascript.jscomp.ClosureCodingConvention 
(assert (not (= var1446 null-var3554)))
(declare-const var2476 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2476 null-String)))
(define-const var3262 String "superClass_") ; Statement: $r1 = "superClass_" 
(assert true)
(define-const var2716 Bool (= var3262 var2476)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2716 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1472 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3554=com.google.javascript.jscomp.ClosureCodingConvention, var1446=r2, var2476=r0, var3585=null_type, var3262=$r1, var2716=$z0, var1472=$z2}
; {com.google.javascript.jscomp.ClosureCodingConvention=var3554, r2=var1446, r0=var2476, null_type=var3585, $r1=var3262, $z0=var2716, $z2=var1472}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ClosureCodingConvention;	r0 := @parameter0: java.lang.String;	$r1 = "superClass_";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3