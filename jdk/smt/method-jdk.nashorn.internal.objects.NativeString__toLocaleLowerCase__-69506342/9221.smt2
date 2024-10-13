(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var219 0)
(declare-sort var1624 0)
(declare-sort var1368 0)
(declare-sort var3503 0)
(declare-sort var2599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1624_checkObjectToString/539912867 (var219) String)
(declare-fun var3503_getEnv/966744991 () var1368)
(declare-fun _locale/-920435095 (var1368) var2599)
(declare-fun toLowerCase/1946809429 (String var2599) String)
(declare-const null-var219 var219)
(declare-const var3498 var219) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3498 null-var219)))
(define-const var1485 String (var1624_checkObjectToString/539912867 var3498)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(define-const var2096 var1368 var3503_getEnv/966744991) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptEnvironment getEnv()>() 
(define-const var3703 var2599 (_locale/-920435095 var2096)) ; Statement: $r2 = $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.util.Locale _locale> 
(assert true)
(define-const var2426 String (toLowerCase/1946809429 var1485 var3703)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1624_checkObjectToString/539912867=([java.lang.Object], java.lang.String), var3503_getEnv/966744991=([], jdk.nashorn.internal.runtime.ScriptEnvironment), _locale/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.util.Locale), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var219=java.lang.Object, var3498=r0, var1624=jdk.nashorn.internal.objects.NativeString, var1485=$r3, var1368=jdk.nashorn.internal.runtime.ScriptEnvironment, var3503=jdk.nashorn.internal.objects.Global, var2096=$r1, var2599=java.util.Locale, var3703=$r2, var2426=$r4}
; {java.lang.Object=var219, r0=var3498, jdk.nashorn.internal.objects.NativeString=var1624, $r3=var1485, jdk.nashorn.internal.runtime.ScriptEnvironment=var1368, jdk.nashorn.internal.objects.Global=var3503, $r1=var2096, java.util.Locale=var2599, $r2=var3703, $r4=var2426}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r3 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	$r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptEnvironment getEnv()>();	$r2 = $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.util.Locale _locale>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	return $r4
;block_num 1