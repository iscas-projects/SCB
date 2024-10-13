(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun argumentStack/170212153 (var3882) Int)
(declare-fun declaration/170212153 (var3882) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun startType/-1810372054 (var3882) void)
(declare-const null-var3882 var3882)
(declare-const null-Int Int)
(declare-const var3261 var3882) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var3261 null-var3882)))
(declare-const var2191 Int) ; Statement: c2 := @parameter0: char 
(assert (not (= var2191 null-Int)))
(define-const var693 Int (argumentStack/170212153 var3261)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var1088 Int (mod var693 2)) ; Statement: $i1 = $i0 % 2 
 ; Statement: if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert (not (= var1088 0))) ; Cond: $i1 != 0 
(define-const var3969 String (declaration/170212153 var3261)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1560614132 var3969 ", ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3969!1 String)
(assert (str.prefixof var3969 var3969!1))
(assert true) ; Non Conditional
(define-const var264 Int (cast-from-Int-to-Int var2191)) ; Statement: $i5 = (int) c2 
 ; Statement: if $i5 != 43 goto $i6 = (int) c2 
(assert (not (not (= var264 43)))) ; Negate: Cond: $i5 != 43  
(define-const var3426 String (declaration/170212153 var3261)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1560614132 var3426 "? extends ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("? extends ") 
(declare-const var3426!1 String)
(assert (str.prefixof var3426 var3426!1))
 ; Statement: goto [?= specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (startType/-1810372054 var3261)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>() 

(declare-const var3261!1 var3882)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {argumentStack/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], int), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), cast-from-Int-to-Int=([char], int), startType/-1810372054=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void)}
; {var3882=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var3261=r0, var2191=c2, var693=$i0, var1088=$i1, var3969=$r1, var264=$i5, var3426=$r3}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var3882, r0=var3261, c2=var2191, $i0=var693, $i1=var1088, $r1=var3969, $i5=var264, $r3=var3426}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	c2 := @parameter0: char;	$i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i1 = $i0 % 2;	if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i5 = (int) c2;	if $i5 != 43 goto $i6 = (int) c2;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("? extends ");	goto [?= specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>()];	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>();	return r0
;block_num 5