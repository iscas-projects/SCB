(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var569 0)
(declare-sort var1459 0)
(declare-sort var746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/-1214741580 (var569) String)
(declare-fun var1459_access$000/-508560164 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokens/-1214741580 (var569) var746)
(declare-fun hasMoreTokens/711654492 (var746) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var569 var569)
(declare-const var1873 var569) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess 
(assert (not (= var1873 null-var569)))
(define-const var250 String (result/-1214741580 var1873)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result> 
(define-const var1127 String var1459_access$000/-508560164) ; Statement: $r2 = staticinvoke <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.lang.String access$000()>() 
(assert true)
;(assert (append/672562846 var250 var1127)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var250!1 String)
(assert (= var250!1 (str.++ var250 var1127)))
(assert true) ; Non Conditional
(define-const var1658 var746 (tokens/-1214741580 var1873)) ; Statement: $r68 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.util.StringTokenizer tokens> 
(assert true)
(define-const var268 Bool (hasMoreTokens/711654492 var1658)) ; Statement: $z24 = virtualinvoke $r68.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z24 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result> 
(assert (= (ite var268 1 0) 0)) ; Cond: $z24 == 0 
(define-const var76 String (result/-1214741580 var1873)) ; Statement: $r3 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result> 
(assert true)
(define-const var3921 String (toString/-2075883882 var76)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {result/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.StringBuilder), var1459_access$000/-508560164=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokens/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.util.StringTokenizer), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var569=org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess, var1873=r0, var250=$r1, var1459=org.hibernate.engine.jdbc.internal.BasicFormatterImpl, var1127=$r2, var746=java.util.StringTokenizer, var1658=$r68, var268=$z24, var76=$r3, var3921=$r4}
; {org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess=var569, r0=var1873, $r1=var250, org.hibernate.engine.jdbc.internal.BasicFormatterImpl=var1459, $r2=var1127, java.util.StringTokenizer=var746, $r68=var1658, $z24=var268, $r3=var76, $r4=var3921}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess;	$r1 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result>;	$r2 = staticinvoke <org.hibernate.engine.jdbc.internal.BasicFormatterImpl: java.lang.String access$000()>();	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r68 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.util.StringTokenizer tokens>;	$z24 = virtualinvoke $r68.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z24 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result>;	$r3 = r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3