(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun returnType/170212153 (var1201) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1201 var1201)
(declare-const null-String String)
(declare-const var3076 var1201) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var3076 null-var1201)))
(define-const var668 String (returnType/170212153 var3076)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType> 
 ; Statement: if $r1 != null goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType> 
(assert (not (= var668 null-String))) ; Cond: $r1 != null 
(define-const var1713 String (returnType/170212153 var3076)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType> 
(assert true)
(define-const var1476 String (toString/-222306083 var1713)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {returnType/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1201=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var3076=r0, var668=$r1, var1713=$r2, var1476=$r3}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1201, r0=var3076, $r1=var668, $r2=var1713, $r3=var1476}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType>;	if $r1 != null goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 3