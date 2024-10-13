(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2387 0)
(declare-sort var1264 0)
(declare-sort var1320 0)
(declare-sort var3333 0)
(declare-sort var987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun labelNames/-340627520 (var2387) var1320)
(declare-fun var1320_get/1088891777 (var1320 var3333) var3333)
(declare-fun cast-from-var1264-to-var3333 (var1264) var3333)
(declare-fun cast-from-var3333-to-String (var3333) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2387 var2387)
(declare-const null-String String)
(declare-const null-var1264 var1264)
(declare-const null-var1320 var1320)
(declare-const var3771 var2387) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3771 null-var2387)))
(declare-const var3701 String) ; Statement: r5 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3701 null-String)))
(declare-const var3464 var1264) ; Statement: r2 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3464 null-var1264)))
(define-const var67 var1320 (labelNames/-340627520 var3771)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Map labelNames> 
 ; Statement: if $r1 != null goto $r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Map labelNames> 
(assert (not (= var67 null-var1320))) ; Cond: $r1 != null 
(define-const var3419 var1320 (labelNames/-340627520 var3771)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Map labelNames> 
(define-const var1800 var3333 (var1320_get/1088891777 var3419 (cast-from-var1264-to-var3333 var3464))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var475 String (cast-from-var3333-to-String var1800)) ; Statement: $r12 = (java.lang.String) $r4 
(define-const var1881 String var475) ; Statement: r13 = $r12 
 ; Statement: if $r12 != null goto virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(assert (not (= var475 null-String))) ; Cond: $r12 != null 
(assert true)
;(assert (append/672562846 var3701 var1881)) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var3701!1 String)
(assert (= var3701!1 (str.++ var3701 var1881)))
 ; Statement: return r13 
(check-sat)
(get-model)
(get-unsat-core)
; {labelNames/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], java.util.Map), var1320_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1264-to-var3333=([jdk.internal.org.objectweb.asm.Label], java.lang.Object), cast-from-var3333-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2387=jdk.nashorn.internal.ir.debug.NashornTextifier, var3771=r0, var3701=r5, var1264=jdk.internal.org.objectweb.asm.Label, var3464=r2, var1320=java.util.Map, var67=$r1, var3419=$r3, var3333=java.lang.Object, var1800=$r4, var475=$r12, var1881=r13, var987=null_type}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2387, r0=var3771, r5=var3701, jdk.internal.org.objectweb.asm.Label=var1264, r2=var3464, java.util.Map=var1320, $r1=var67, $r3=var3419, java.lang.Object=var3333, $r4=var1800, $r12=var475, r13=var1881, null_type=var987}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r5 := @parameter0: java.lang.StringBuilder;	r2 := @parameter1: jdk.internal.org.objectweb.asm.Label;	$r1 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Map labelNames>;	if $r1 != null goto $r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Map labelNames>;	$r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Map labelNames>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	$r12 = (java.lang.String) $r4;	r13 = $r12;	if $r12 != null goto virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	return r13
;block_num 3