(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1741 0)
(declare-sort var3705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/-1214741580 (var1741) String)
(declare-fun var3705_lineSeparator/-342590142 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun indent/-1214741580 (var1741) Int)
(declare-fun beginLine/-1214741580 (var1741) Bool)
(declare-const null-var1741 var1741)
(declare-const var2762 var1741) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess 
(assert (not (= var2762 null-var1741)))
(define-const var3309 String (result/-1214741580 var2762)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result> 
(define-const var3035 String var3705_lineSeparator/-342590142) ; Statement: $r2 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
;(assert (append/672562846 var3309 var3035)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3309!1 String)
(assert (= var3309!1 (str.++ var3309 var3035)))
(define-const var1834 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var1114 Int (indent/-1214741580 var2762)) ; Statement: $i0 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: int indent> 
 ; Statement: if i1 >= $i0 goto r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 1 
(assert (>= var1834 var1114)) ; Cond: i1 >= $i0 
(declare-const var2762!1 var1741)
(assert (not (= var2762!1 null-var1741)))
(assert (= (beginLine/-1214741580 var2762!1) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {result/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.StringBuilder), var3705_lineSeparator/-342590142=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), indent/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], int), beginLine/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], boolean)}
; {var1741=org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess, var2762=r0, var3309=$r1, var3705=java.lang.System, var3035=$r2, var1834=i1, var1114=$i0}
; {org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess=var1741, r0=var2762, $r1=var3309, java.lang.System=var3705, $r2=var3035, i1=var1834, $i0=var1114}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess;	$r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result>;	$r2 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	i1 = 0;	$i0 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: int indent>;	if i1 >= $i0 goto r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 1;	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 1;	return
;block_num 3