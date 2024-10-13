(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/993692779 (var1038) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var1038 var1038)
(declare-const var1579 var1038) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var1579 null-var1038)))
(define-const var639 String (buf/993692779 var1579)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var639 91)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(91) 

(declare-const var639!1 String)
(declare-const var454 Int)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var1038=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var1579=r0, var639=$r1, var454=91}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var1038, r0=var1579, $r1=var639, 91=var454}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(91);	return r0
;block_num 1