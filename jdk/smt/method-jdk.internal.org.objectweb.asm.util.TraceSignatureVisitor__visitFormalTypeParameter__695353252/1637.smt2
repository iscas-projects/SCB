(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var330 0)
(declare-sort var2529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaration/170212153 (var330) String)
(declare-fun seenFormalParameter/170212153 (var330) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun seenInterfaceBound/170212153 (var330) Bool)
(declare-const null-var330 var330)
(declare-const null-String String)
(declare-const var1125 var330) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var1125 null-var330)))
(declare-const var207 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var207 null-String)))
(define-const var3593 String (declaration/170212153 var1125)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(define-const var533 Bool (seenFormalParameter/170212153 var1125)) ; Statement: $z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenFormalParameter> 
 ; Statement: if $z0 == 0 goto $r4 = "<" 
(assert (= (ite var533 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3607 String "<") ; Statement: $r4 = "<" 
(assert true) ; Non Conditional
(assert true)
(define-const var382 String (append/1560614132 var3593 var3607)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3593!1 String)
(assert (str.prefixof var3593 var3593!1))
(assert true)
;(assert (append/1560614132 var382 var207)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var382!1 String)
(assert (str.prefixof var382 var382!1))
(declare-const var1125!1 var330)
(assert (not (= var1125!1 null-var330)))
(assert (= (seenFormalParameter/170212153 var1125!1) (ite (= 1 1) true false))) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenFormalParameter> = 1 
(declare-const var1125!2 var330)
(assert (not (= var1125!2 null-var330)))
(assert (= (seenInterfaceBound/170212153 var1125!2) (ite (= 1 0) true false))) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenInterfaceBound> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), seenFormalParameter/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), seenInterfaceBound/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean)}
; {var330=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var1125=r0, var207=r2, var2529=null_type, var3593=$r1, var533=$z0, var3607=$r4, var382=$r3}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var330, r0=var1125, r2=var207, null_type=var2529, $r1=var3593, $z0=var533, $r4=var3607, $r3=var382}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	r2 := @parameter0: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenFormalParameter>;	if $z0 == 0 goto $r4 = "<";	$r4 = "<";	$r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenFormalParameter> = 1;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenInterfaceBound> = 0;	return
;block_num 3