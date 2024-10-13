(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exceptions/170212153 (var2105) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2105 var2105)
(declare-const null-String String)
(declare-const var2545 var2105) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2545 null-var2105)))
(define-const var109 String (exceptions/170212153 var2545)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
 ; Statement: if $r1 != null goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
(assert (not (= var109 null-String))) ; Cond: $r1 != null 
(define-const var2604 String (exceptions/170212153 var2545)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
(assert true)
(define-const var2932 String (toString/-222306083 var2604)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {exceptions/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2105=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2545=r0, var109=$r1, var2604=$r2, var2932=$r3}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var2105, r0=var2545, $r1=var109, $r2=var2604, $r3=var2932}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	if $r1 != null goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 3