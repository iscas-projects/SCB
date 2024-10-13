(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var143 0)
(declare-sort var1756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1756) String)
(declare-fun cast-from-var143-to-var1756 (var143) var1756)
(declare-fun append/1447793227 (String Int) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var143 var143)
(declare-const null-Int Int)
(declare-const var3287 var143) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3287 null-var143)))
(declare-const var3796 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3796 null-Int)))
(define-const var78 String (buf/-10557480 (cast-from-var143-to-var1756 var3287))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var678 String (append/1447793227 var78 var3796)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>(l0) 
(assert true)
;(assert (append/1183289509 var678 76)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76) 

(declare-const var678!1 String)
(declare-const var2037 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var143-to-var1756=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/1447793227=([java.lang.StringBuffer, long], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var143=jdk.internal.org.objectweb.asm.util.Textifier, var3287=r0, var3796=l0, var1756=jdk.internal.org.objectweb.asm.util.Printer, var78=$r1, var678=$r2, var2037=76}
; {jdk.internal.org.objectweb.asm.util.Textifier=var143, r0=var3287, l0=var3796, jdk.internal.org.objectweb.asm.util.Printer=var1756, $r1=var78, $r2=var678, 76=var2037}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(long)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(long)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	l0 := @parameter0: long;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(long)>(l0);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76);	return
;block_num 1