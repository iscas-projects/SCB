(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/993692779 (var1419) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var1419 var1419)
(declare-const var3217 var1419) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var3217 null-var1419)))
(define-const var2005 String (buf/993692779 var3217)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2005 94)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(94) 

(declare-const var2005!1 String)
(declare-const var3703 Int)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var1419=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var3217=r0, var2005=$r1, var3703=94}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var1419, r0=var3217, $r1=var2005, 94=var3703}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(94);	return r0
;block_num 1