(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2859 0)
(declare-sort var173 0)
(declare-sort var868 0)
(declare-sort var3737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var2859) var868)
(declare-fun bytecodeEnhancementFailedBecauseOfDefaultConstructor$str/947036599 (var2859) String)
(declare-fun arr-var3737-init () (Array Int var3737))
(declare-fun cast-from-String-to-var3737 (String) var3737)
(declare-fun String_format/-647569892 (var868 String (Array Int var3737)) String)
(declare-const null-var2859 var2859)
(declare-const null-String String)
(declare-const null-__Array__Int__var3737__ (Array Int var3737))
(declare-const var2089 var2859) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var2089 null-var2859)))
(declare-const var745 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var745 null-String)))
(assert true)
(define-const var1354 var868 (getLoggingLocale/-317789992 var2089)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var2445 String (bytecodeEnhancementFailedBecauseOfDefaultConstructor$str/947036599 var2089)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String bytecodeEnhancementFailedBecauseOfDefaultConstructor$str()>() 
(define-const var316 (Array Int var3737) arr-var3737-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var316!1 (Array Int var3737))
(assert (not (= var316!1 null-__Array__Int__var3737__)))
(assert (= (select var316!1 0) (cast-from-String-to-var3737 var745))) ; Statement: $r1[0] = r2 
(define-const var1200 String (String_format/-647569892 var1354 var2445 var316!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), bytecodeEnhancementFailedBecauseOfDefaultConstructor$str/947036599=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var3737-init=([], java.lang.Object[]), cast-from-String-to-var3737=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2859=org.hibernate.internal.CoreMessageLogger_$logger, var2089=r0, var745=r2, var173=null_type, var868=java.util.Locale, var1354=$r4, var2445=$r3, var3737=java.lang.Object, var316=$r1, var1200=$r5}
; {org.hibernate.internal.CoreMessageLogger_$logger=var2859, r0=var2089, r2=var745, null_type=var173, java.util.Locale=var868, $r4=var1354, $r3=var2445, java.lang.Object=var3737, $r1=var316, $r5=var1200}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String bytecodeEnhancementFailedBecauseOfDefaultConstructor$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1