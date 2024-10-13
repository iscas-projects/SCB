(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lcToken/467713178 (var956) String)
(declare-fun newline/1157966929 (var956) void)
(declare-fun out/273889367 (var956) void)
(declare-fun beginLine/467713178 (var956) Bool)
(declare-const null-var956 var956)
(declare-const var3831 var956) ; Statement: r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert (not (= var3831 null-var956)))
(define-const var2351 String "end") ; Statement: $r2 = "end" 
(define-const var1501 String (lcToken/467713178 var3831)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var3381 Bool (= var2351 var1501)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>() 
(assert (= (ite var3381 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (newline/1157966929 var3831)) ; Statement: specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>() 

(declare-const var3831!1 var956)
(assert true)
;(assert (out/273889367 var3831!1)) ; Statement: specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>() 

(declare-const var3831!2 var956)
(declare-const var3831!3 var956)
(assert (not (= var3831!3 null-var956)))
(assert (= (beginLine/467713178 var3831!3) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lcToken/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.String), newline/1157966929=([cn.hutool.db.sql.SqlFormatter$FormatProcess], void), out/273889367=([cn.hutool.db.sql.SqlFormatter$FormatProcess], void), beginLine/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean)}
; {var956=cn.hutool.db.sql.SqlFormatter$FormatProcess, var3831=r0, var2351=$r2, var1501=$r1, var3381=$z0}
; {cn.hutool.db.sql.SqlFormatter$FormatProcess=var956, r0=var3831, $r2=var2351, $r1=var1501, $z0=var3381}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess;	$r2 = "end";	$r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>();	specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>();	specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>();	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0;	return
;block_num 2