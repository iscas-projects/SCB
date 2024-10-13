(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var686 0)
(declare-sort var3631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaration/170212153 (var686) String)
(declare-fun seenFormalParameter/170212153 (var686) Bool)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun seenInterfaceBound/170212153 (var686) Bool)
(declare-const null-var686 var686)
(declare-const null-String String)
(declare-const var519 var686) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var519 null-var686)))
(declare-const var40 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var40 null-String)))
(define-const var1010 String (declaration/170212153 var519)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(define-const var2129 Bool (seenFormalParameter/170212153 var519)) ; Statement: $z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenFormalParameter> 
 ; Statement: if $z0 == 0 goto $r4 = "<" 
(assert (not (= (ite var2129 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2167 String ", ") ; Statement: $r4 = ", " 
 ; Statement: goto [?= $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3011 String (append/1560614132 var1010 var2167)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var1010!1 String)
(assert (str.prefixof var1010 var1010!1))
(assert true)
;(assert (append/1560614132 var3011 var40)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var3011!1 String)
(assert (str.prefixof var3011 var3011!1))
(declare-const var519!1 var686)
(assert (not (= var519!1 null-var686)))
(assert (= (seenFormalParameter/170212153 var519!1) (ite (= 1 1) true false))) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenFormalParameter> = 1 
(declare-const var519!2 var686)
(assert (not (= var519!2 null-var686)))
(assert (= (seenInterfaceBound/170212153 var519!2) (ite (= 1 0) true false))) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenInterfaceBound> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), seenFormalParameter/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), seenInterfaceBound/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean)}
; {var686=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var519=r0, var40=r2, var3631=null_type, var1010=$r1, var2129=$z0, var2167=$r4, var3011=$r3}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var686, r0=var519, r2=var40, null_type=var3631, $r1=var1010, $z0=var2129, $r4=var2167, $r3=var3011}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	r2 := @parameter0: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenFormalParameter>;	if $z0 == 0 goto $r4 = "<";	$r4 = ", ";	goto [?= $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4)];	$r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenFormalParameter> = 1;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenInterfaceBound> = 0;	return
;block_num 3