(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/993692779 (var2808) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var2808 var2808)
(declare-const var3993 var2808) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var3993 null-var2808)))
(define-const var3350 String (buf/993692779 var3993)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3350 58)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(58) 

(declare-const var3350!1 String)
(declare-const var352 Int)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var2808=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var3993=r0, var3350=$r1, var352=58}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var2808, r0=var3993, $r1=var3350, 58=var352}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(58);	return r0
;block_num 1