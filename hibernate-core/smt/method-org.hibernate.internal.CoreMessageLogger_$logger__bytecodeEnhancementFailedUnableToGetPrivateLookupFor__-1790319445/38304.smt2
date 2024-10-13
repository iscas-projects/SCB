(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3775 0)
(declare-sort var3256 0)
(declare-sort var1334 0)
(declare-sort var349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var3775) var1334)
(declare-fun bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str/1138316889 (var3775) String)
(declare-fun arr-var349-init () (Array Int var349))
(declare-fun cast-from-String-to-var349 (String) var349)
(declare-fun String_format/-647569892 (var1334 String (Array Int var349)) String)
(declare-const null-var3775 var3775)
(declare-const null-String String)
(declare-const null-__Array__Int__var349__ (Array Int var349))
(declare-const var2396 var3775) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var2396 null-var3775)))
(declare-const var852 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var852 null-String)))
(assert true)
(define-const var1538 var1334 (getLoggingLocale/-317789992 var2396)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1003 String (bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str/1138316889 var2396)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str()>() 
(define-const var613 (Array Int var349) arr-var349-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var613!1 (Array Int var349))
(assert (not (= var613!1 null-__Array__Int__var349__)))
(assert (= (select var613!1 0) (cast-from-String-to-var349 var852))) ; Statement: $r1[0] = r2 
(define-const var194 String (String_format/-647569892 var1538 var1003 var613!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str/1138316889=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var349-init=([], java.lang.Object[]), cast-from-String-to-var349=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3775=org.hibernate.internal.CoreMessageLogger_$logger, var2396=r0, var852=r2, var3256=null_type, var1334=java.util.Locale, var1538=$r4, var1003=$r3, var349=java.lang.Object, var613=$r1, var194=$r5}
; {org.hibernate.internal.CoreMessageLogger_$logger=var3775, r0=var2396, r2=var852, null_type=var3256, java.util.Locale=var1334, $r4=var1538, $r3=var1003, java.lang.Object=var349, $r1=var613, $r5=var194}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1