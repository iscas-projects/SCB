(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3276 0)
(declare-sort var2859 0)
(declare-sort var298 0)
(declare-sort var756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var3276) var298)
(declare-fun collectionNotProcessedByFlush$str/1073032211 (var3276) String)
(declare-fun arr-var756-init () (Array Int var756))
(declare-fun cast-from-String-to-var756 (String) var756)
(declare-fun String_format/-647569892 (var298 String (Array Int var756)) String)
(declare-const null-var3276 var3276)
(declare-const null-String String)
(declare-const null-__Array__Int__var756__ (Array Int var756))
(declare-const var3123 var3276) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var3123 null-var3276)))
(declare-const var1060 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1060 null-String)))
(assert true)
(define-const var197 var298 (getLoggingLocale/-317789992 var3123)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var2612 String (collectionNotProcessedByFlush$str/1073032211 var3123)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String collectionNotProcessedByFlush$str()>() 
(define-const var2914 (Array Int var756) arr-var756-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var2914!1 (Array Int var756))
(assert (not (= var2914!1 null-__Array__Int__var756__)))
(assert (= (select var2914!1 0) (cast-from-String-to-var756 var1060))) ; Statement: $r1[0] = r2 
(define-const var346 String (String_format/-647569892 var197 var2612 var2914!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), collectionNotProcessedByFlush$str/1073032211=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var756-init=([], java.lang.Object[]), cast-from-String-to-var756=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3276=org.hibernate.internal.CoreMessageLogger_$logger, var3123=r0, var1060=r2, var2859=null_type, var298=java.util.Locale, var197=$r4, var2612=$r3, var756=java.lang.Object, var2914=$r1, var346=$r5}
; {org.hibernate.internal.CoreMessageLogger_$logger=var3276, r0=var3123, r2=var1060, null_type=var2859, java.util.Locale=var298, $r4=var197, $r3=var2612, java.lang.Object=var756, $r1=var2914, $r5=var346}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String collectionNotProcessedByFlush$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1