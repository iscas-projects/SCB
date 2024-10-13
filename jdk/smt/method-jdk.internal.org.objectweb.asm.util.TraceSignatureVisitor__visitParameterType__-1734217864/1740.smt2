(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var81 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun endFormals/718150603 (var81) void)
(declare-fun seenParameter/170212153 (var81) Bool)
(declare-fun declaration/170212153 (var81) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun startType/-1810372054 (var81) void)
(declare-const null-var81 var81)
(declare-const var3062 var81) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var3062 null-var81)))
(assert true)
;(assert (endFormals/718150603 var3062)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endFormals()>() 

(declare-const var3062!1 var81)
(define-const var2553 Bool (seenParameter/170212153 var3062!1)) ; Statement: $z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> 
 ; Statement: if $z0 == 0 goto r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> = 1 
(assert (not (= (ite var2553 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var32 String (declaration/170212153 var3062!1)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1560614132 var32 ", ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var32!1 String)
(assert (str.prefixof var32 var32!1))
 ; Statement: goto [?= specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (startType/-1810372054 var3062!1)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>() 

(declare-const var3062!2 var81)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {endFormals/718150603=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void), seenParameter/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), startType/-1810372054=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void)}
; {var81=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var3062=r0, var2553=$z0, var32=$r2}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var81, r0=var3062, $z0=var2553, $r2=var32}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endFormals()>();	$z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter>;	if $z0 == 0 goto r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> = 1;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	goto [?= specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>()];	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>();	return r0
;block_num 3