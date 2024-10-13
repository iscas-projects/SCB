(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-1678026883 (var1306) void)
(declare-fun indent/-1214741580 (var1306) Int)
(declare-fun beginLine/-1214741580 (var1306) Bool)
(declare-fun lcToken/-1214741580 (var1306) String)
(declare-const null-var1306 var1306)
(declare-const var3892 var1306) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess 
(assert (not (= var3892 null-var1306)))
(assert true)
;(assert (out/-1678026883 var3892)) ; Statement: specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>() 

(declare-const var3892!1 var1306)
(define-const var2600 Int (indent/-1214741580 var3892!1)) ; Statement: $i0 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: int indent> 
(define-const var2539 Int (+ var2600 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3892!2 var1306)
(assert (not (= var3892!2 null-var1306)))
(assert (= (indent/-1214741580 var3892!2) var2539)) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: int indent> = $i1 
(declare-const var3892!3 var1306)
(assert (not (= var3892!3 null-var1306)))
(assert (= (beginLine/-1214741580 var3892!3) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0 
(define-const var379 String "update") ; Statement: $r2 = "update" 
(define-const var2861 String (lcToken/-1214741580 var3892!3)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var978 Bool (= var379 var2861)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "insert" 
(assert (= (ite var978 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2627 String "insert") ; Statement: $r4 = "insert" 
(define-const var349 String (lcToken/-1214741580 var3892!3)) ; Statement: $r3 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var933 Bool (= var2627 var349)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var933 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-1678026883=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], void), indent/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], int), beginLine/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], boolean), lcToken/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.String)}
; {var1306=org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess, var3892=r0, var2600=$i0, var2539=$i1, var379=$r2, var2861=$r1, var978=$z0, var2627=$r4, var349=$r3, var933=$z1}
; {org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess=var1306, r0=var3892, $i0=var2600, $i1=var2539, $r2=var379, $r1=var2861, $z0=var978, $r4=var2627, $r3=var349, $z1=var933}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess;	specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>();	$i0 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: int indent>;	$i1 = $i0 + 1;	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: int indent> = $i1;	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0;	$r2 = "update";	$r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "insert";	$r4 = "insert";	$r3 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken>;	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z1 == 0 goto return;	return
;block_num 3