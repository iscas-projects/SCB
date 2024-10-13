(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2904 0)
(declare-sort var1845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1845) String)
(declare-fun cast-from-var2904-to-var1845 (var2904) var1845)
(declare-fun append/-1099872288 (String Float64) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var2904 var2904)
(declare-const null-Float64 Float64)
(declare-const var2949 var2904) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2949 null-var2904)))
(declare-const var3715 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var3715 null-Float64)))
(define-const var1416 String (buf/-10557480 (cast-from-var2904-to-var1845 var2949))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3865 String (append/-1099872288 var1416 var3715)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(double)>(d0) 
(assert true)
;(assert (append/1183289509 var3865 68)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(68) 

(declare-const var3865!1 String)
(declare-const var3584 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2904-to-var1845=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/-1099872288=([java.lang.StringBuffer, double], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var2904=jdk.internal.org.objectweb.asm.util.Textifier, var2949=r0, var3715=d0, var1845=jdk.internal.org.objectweb.asm.util.Printer, var1416=$r1, var3865=$r2, var3584=68}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2904, r0=var2949, d0=var3715, jdk.internal.org.objectweb.asm.util.Printer=var1845, $r1=var1416, $r2=var3865, 68=var3584}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(double)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(double)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	d0 := @parameter0: double;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(double)>(d0);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(68);	return
;block_num 1