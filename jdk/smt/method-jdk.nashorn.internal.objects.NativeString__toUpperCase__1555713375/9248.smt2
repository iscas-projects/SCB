(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1992 0)
(declare-sort var833 0)
(declare-sort var996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var833_checkObjectToString/539912867 (var1992) String)
(declare-fun toUpperCase/398655892 (String var996) String)
(declare-const null-var1992 var1992)
(declare-const var996-ROOT var996)
(declare-const var987 var1992) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var987 null-var1992)))
(define-const var664 String (var833_checkObjectToString/539912867 var987)) ; Statement: $r2 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(define-const var2600 var996 var996-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1445 String (toUpperCase/398655892 var664 var2600)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var833_checkObjectToString/539912867=([java.lang.Object], java.lang.String), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1992=java.lang.Object, var987=r0, var833=jdk.nashorn.internal.objects.NativeString, var664=$r2, var996=java.util.Locale, var2600=$r1, var1445=$r3}
; {java.lang.Object=var1992, r0=var987, jdk.nashorn.internal.objects.NativeString=var833, $r2=var664, java.util.Locale=var996, $r1=var2600, $r3=var1445}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r2 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	return $r3
;block_num 1