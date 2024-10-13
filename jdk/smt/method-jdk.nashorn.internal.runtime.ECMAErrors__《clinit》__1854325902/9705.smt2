(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3134 0)
(declare-sort var644 0)
(declare-sort var1420 0)
(declare-sort var3735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3134!class ClassObject)
(declare-const var3735!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var644_getDefault/-641693464 () var644)
(declare-fun var1420_getBundle/-2011725208 (String var644) var1420)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-const var2852 ClassObject var3134!class) ; Statement: $r0 = class "Ljdk/nashorn/internal/runtime/ECMAErrors;" 
(assert true)
(define-const var400 Bool (desiredAssertionStatus/-1561484483 var2852)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var400 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2225 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var3291 Bool var2225) ; Statement: <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> = $z1 
(define-const var3055 var644 var644_getDefault/-641693464) ; Statement: $r1 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var2520 var1420 (var1420_getBundle/-2011725208 "jdk.nashorn.internal.runtime.resources.Messages" var3055)) ; Statement: $r2 = staticinvoke <java.util.ResourceBundle: java.util.ResourceBundle getBundle(java.lang.String,java.util.Locale)>("jdk.nashorn.internal.runtime.resources.Messages", $r1) 
(define-const var869 var1420 var2520) ; Statement: <jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE> = $r2 
(define-const var2325 ClassObject var3735!class) ; Statement: $r3 = class "Ljdk/nashorn/internal/scripts/JS;" 
(assert true)
(define-const var3676 String (getName/-1958580599 var2325)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var455 Int (lastIndexOf/-1292097097 var3676 46)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int lastIndexOf(int)>(46) 
(assert (and true (and (>= 0 0) (>= (str.len var3676) var455) (>= var455 0))))
(define-const var578 String (substring/-1240304868 var3676 0 var455)) ; Statement: $r4 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>(0, $i0) 
(define-const var2404 String var578) ; Statement: <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String scriptPackage> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var644_getDefault/-641693464=([], java.util.Locale), var1420_getBundle/-2011725208=([java.lang.String, java.util.Locale], java.util.ResourceBundle), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3134=jdk.nashorn.internal.runtime.ECMAErrors, var2852=$r0, var400=$z0, var2225=$z1, var3291=<jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>, var644=java.util.Locale, var3055=$r1, var1420=java.util.ResourceBundle, var2520=$r2, var869=<jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE>, var3735=jdk.nashorn.internal.scripts.JS, var2325=$r3, var3676=$r5, var455=$i0, var578=$r4, var2404=<jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String scriptPackage>}
; {jdk.nashorn.internal.runtime.ECMAErrors=var3134, $r0=var2852, $z0=var400, $z1=var2225, <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>=var3291, java.util.Locale=var644, $r1=var3055, java.util.ResourceBundle=var1420, $r2=var2520, <jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE>=var869, jdk.nashorn.internal.scripts.JS=var3735, $r3=var2325, $r5=var3676, $i0=var455, $r4=var578, <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String scriptPackage>=var2404}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts $r0 = class "Ljdk/nashorn/internal/runtime/ECMAErrors;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	<jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> = $z1;	$r1 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r2 = staticinvoke <java.util.ResourceBundle: java.util.ResourceBundle getBundle(java.lang.String,java.util.Locale)>("jdk.nashorn.internal.runtime.resources.Messages", $r1);	<jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE> = $r2;	$r3 = class "Ljdk/nashorn/internal/scripts/JS;";	$r5 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r5.<java.lang.String: int lastIndexOf(int)>(46);	$r4 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	<jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String scriptPackage> = $r4;	return
;block_num 3