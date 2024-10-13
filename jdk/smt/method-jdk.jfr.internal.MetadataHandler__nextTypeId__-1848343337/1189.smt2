(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2517 0)
(declare-sort var2026 0)
(declare-sort var319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var319) String)
(declare-fun getId/1727904112 (var319) Int)
(declare-const null-var2517 var2517)
(declare-const null-String String)
(declare-const var319-THREAD var319)
(declare-const var2744 var2517) ; Statement: r9 := @this: jdk.jfr.internal.MetadataHandler 
(assert (not (= var2744 null-var2517)))
(declare-const var2103 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2103 null-String)))
(define-const var3841 var319 var319-THREAD) ; Statement: $r0 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type THREAD> 
(assert true)
(define-const var884 String (getName/-2081927433 var3841)) ; Statement: $r2 = virtualinvoke $r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
(define-const var3898 Bool (= var884 var2103)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type STRING> 
(assert (not (= (ite var3898 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var46 var319 var319-THREAD) ; Statement: $r15 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type THREAD> 
(assert true)
(define-const var3651 Int (getId/1727904112 var46)) ; Statement: $l5 = virtualinvoke $r15.<jdk.jfr.internal.Type: long getId()>() 
 ; Statement: return $l5 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), getId/1727904112=([jdk.jfr.internal.Type], long)}
; {var2517=jdk.jfr.internal.MetadataHandler, var2744=r9, var2103=r1, var2026=null_type, var319=jdk.jfr.internal.Type, var3841=$r0, var884=$r2, var3898=$z0, var46=$r15, var3651=$l5}
; {jdk.jfr.internal.MetadataHandler=var2517, r9=var2744, r1=var2103, null_type=var2026, jdk.jfr.internal.Type=var319, $r0=var3841, $r2=var884, $z0=var3898, $r15=var46, $l5=var3651}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r9 := @this: jdk.jfr.internal.MetadataHandler;	r1 := @parameter0: java.lang.String;	$r0 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type THREAD>;	$r2 = virtualinvoke $r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type STRING>;	$r15 = <jdk.jfr.internal.Type: jdk.jfr.internal.Type THREAD>;	$l5 = virtualinvoke $r15.<jdk.jfr.internal.Type: long getId()>();	return $l5
;block_num 2