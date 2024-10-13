(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/273889367 (var1056) void)
(declare-fun lcToken/467713178 (var1056) String)
(declare-fun afterInsert/467713178 (var1056) Bool)
(declare-fun newline/1157966929 (var1056) void)
(declare-const null-var1056 var1056)
(declare-const var1898 var1056) ; Statement: r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert (not (= var1898 null-var1056)))
(assert true)
;(assert (out/273889367 var1898)) ; Statement: specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>() 

(declare-const var1898!1 var1056)
(define-const var74 String "between") ; Statement: $r2 = "between" 
(define-const var2677 String (lcToken/467713178 var1898!1)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var2729 Bool (= var74 var2677)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $z1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert> 
(assert (= (ite var2729 1 0) 0)) ; Cond: $z0 == 0 
(define-const var811 Bool (afterInsert/467713178 var1898!1)) ; Statement: $z1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert> 
 ; Statement: if $z1 == 0 goto r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0 
(assert (not (= (ite var811 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (newline/1157966929 var1898!1)) ; Statement: specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>() 

(declare-const var1898!2 var1056)
(declare-const var1898!3 var1056)
(assert (not (= var1898!3 null-var1056)))
(assert (= (afterInsert/467713178 var1898!3) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert> = 0 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {out/273889367=([cn.hutool.db.sql.SqlFormatter$FormatProcess], void), lcToken/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.String), afterInsert/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), newline/1157966929=([cn.hutool.db.sql.SqlFormatter$FormatProcess], void)}
; {var1056=cn.hutool.db.sql.SqlFormatter$FormatProcess, var1898=r0, var74=$r2, var2677=$r1, var2729=$z0, var811=$z1}
; {cn.hutool.db.sql.SqlFormatter$FormatProcess=var1056, r0=var1898, $r2=var74, $r1=var2677, $z0=var2729, $z1=var811}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess;	specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>();	$r2 = "between";	$r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $z1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert>;	$z1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert>;	if $z1 == 0 goto r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0;	specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>();	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert> = 0;	goto [?= return];	return
;block_num 4