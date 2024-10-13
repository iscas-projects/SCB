(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var389 0)
(declare-sort var2595 0)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2595_checkObjectToString/539912867 (var389) String)
(declare-fun toLowerCase/1946809429 (String var2480) String)
(declare-const null-var389 var389)
(declare-const var2480-ROOT var2480)
(declare-const var2096 var389) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2096 null-var389)))
(define-const var3506 String (var2595_checkObjectToString/539912867 var2096)) ; Statement: $r2 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(define-const var768 var2480 var2480-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3447 String (toLowerCase/1946809429 var3506 var768)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2595_checkObjectToString/539912867=([java.lang.Object], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var389=java.lang.Object, var2096=r0, var2595=jdk.nashorn.internal.objects.NativeString, var3506=$r2, var2480=java.util.Locale, var768=$r1, var3447=$r3}
; {java.lang.Object=var389, r0=var2096, jdk.nashorn.internal.objects.NativeString=var2595, $r2=var3506, java.util.Locale=var2480, $r1=var768, $r3=var3447}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r2 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 1