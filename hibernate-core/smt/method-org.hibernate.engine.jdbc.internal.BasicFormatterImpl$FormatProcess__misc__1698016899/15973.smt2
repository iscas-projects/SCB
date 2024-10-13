(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-1678026883 (var1400) void)
(declare-fun lcToken/-1214741580 (var1400) String)
(declare-fun afterInsert/-1214741580 (var1400) Bool)
(declare-fun newline/1939687543 (var1400) void)
(declare-const null-var1400 var1400)
(declare-const var174 var1400) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess 
(assert (not (= var174 null-var1400)))
(assert true)
;(assert (out/-1678026883 var174)) ; Statement: specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>() 

(declare-const var174!1 var1400)
(define-const var1159 String "between") ; Statement: $r2 = "between" 
(define-const var1912 String (lcToken/-1214741580 var174!1)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var357 Bool (= var1159 var1912)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $z1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert> 
(assert (= (ite var357 1 0) 0)) ; Cond: $z0 == 0 
(define-const var869 Bool (afterInsert/-1214741580 var174!1)) ; Statement: $z1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert> 
 ; Statement: if $z1 == 0 goto r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0 
(assert (not (= (ite var869 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (newline/1939687543 var174!1)) ; Statement: specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>() 

(declare-const var174!2 var1400)
(declare-const var174!3 var1400)
(assert (not (= var174!3 null-var1400)))
(assert (= (afterInsert/-1214741580 var174!3) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert> = 0 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-1678026883=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], void), lcToken/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.String), afterInsert/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], boolean), newline/1939687543=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], void)}
; {var1400=org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess, var174=r0, var1159=$r2, var1912=$r1, var357=$z0, var869=$z1}
; {org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess=var1400, r0=var174, $r2=var1159, $r1=var1912, $z0=var357, $z1=var869}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess;	specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>();	$r2 = "between";	$r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $z1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert>;	$z1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert>;	if $z1 == 0 goto r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 0;	specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>();	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterInsert> = 0;	goto [?= return];	return
;block_num 4