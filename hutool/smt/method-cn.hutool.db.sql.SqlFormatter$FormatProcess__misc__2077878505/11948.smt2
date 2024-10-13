(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/273889367 (var3014) void)
(declare-fun lcToken/467713178 (var3014) String)
(declare-fun afterInsert/467713178 (var3014) Bool)
(declare-fun beginLine/467713178 (var3014) Bool)
(declare-const null-var3014 var3014)
(declare-const var3990 var3014) ; Statement: r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert (not (= var3990 null-var3014)))
(assert true)
;(assert (out/273889367 var3990)) ; Statement: specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>() 

(declare-const var3990!1 var3014)
(define-const var1020 String "between") ; Statement: $r2 = "between" 
(define-const var3540 String (lcToken/467713178 var3990!1)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var3326 Bool (= var1020 var3540)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $z1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert> 
(assert (= (ite var3326 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3410 Bool (afterInsert/467713178 var3990!1)) ; Statement: $z1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert> 
 ; Statement: if $z1 == 0 goto r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0 
(assert (= (ite var3410 1 0) 0)) ; Cond: $z1 == 0 
(declare-const var3990!2 var3014)
(assert (not (= var3990!2 null-var3014)))
(assert (= (beginLine/467713178 var3990!2) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0 
(define-const var3802 String "case") ; Statement: $r4 = "case" 
(define-const var2033 String (lcToken/467713178 var3990!2)) ; Statement: $r3 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var741 Bool (= var3802 var2033)) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var741 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {out/273889367=([cn.hutool.db.sql.SqlFormatter$FormatProcess], void), lcToken/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.String), afterInsert/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), beginLine/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean)}
; {var3014=cn.hutool.db.sql.SqlFormatter$FormatProcess, var3990=r0, var1020=$r2, var3540=$r1, var3326=$z0, var3410=$z1, var3802=$r4, var2033=$r3, var741=$z2}
; {cn.hutool.db.sql.SqlFormatter$FormatProcess=var3014, r0=var3990, $r2=var1020, $r1=var3540, $z0=var3326, $z1=var3410, $r4=var3802, $r3=var2033, $z2=var741}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess;	specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>();	$r2 = "between";	$r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $z1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert>;	$z1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert>;	if $z1 == 0 goto r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0;	$r4 = "case";	$r3 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken>;	$z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z2 == 0 goto return;	return
;block_num 4