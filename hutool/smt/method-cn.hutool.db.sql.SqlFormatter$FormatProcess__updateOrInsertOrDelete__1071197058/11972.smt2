(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/273889367 (var1371) void)
(declare-fun indent/467713178 (var1371) Int)
(declare-fun beginLine/467713178 (var1371) Bool)
(declare-fun lcToken/467713178 (var1371) String)
(declare-const null-var1371 var1371)
(declare-const var3061 var1371) ; Statement: r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert (not (= var3061 null-var1371)))
(assert true)
;(assert (out/273889367 var3061)) ; Statement: specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>() 

(declare-const var3061!1 var1371)
(define-const var226 Int (indent/467713178 var3061!1)) ; Statement: $i0 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int indent> 
(define-const var1639 Int (+ var226 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3061!2 var1371)
(assert (not (= var3061!2 null-var1371)))
(assert (= (indent/467713178 var3061!2) var1639)) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int indent> = $i1 
(declare-const var3061!3 var1371)
(assert (not (= var3061!3 null-var1371)))
(assert (= (beginLine/467713178 var3061!3) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0 
(define-const var1554 String "update") ; Statement: $r2 = "update" 
(define-const var331 String (lcToken/467713178 var3061!3)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var3694 Bool (= var1554 var331)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "insert" 
(assert (= (ite var3694 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2827 String "insert") ; Statement: $r4 = "insert" 
(define-const var2380 String (lcToken/467713178 var3061!3)) ; Statement: $r3 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var1158 Bool (= var2827 var2380)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1158 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {out/273889367=([cn.hutool.db.sql.SqlFormatter$FormatProcess], void), indent/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], int), beginLine/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), lcToken/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.String)}
; {var1371=cn.hutool.db.sql.SqlFormatter$FormatProcess, var3061=r0, var226=$i0, var1639=$i1, var1554=$r2, var331=$r1, var3694=$z0, var2827=$r4, var2380=$r3, var1158=$z1}
; {cn.hutool.db.sql.SqlFormatter$FormatProcess=var1371, r0=var3061, $i0=var226, $i1=var1639, $r2=var1554, $r1=var331, $z0=var3694, $r4=var2827, $r3=var2380, $z1=var1158}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess;	specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>();	$i0 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int indent>;	$i1 = $i0 + 1;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int indent> = $i1;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 0;	$r2 = "update";	$r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "insert";	$r4 = "insert";	$r3 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken>;	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z1 == 0 goto return;	return
;block_num 3