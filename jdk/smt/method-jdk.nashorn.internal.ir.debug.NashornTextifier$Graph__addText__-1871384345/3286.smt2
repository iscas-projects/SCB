(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var392 0)
(declare-sort var1765 0)
(declare-sort var493 0)
(declare-sort var2454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contents/-1608784054 (var392) var493)
(declare-fun var493_get/1088891777 (var493 var2454) var2454)
(declare-fun cast-from-String-to-var2454 (String) var2454)
(declare-fun cast-from-var2454-to-String (var2454) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var493_put/1464166817 (var493 var2454 var2454) var2454)
(declare-const null-var392 var392)
(declare-const null-String String)
(declare-const var107 var392) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph 
(assert (not (= var107 null-var392)))
(declare-const var2626 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2626 null-String)))
(declare-const var618 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var618 null-String)))
(define-const var1619 var493 (contents/-1608784054 var107)) ; Statement: $r2 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map contents> 
(define-const var3491 var2454 (var493_get/1088891777 var1619 (cast-from-String-to-var2454 var2626))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var748 String (cast-from-var2454-to-String var3491)) ; Statement: r7 = (java.lang.StringBuilder) $r3 
 ; Statement: if r7 != null goto i2 = 0 
(assert (not (= var748 null-String))) ; Cond: r7 != null 
(define-const var3472 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var61 Int (length/-134980193 var618)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i3 goto $r5 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map contents> 
(assert (>= var3472 var61)) ; Cond: i2 >= $i3 
(define-const var3626 var493 (contents/-1608784054 var107)) ; Statement: $r5 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map contents> 
;(assert (var493_put/1464166817 var3626 (cast-from-String-to-var2454 var2626) (cast-from-String-to-var2454 var748))) ; Statement: interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r7) 

(declare-const var3626!1 var493)
(declare-const var2626!1 String)
(declare-const var748!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contents/-1608784054=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph], java.util.Map), var493_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2454=([java.lang.String], java.lang.Object), cast-from-var2454-to-String=([java.lang.Object], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), var493_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object)}
; {var392=jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, var107=r0, var2626=r1, var1765=null_type, var618=r4, var493=java.util.Map, var1619=$r2, var2454=java.lang.Object, var3491=$r3, var748=r7, var3472=i2, var61=$i3, var3626=$r5}
; {jdk.nashorn.internal.ir.debug.NashornTextifier$Graph=var392, r0=var107, r1=var2626, null_type=var1765, r4=var618, java.util.Map=var493, $r2=var1619, java.lang.Object=var2454, $r3=var3491, r7=var748, i2=var3472, $i3=var61, $r5=var3626}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r2 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map contents>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r7 = (java.lang.StringBuilder) $r3;	if r7 != null goto i2 = 0;	i2 = 0;	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	if i2 >= $i3 goto $r5 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map contents>;	$r5 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.util.Map contents>;	interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r7);	return
;block_num 4