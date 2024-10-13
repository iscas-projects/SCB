(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/993692779 (var1812) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1812 var1812)
(declare-const var833 var1812) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var833 null-var1812)))
(define-const var3025 String (buf/993692779 var833)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
(define-const var16 String (toString/-222306083 var3025)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1812=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var833=r0, var3025=$r1, var16=$r2}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var1812, r0=var833, $r1=var3025, $r2=var16}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 1