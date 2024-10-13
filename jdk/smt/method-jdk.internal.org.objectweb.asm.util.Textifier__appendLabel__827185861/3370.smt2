(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2162 0)
(declare-sort var775 0)
(declare-sort var2636 0)
(declare-sort var2410 0)
(declare-sort var3564 0)
(declare-sort var2540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun labelNames/-788090934 (var2162) var2636)
(declare-fun var2636_get/1088891777 (var2636 var2410) var2410)
(declare-fun cast-from-var775-to-var2410 (var775) var2410)
(declare-fun cast-from-var2410-to-String (var2410) String)
(declare-fun buf/-10557480 (var2540) String)
(declare-fun cast-from-var2162-to-var2540 (var2162) var2540)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2162 var2162)
(declare-const null-var775 var775)
(declare-const null-var2636 var2636)
(declare-const null-String String)
(declare-const var2923 var2162) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2923 null-var2162)))
(declare-const var3841 var775) ; Statement: r2 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3841 null-var775)))
(define-const var2524 var2636 (labelNames/-788090934 var2923)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.Map labelNames> 
 ; Statement: if $r1 != null goto $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.Map labelNames> 
(assert (not (= var2524 null-var2636))) ; Cond: $r1 != null 
(define-const var1182 var2636 (labelNames/-788090934 var2923)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.Map labelNames> 
(define-const var2941 var2410 (var2636_get/1088891777 var1182 (cast-from-var775-to-var2410 var3841))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var2146 String (cast-from-var2410-to-String var2941)) ; Statement: $r12 = (java.lang.String) $r4 
(define-const var3626 String var2146) ; Statement: r13 = $r12 
 ; Statement: if $r12 != null goto $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (not (= var2146 null-String))) ; Cond: $r12 != null 
(define-const var3852 String (buf/-10557480 (cast-from-var2162-to-var2540 var2923))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3852 var3626)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r13) 
(declare-const var3852!1 String)
(assert (str.prefixof var3852 var3852!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {labelNames/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.util.Map), var2636_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var775-to-var2410=([jdk.internal.org.objectweb.asm.Label], java.lang.Object), cast-from-var2410-to-String=([java.lang.Object], java.lang.String), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2162-to-var2540=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2162=jdk.internal.org.objectweb.asm.util.Textifier, var2923=r0, var775=jdk.internal.org.objectweb.asm.Label, var3841=r2, var2636=java.util.Map, var2524=$r1, var1182=$r3, var2410=java.lang.Object, var2941=$r4, var2146=$r12, var3626=r13, var3564=null_type, var2540=jdk.internal.org.objectweb.asm.util.Printer, var3852=$r5}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2162, r0=var2923, jdk.internal.org.objectweb.asm.Label=var775, r2=var3841, java.util.Map=var2636, $r1=var2524, $r3=var1182, java.lang.Object=var2410, $r4=var2941, $r12=var2146, r13=var3626, null_type=var3564, jdk.internal.org.objectweb.asm.util.Printer=var2540, $r5=var3852}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r2 := @parameter0: jdk.internal.org.objectweb.asm.Label;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.Map labelNames>;	if $r1 != null goto $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.Map labelNames>;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.Map labelNames>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	$r12 = (java.lang.String) $r4;	r13 = $r12;	if $r12 != null goto $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r13);	return
;block_num 3