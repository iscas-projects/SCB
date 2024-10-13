(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3549 0)
(declare-sort var2615 0)
(declare-sort var3720 0)
(declare-sort var2268 0)
(declare-sort var3507 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2615_checkObjectToString/539912867 (var3549) String)
(declare-fun var2268_getEnv/966744991 () var3720)
(declare-fun _locale/-920435095 (var3720) var3507)
(declare-fun toUpperCase/398655892 (String var3507) String)
(declare-const null-var3549 var3549)
(declare-const var3553 var3549) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3553 null-var3549)))
(define-const var1100 String (var2615_checkObjectToString/539912867 var3553)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(define-const var3100 var3720 var2268_getEnv/966744991) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptEnvironment getEnv()>() 
(define-const var1011 var3507 (_locale/-920435095 var3100)) ; Statement: $r2 = $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.util.Locale _locale> 
(assert true)
(define-const var916 String (toUpperCase/398655892 var1100 var1011)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2615_checkObjectToString/539912867=([java.lang.Object], java.lang.String), var2268_getEnv/966744991=([], jdk.nashorn.internal.runtime.ScriptEnvironment), _locale/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.util.Locale), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3549=java.lang.Object, var3553=r0, var2615=jdk.nashorn.internal.objects.NativeString, var1100=$r3, var3720=jdk.nashorn.internal.runtime.ScriptEnvironment, var2268=jdk.nashorn.internal.objects.Global, var3100=$r1, var3507=java.util.Locale, var1011=$r2, var916=$r4}
; {java.lang.Object=var3549, r0=var3553, jdk.nashorn.internal.objects.NativeString=var2615, $r3=var1100, jdk.nashorn.internal.runtime.ScriptEnvironment=var3720, jdk.nashorn.internal.objects.Global=var2268, $r1=var3100, java.util.Locale=var3507, $r2=var1011, $r4=var916}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r3 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	$r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptEnvironment getEnv()>();	$r2 = $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.util.Locale _locale>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	return $r4
;block_num 1