(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/467713178 (var2019) String)
(declare-fun token/467713178 (var2019) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2019 var2019)
(declare-const var2053 var2019) ; Statement: r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert (not (= var2053 null-var2019)))
(define-const var1530 String (result/467713178 var2053)) ; Statement: $r2 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result> 
(define-const var3987 String (token/467713178 var2053)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String token> 
(assert true)
;(assert (append/1560614132 var1530 var3987)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r1) 
(declare-const var1530!1 String)
(assert (str.prefixof var1530 var1530!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {result/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.StringBuffer), token/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2019=cn.hutool.db.sql.SqlFormatter$FormatProcess, var2053=r0, var1530=$r2, var3987=$r1}
; {cn.hutool.db.sql.SqlFormatter$FormatProcess=var2019, r0=var2053, $r2=var1530, $r1=var3987}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess;	$r2 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result>;	$r1 = r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.String token>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r1);	return
;block_num 1