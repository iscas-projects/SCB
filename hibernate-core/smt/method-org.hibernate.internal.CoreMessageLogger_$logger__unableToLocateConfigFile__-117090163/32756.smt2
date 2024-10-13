(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var850 0)
(declare-sort var2409 0)
(declare-sort var3343 0)
(declare-sort var3712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var850) var3343)
(declare-fun unableToLocateConfigFile$str/-1723200197 (var850) String)
(declare-fun arr-var3712-init () (Array Int var3712))
(declare-fun cast-from-String-to-var3712 (String) var3712)
(declare-fun String_format/-647569892 (var3343 String (Array Int var3712)) String)
(declare-const null-var850 var850)
(declare-const null-String String)
(declare-const null-__Array__Int__var3712__ (Array Int var3712))
(declare-const var3765 var850) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var3765 null-var850)))
(declare-const var2210 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2210 null-String)))
(assert true)
(define-const var2655 var3343 (getLoggingLocale/-317789992 var3765)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var3594 String (unableToLocateConfigFile$str/-1723200197 var3765)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToLocateConfigFile$str()>() 
(define-const var2362 (Array Int var3712) arr-var3712-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var2362!1 (Array Int var3712))
(assert (not (= var2362!1 null-__Array__Int__var3712__)))
(assert (= (select var2362!1 0) (cast-from-String-to-var3712 var2210))) ; Statement: $r1[0] = r2 
(define-const var3734 String (String_format/-647569892 var2655 var3594 var2362!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), unableToLocateConfigFile$str/-1723200197=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var3712-init=([], java.lang.Object[]), cast-from-String-to-var3712=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var850=org.hibernate.internal.CoreMessageLogger_$logger, var3765=r0, var2210=r2, var2409=null_type, var3343=java.util.Locale, var2655=$r4, var3594=$r3, var3712=java.lang.Object, var2362=$r1, var3734=$r5}
; {org.hibernate.internal.CoreMessageLogger_$logger=var850, r0=var3765, r2=var2210, null_type=var2409, java.util.Locale=var3343, $r4=var2655, $r3=var3594, java.lang.Object=var3712, $r1=var2362, $r5=var3734}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToLocateConfigFile$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1