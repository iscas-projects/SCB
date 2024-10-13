(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lcToken/-1214741580 (var1465) String)
(declare-fun newline/1939687543 (var1465) void)
(declare-fun out/-1678026883 (var1465) void)
(declare-fun beginLine/-1214741580 (var1465) Bool)
(declare-const null-var1465 var1465)
(declare-const var2991 var1465) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess 
(assert (not (= var2991 null-var1465)))
(define-const var121 String "end") ; Statement: $r2 = "end" 
(define-const var3317 String (lcToken/-1214741580 var2991)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var2972 Bool (= var121 var3317)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>() 
(assert (= (ite var2972 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (newline/1939687543 var2991)) ; Statement: specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>() 

(declare-const var2991!1 var1465)
(assert true)
;(assert (out/-1678026883 var2991!1)) ; Statement: specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>() 

(declare-const var2991!2 var1465)
(declare-const var2991!3 var1465)
(assert (not (= var2991!3 null-var1465)))
(assert (= (beginLine/-1214741580 var2991!3) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lcToken/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.String), newline/1939687543=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], void), out/-1678026883=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], void), beginLine/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], boolean)}
; {var1465=org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess, var2991=r0, var121=$r2, var3317=$r1, var2972=$z0}
; {org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess=var1465, r0=var2991, $r2=var121, $r1=var3317, $z0=var2972}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess;	$r2 = "end";	$r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>();	specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>();	specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>();	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0;	return
;block_num 2