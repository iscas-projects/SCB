(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-1678026883 (var2167) void)
(declare-fun lcToken/-1214741580 (var2167) String)
(declare-fun afterInsert/-1214741580 (var2167) Bool)
(declare-fun beginLine/-1214741580 (var2167) Bool)
(declare-const null-var2167 var2167)
(declare-const var606 var2167) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess 
(assert (not (= var606 null-var2167)))
(assert true)
;(assert (out/-1678026883 var606)) ; Statement: specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>() 

(declare-const var606!1 var2167)
(define-const var795 String "between") ; Statement: $r2 = "between" 
(define-const var454 String (lcToken/-1214741580 var606!1)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var3876 Bool (= var795 var454)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $z1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert> 
(assert (= (ite var3876 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1187 Bool (afterInsert/-1214741580 var606!1)) ; Statement: $z1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert> 
 ; Statement: if $z1 == 0 goto r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0 
(assert (= (ite var1187 1 0) 0)) ; Cond: $z1 == 0 
(declare-const var606!2 var2167)
(assert (not (= var606!2 null-var2167)))
(assert (= (beginLine/-1214741580 var606!2) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0 
(define-const var2131 String "case") ; Statement: $r4 = "case" 
(define-const var259 String (lcToken/-1214741580 var606!2)) ; Statement: $r3 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var2202 Bool (= var2131 var259)) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var2202 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-1678026883=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], void), lcToken/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.String), afterInsert/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], boolean), beginLine/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], boolean)}
; {var2167=org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess, var606=r0, var795=$r2, var454=$r1, var3876=$z0, var1187=$z1, var2131=$r4, var259=$r3, var2202=$z2}
; {org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess=var2167, r0=var606, $r2=var795, $r1=var454, $z0=var3876, $z1=var1187, $r4=var2131, $r3=var259, $z2=var2202}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess;	specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>();	$r2 = "between";	$r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $z1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert>;	$z1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert>;	if $z1 == 0 goto r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0;	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0;	$r4 = "case";	$r3 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken>;	$z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z2 == 0 goto return;	return
;block_num 4