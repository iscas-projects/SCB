(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3103 0)
(declare-sort var1067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1067) String)
(declare-fun cast-from-var3103-to-var1067 (var3103) var1067)
(declare-fun append/816791095 (String Float32) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var3103 var3103)
(declare-const null-Float32 Float32)
(declare-const var946 var3103) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var946 null-var3103)))
(declare-const var2092 Float32) ; Statement: f0 := @parameter0: float 
(assert (not (= var2092 null-Float32)))
(define-const var2374 String (buf/-10557480 (cast-from-var3103-to-var1067 var946))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var790 String (append/816791095 var2374 var2092)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(float)>(f0) 
(assert true)
;(assert (append/1183289509 var790 70)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(70) 

(declare-const var790!1 String)
(declare-const var2914 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3103-to-var1067=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/816791095=([java.lang.StringBuffer, float], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var3103=jdk.internal.org.objectweb.asm.util.Textifier, var946=r0, var2092=f0, var1067=jdk.internal.org.objectweb.asm.util.Printer, var2374=$r1, var790=$r2, var2914=70}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3103, r0=var946, f0=var2092, jdk.internal.org.objectweb.asm.util.Printer=var1067, $r1=var2374, $r2=var790, 70=var2914}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(float)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(float)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	f0 := @parameter0: float;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(float)>(f0);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(70);	return
;block_num 1