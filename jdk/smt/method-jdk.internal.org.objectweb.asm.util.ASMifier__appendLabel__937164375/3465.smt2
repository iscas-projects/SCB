(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var273 0)
(declare-sort var330 0)
(declare-sort var447 0)
(declare-sort var1372 0)
(declare-sort var1670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var447) String)
(declare-fun cast-from-var273-to-var447 (var273) var447)
(declare-fun labelNames/1045876480 (var273) var1372)
(declare-fun var1372_get/1088891777 (var1372 var1670) var1670)
(declare-fun cast-from-var330-to-var1670 (var330) var1670)
(declare-fun cast-from-var1670-to-String (var1670) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var273 var273)
(declare-const null-var330 var330)
(declare-const var2309 var273) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2309 null-var273)))
(declare-const var2239 var330) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var2239 null-var330)))
(define-const var3499 String (buf/-10557480 (cast-from-var273-to-var447 var2309))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var3488 var1372 (labelNames/1045876480 var2309)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.Map labelNames> 
(define-const var536 var1670 (var1372_get/1088891777 var3488 (cast-from-var330-to-var1670 var2239))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2801 String (cast-from-var1670-to-String var536)) ; Statement: $r5 = (java.lang.String) $r4 
(assert true)
;(assert (append/1560614132 var3499 var2801)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var3499!1 String)
(assert (str.prefixof var3499 var3499!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var273-to-var447=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), labelNames/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.util.Map), var1372_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var330-to-var1670=([jdk.internal.org.objectweb.asm.Label], java.lang.Object), cast-from-var1670-to-String=([java.lang.Object], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var273=jdk.internal.org.objectweb.asm.util.ASMifier, var2309=r0, var330=jdk.internal.org.objectweb.asm.Label, var2239=r1, var447=jdk.internal.org.objectweb.asm.util.Printer, var3499=$r3, var1372=java.util.Map, var3488=$r2, var1670=java.lang.Object, var536=$r4, var2801=$r5}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var273, r0=var2309, jdk.internal.org.objectweb.asm.Label=var330, r1=var2239, jdk.internal.org.objectweb.asm.util.Printer=var447, $r3=var3499, java.util.Map=var1372, $r2=var3488, java.lang.Object=var1670, $r4=var536, $r5=var2801}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r1 := @parameter0: jdk.internal.org.objectweb.asm.Label;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.Map labelNames>;	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r5 = (java.lang.String) $r4;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	return
;block_num 1