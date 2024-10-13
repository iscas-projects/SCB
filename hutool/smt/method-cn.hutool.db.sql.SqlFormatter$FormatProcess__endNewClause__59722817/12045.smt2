(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterBeginBeforeEnd/467713178 (var3743) Bool)
(declare-fun out/273889367 (var3743) void)
(declare-fun lcToken/467713178 (var3743) String)
(declare-fun newline/1157966929 (var3743) void)
(declare-fun afterByOrSetOrFromOrSelect/467713178 (var3743) Bool)
(declare-const null-var3743 var3743)
(declare-const var2189 var3743) ; Statement: r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert (not (= var2189 null-var3743)))
(define-const var3773 Bool (afterBeginBeforeEnd/467713178 var2189)) ; Statement: $z0 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterBeginBeforeEnd> 
 ; Statement: if $z0 != 0 goto specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>() 
(assert (not (= (ite var3773 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (out/273889367 var2189)) ; Statement: specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>() 

(declare-const var2189!1 var3743)
(define-const var1262 String "union") ; Statement: $r7 = "union" 
(define-const var1963 String (lcToken/467713178 var2189!1)) ; Statement: $r8 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var499 Bool (= var1262 var1963)) ; Statement: $z5 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z5 != 0 goto specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>() 
(assert (not (= (ite var499 1 0) 0))) ; Cond: $z5 != 0 
(assert true)
;(assert (newline/1157966929 var2189!1)) ; Statement: specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>() 

(declare-const var2189!2 var3743)
(declare-const var2189!3 var3743)
(assert (not (= var2189!3 null-var3743)))
(assert (= (afterBeginBeforeEnd/467713178 var2189!3) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterBeginBeforeEnd> = 0 
(define-const var2621 String "by") ; Statement: $r2 = "by" 
(define-const var1639 String (lcToken/467713178 var2189!3)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken> 
(assert true)
(define-const var509 Bool (= var2621 var1639)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z1 != 0 goto $z6 = 1 
(assert (not (= (ite var509 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3804 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterByOrSetOrFromOrSelect> = $z6] 
(assert true) ; Non Conditional
(declare-const var2189!4 var3743)
(assert (not (= var2189!4 null-var3743)))
(assert (= (afterByOrSetOrFromOrSelect/467713178 var2189!4) var3804)) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterByOrSetOrFromOrSelect> = $z6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterBeginBeforeEnd/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), out/273889367=([cn.hutool.db.sql.SqlFormatter$FormatProcess], void), lcToken/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.String), newline/1157966929=([cn.hutool.db.sql.SqlFormatter$FormatProcess], void), afterByOrSetOrFromOrSelect/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean)}
; {var3743=cn.hutool.db.sql.SqlFormatter$FormatProcess, var2189=r0, var3773=$z0, var1262=$r7, var1963=$r8, var499=$z5, var2621=$r2, var1639=$r1, var509=$z1, var3804=$z6}
; {cn.hutool.db.sql.SqlFormatter$FormatProcess=var3743, r0=var2189, $z0=var3773, $r7=var1262, $r8=var1963, $z5=var499, $r2=var2621, $r1=var1639, $z1=var509, $z6=var3804}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess;	$z0 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterBeginBeforeEnd>;	if $z0 != 0 goto specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>();	specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void out()>();	$r7 = "union";	$r8 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken>;	$z5 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z5 != 0 goto specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>();	specialinvoke r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: void newline()>();	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterBeginBeforeEnd> = 0;	$r2 = "by";	$r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String lcToken>;	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z1 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterByOrSetOrFromOrSelect> = $z6];	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterByOrSetOrFromOrSelect> = $z6;	return
;block_num 5