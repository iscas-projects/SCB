(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/993692779 (var3417) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var3417 var3417)
(declare-const null-Int Int)
(declare-const var2023 var3417) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var2023 null-var3417)))
(declare-const var2039 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2039 null-Int)))
(define-const var3179 String (buf/993692779 var2023)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3179 var2039)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c0) 

(declare-const var3179!1 String)
(declare-const var2039!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var3417=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var2023=r0, var2039=c0, var3179=$r1}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var3417, r0=var2023, c0=var2039, $r1=var3179}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	c0 := @parameter0: char;	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c0);	return
;block_num 1