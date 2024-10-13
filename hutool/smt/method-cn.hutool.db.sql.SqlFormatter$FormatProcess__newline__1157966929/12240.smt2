(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/467713178 (var2477) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun indent/467713178 (var2477) Int)
(declare-fun beginLine/467713178 (var2477) Bool)
(declare-const null-var2477 var2477)
(declare-const var2943 var2477) ; Statement: r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert (not (= var2943 null-var2477)))
(define-const var3806 String (result/467713178 var2943)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result> 
(assert true)
;(assert (append/1560614132 var3806 "\n")) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\n") 
(declare-const var3806!1 String)
(assert (str.prefixof var3806 var3806!1))
(define-const var2249 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3785 Int (indent/467713178 var2943)) ; Statement: $i0 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int indent> 
 ; Statement: if i1 >= $i0 goto r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 1 
(assert (>= var2249 var3785)) ; Cond: i1 >= $i0 
(declare-const var2943!1 var2477)
(assert (not (= var2943!1 null-var2477)))
(assert (= (beginLine/467713178 var2943!1) (ite (= 1 1) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {result/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), indent/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], int), beginLine/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean)}
; {var2477=cn.hutool.db.sql.SqlFormatter$FormatProcess, var2943=r0, var3806=$r1, var2249=i1, var3785=$i0}
; {cn.hutool.db.sql.SqlFormatter$FormatProcess=var2477, r0=var2943, $r1=var3806, i1=var2249, $i0=var3785}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess;	$r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\n");	i1 = 0;	$i0 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int indent>;	if i1 >= $i0 goto r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 1;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 1;	return
;block_num 3