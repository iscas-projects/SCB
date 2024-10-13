(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var55 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaration/170212153 (var55) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var55 var55)
(declare-const var1720 var55) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var1720 null-var55)))
(define-const var962 String (declaration/170212153 var1720)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
(define-const var2847 String (toString/-222306083 var962)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var55=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var1720=r0, var962=$r1, var2847=$r2}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var55, r0=var1720, $r1=var962, $r2=var2847}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 1