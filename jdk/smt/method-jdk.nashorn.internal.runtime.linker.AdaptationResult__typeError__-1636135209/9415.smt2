(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var876 0)
(declare-sort var3380 0)
(declare-sort var3132 0)
(declare-sort var598 0)
(declare-sort var3672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun outcome/-1682047592 (var876) var3380)
(declare-fun append/-1031950772 (String var3132) String)
(declare-fun cast-from-var3380-to-var3132 (var3380) var3132)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun messageArgs/-1682047592 (var876) (Array Int String))
(declare-fun var3672_typeError/-1487832051 (String (Array Int String)) var598)
(declare-const null-var876 var876)
(declare-const var2385 var876) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.linker.AdaptationResult 
(assert (not (= var2385 null-var876)))
(define-const var2615 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2615)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2615!1 String)
(assert (= var2615!1 ""))
(assert true)
(define-const var3677 String (append/672562846 var2615!1 "extend.")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("extend.") 
(declare-const var2615!2 String)
(assert (= var2615!2 (str.++ var2615!1 "extend.")))
(define-const var1027 var3380 (outcome/-1682047592 var2385)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.linker.AdaptationResult: jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome outcome> 
(assert true)
(define-const var1258 String (append/-1031950772 var3677 (cast-from-var3380-to-var3132 var1027))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3677!1 String)
(assert (str.prefixof var3677 var3677!1))
(assert true)
(define-const var2300 String (toString/-2075883882 var1258)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3273 (Array Int String) (messageArgs/-1682047592 var2385)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.linker.AdaptationResult: java.lang.String[] messageArgs> 
(define-const var572 var598 (var3672_typeError/-1487832051 var2300 var3273)) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>($r6, $r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), outcome/-1682047592=([jdk.nashorn.internal.runtime.linker.AdaptationResult], jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3380-to-var3132=([jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), messageArgs/-1682047592=([jdk.nashorn.internal.runtime.linker.AdaptationResult], java.lang.String[]), var3672_typeError/-1487832051=([java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var876=jdk.nashorn.internal.runtime.linker.AdaptationResult, var2385=r1, var2615=$r0, var3677=$r3, var3380=jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome, var1027=$r2, var3132=java.lang.Object, var1258=$r4, var2300=$r6, var3273=$r5, var598=jdk.nashorn.internal.runtime.ECMAException, var3672=jdk.nashorn.internal.runtime.ECMAErrors, var572=$r7}
; {jdk.nashorn.internal.runtime.linker.AdaptationResult=var876, r1=var2385, $r0=var2615, $r3=var3677, jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome=var3380, $r2=var1027, java.lang.Object=var3132, $r4=var1258, $r6=var2300, $r5=var3273, jdk.nashorn.internal.runtime.ECMAException=var598, jdk.nashorn.internal.runtime.ECMAErrors=var3672, $r7=var572}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.linker.AdaptationResult;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("extend.");	$r2 = r1.<jdk.nashorn.internal.runtime.linker.AdaptationResult: jdk.nashorn.internal.runtime.linker.AdaptationResult$Outcome outcome>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = r1.<jdk.nashorn.internal.runtime.linker.AdaptationResult: java.lang.String[] messageArgs>;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>($r6, $r5);	return $r7
;block_num 1