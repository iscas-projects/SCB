(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterBeginBeforeEnd/-1214741580 (var1864) Bool)
(declare-fun out/-1678026883 (var1864) void)
(declare-fun lcToken/-1214741580 (var1864) String)
(declare-fun newline/1939687543 (var1864) void)
(declare-fun afterByOrSetOrFromOrSelect/-1214741580 (var1864) Bool)
(declare-const null-var1864 var1864)
(declare-const var543 var1864) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess 
(assert (not (= var543 null-var1864)))
(define-const var1115 Bool (afterBeginBeforeEnd/-1214741580 var543)) ; Statement: $z0 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterBeginBeforeEnd> 
 ; Statement: if $z0 != 0 goto specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>() 
(assert (not (= (ite var1115 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (out/-1678026883 var543)) ; Statement: specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>() 

(declare-const var543!1 var1864)
(define-const var1147 String "union") ; Statement: $r7 = "union" 
(define-const var3471 String (lcToken/-1214741580 var543!1)) ; Statement: $r8 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var3840 Bool (= var1147 var3471)) ; Statement: $z5 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z5 != 0 goto specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>() 
(assert (not (= (ite var3840 1 0) 0))) ; Cond: $z5 != 0 
(assert true)
;(assert (newline/1939687543 var543!1)) ; Statement: specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>() 

(declare-const var543!2 var1864)
(declare-const var543!3 var1864)
(assert (not (= var543!3 null-var1864)))
(assert (= (afterBeginBeforeEnd/-1214741580 var543!3) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterBeginBeforeEnd> = 0 
(define-const var2020 String "by") ; Statement: $r2 = "by" 
(define-const var1939 String (lcToken/-1214741580 var543!3)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var1811 Bool (= var2020 var1939)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z1 != 0 goto $z6 = 1 
(assert (not (= (ite var1811 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1373 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterByOrSetOrFromOrSelect> = $z6] 
(assert true) ; Non Conditional
(declare-const var543!4 var1864)
(assert (not (= var543!4 null-var1864)))
(assert (= (afterByOrSetOrFromOrSelect/-1214741580 var543!4) var1373)) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterByOrSetOrFromOrSelect> = $z6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterBeginBeforeEnd/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], boolean), out/-1678026883=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], void), lcToken/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.String), newline/1939687543=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], void), afterByOrSetOrFromOrSelect/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], boolean)}
; {var1864=org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess, var543=r0, var1115=$z0, var1147=$r7, var3471=$r8, var3840=$z5, var2020=$r2, var1939=$r1, var1811=$z1, var1373=$z6}
; {org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess=var1864, r0=var543, $z0=var1115, $r7=var1147, $r8=var3471, $z5=var3840, $r2=var2020, $r1=var1939, $z1=var1811, $z6=var1373}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess;	$z0 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterBeginBeforeEnd>;	if $z0 != 0 goto specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>();	specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void out()>();	$r7 = "union";	$r8 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken>;	$z5 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z5 != 0 goto specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>();	specialinvoke r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: void newline()>();	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterBeginBeforeEnd> = 0;	$r2 = "by";	$r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String lcToken>;	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z1 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterByOrSetOrFromOrSelect> = $z6];	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean afterByOrSetOrFromOrSelect> = $z6;	return
;block_num 5