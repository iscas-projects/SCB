(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/-1214741580 (var1453) String)
(declare-fun token/-1214741580 (var1453) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1453 var1453)
(declare-const var3650 var1453) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess 
(assert (not (= var3650 null-var1453)))
(define-const var2489 String (result/-1214741580 var3650)) ; Statement: $r2 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result> 
(define-const var2022 String (token/-1214741580 var3650)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String token> 
(assert true)
;(assert (append/672562846 var2489 var2022)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2489!1 String)
(assert (= var2489!1 (str.++ var2489 var2022)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {result/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.StringBuilder), token/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1453=org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess, var3650=r0, var2489=$r2, var2022=$r1}
; {org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess=var1453, r0=var3650, $r2=var2489, $r1=var2022}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess;	$r2 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result>;	$r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.String token>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	return
;block_num 1