(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var38 0)
(declare-sort var1628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun filename/-650692845 (var38) String)
(declare-const null-var38 var38)
(declare-const null-String String)
(declare-const var3892 var38) ; Statement: r0 := @this: jdk.jfr.internal.jfc.JFC$KnownConfiguration 
(assert (not (= var3892 null-var38)))
(declare-const var3794 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3794 null-String)))
(define-const var1386 String (filename/-650692845 var3892)) ; Statement: $r2 = r0.<jdk.jfr.internal.jfc.JFC$KnownConfiguration: java.lang.String filename> 
(assert true)
(define-const var3418 Bool (= var1386 var3794)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var3418 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2965 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {filename/-650692845=([jdk.jfr.internal.jfc.JFC$KnownConfiguration], java.lang.String)}
; {var38=jdk.jfr.internal.jfc.JFC$KnownConfiguration, var3892=r0, var3794=r1, var1628=null_type, var1386=$r2, var3418=$z0, var2965=$z2}
; {jdk.jfr.internal.jfc.JFC$KnownConfiguration=var38, r0=var3892, r1=var3794, null_type=var1628, $r2=var1386, $z0=var3418, $z2=var2965}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.jfr.internal.jfc.JFC$KnownConfiguration;	r1 := @parameter0: java.lang.String;	$r2 = r0.<jdk.jfr.internal.jfc.JFC$KnownConfiguration: java.lang.String filename>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3