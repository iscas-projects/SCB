(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1301 0)
(declare-sort var869 0)
(declare-sort var3372 0)
(declare-sort var3094 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1301!class ClassObject)
(declare-const var3094!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var869_getDefault/-641693464 () var869)
(declare-fun var3372_getBundle/-2011725208 (String var869) var3372)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-const var8 ClassObject var1301!class) ; Statement: $r0 = class "Ljdk/nashorn/internal/runtime/ECMAErrors;" 
(assert true)
(define-const var2565 Bool (desiredAssertionStatus/-1561484483 var8)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var2565 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var307 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> = $z1] 
(assert true) ; Non Conditional
(define-const var2366 Bool var307) ; Statement: <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> = $z1 
(define-const var330 var869 var869_getDefault/-641693464) ; Statement: $r1 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var3525 var3372 (var3372_getBundle/-2011725208 "jdk.nashorn.internal.runtime.resources.Messages" var330)) ; Statement: $r2 = staticinvoke <java.util.ResourceBundle: java.util.ResourceBundle getBundle(java.lang.String,java.util.Locale)>("jdk.nashorn.internal.runtime.resources.Messages", $r1) 
(define-const var3423 var3372 var3525) ; Statement: <jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE> = $r2 
(define-const var3420 ClassObject var3094!class) ; Statement: $r3 = class "Ljdk/nashorn/internal/scripts/JS;" 
(assert true)
(define-const var1053 String (getName/-1958580599 var3420)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2762 Int (lastIndexOf/-1292097097 var1053 46)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int lastIndexOf(int)>(46) 
(assert (not (and true (and (>= 0 0) (>= (str.len var1053) var2762) (>= var2762 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var869_getDefault/-641693464=([], java.util.Locale), var3372_getBundle/-2011725208=([java.lang.String, java.util.Locale], java.util.ResourceBundle), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1301=jdk.nashorn.internal.runtime.ECMAErrors, var8=$r0, var2565=$z0, var307=$z1, var2366=<jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>, var869=java.util.Locale, var330=$r1, var3372=java.util.ResourceBundle, var3525=$r2, var3423=<jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE>, var3094=jdk.nashorn.internal.scripts.JS, var3420=$r3, var1053=$r5, var2762=$i0, var291=$r4, var1969=<jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String scriptPackage>}
; {jdk.nashorn.internal.runtime.ECMAErrors=var1301, $r0=var8, $z0=var2565, $z1=var307, <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled>=var2366, java.util.Locale=var869, $r1=var330, java.util.ResourceBundle=var3372, $r2=var3525, <jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE>=var3423, jdk.nashorn.internal.scripts.JS=var3094, $r3=var3420, $r5=var1053, $i0=var2762, $r4=var291, <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String scriptPackage>=var1969}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts $r0 = class "Ljdk/nashorn/internal/runtime/ECMAErrors;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= <jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> = $z1];	<jdk.nashorn.internal.runtime.ECMAErrors: boolean $assertionsDisabled> = $z1;	$r1 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r2 = staticinvoke <java.util.ResourceBundle: java.util.ResourceBundle getBundle(java.lang.String,java.util.Locale)>("jdk.nashorn.internal.runtime.resources.Messages", $r1);	<jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE> = $r2;	$r3 = class "Ljdk/nashorn/internal/scripts/JS;";	$r5 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r5.<java.lang.String: int lastIndexOf(int)>(46);	$r4 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	<jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String scriptPackage> = $r4;	return
;block_num 3