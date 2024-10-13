(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun argumentStack/993692779 (var1558) Int)
(declare-fun buf/993692779 (var1558) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var1558 var1558)
(declare-const var2629 var1558) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var2629 null-var1558)))
(define-const var2 Int (argumentStack/993692779 var2629)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack> 
(define-const var1389 Int (mod var2 2)) ; Statement: $i1 = $i0 % 2 
 ; Statement: if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert (not (= var1389 0))) ; Cond: $i1 != 0 
(define-const var2022 String (buf/993692779 var2629)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2022 42)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(42) 

(declare-const var2022!1 String)
(declare-const var3421 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {argumentStack/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], int), buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var1558=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var2629=r0, var2=$i0, var1389=$i1, var2022=$r1, var3421=42}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var1558, r0=var2629, $i0=var2, $i1=var1389, $r1=var2022, 42=var3421}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	$i0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack>;	$i1 = $i0 % 2;	if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(42);	return
;block_num 2