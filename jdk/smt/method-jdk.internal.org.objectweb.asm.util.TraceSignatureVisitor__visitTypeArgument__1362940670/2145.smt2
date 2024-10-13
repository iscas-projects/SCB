(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun argumentStack/170212153 (var1889) Int)
(declare-fun declaration/170212153 (var1889) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun startType/-1810372054 (var1889) void)
(declare-const null-var1889 var1889)
(declare-const null-Int Int)
(declare-const var858 var1889) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var858 null-var1889)))
(declare-const var1408 Int) ; Statement: c2 := @parameter0: char 
(assert (not (= var1408 null-Int)))
(define-const var3840 Int (argumentStack/170212153 var858)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var3988 Int (mod var3840 2)) ; Statement: $i1 = $i0 % 2 
 ; Statement: if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert (not (= var3988 0))) ; Cond: $i1 != 0 
(define-const var1433 String (declaration/170212153 var858)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1560614132 var1433 ", ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1433!1 String)
(assert (str.prefixof var1433 var1433!1))
(assert true) ; Non Conditional
(define-const var3664 Int (cast-from-Int-to-Int var1408)) ; Statement: $i5 = (int) c2 
 ; Statement: if $i5 != 43 goto $i6 = (int) c2 
(assert (not (= var3664 43))) ; Cond: $i5 != 43 
(define-const var3733 Int (cast-from-Int-to-Int var1408)) ; Statement: $i6 = (int) c2 
 ; Statement: if $i6 != 45 goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>() 
(assert (not (= var3733 45))) ; Cond: $i6 != 45 
(assert true)
;(assert (startType/-1810372054 var858)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>() 

(declare-const var858!1 var1889)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {argumentStack/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], int), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), cast-from-Int-to-Int=([char], int), startType/-1810372054=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void)}
; {var1889=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var858=r0, var1408=c2, var3840=$i0, var3988=$i1, var1433=$r1, var3664=$i5, var3733=$i6}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1889, r0=var858, c2=var1408, $i0=var3840, $i1=var3988, $r1=var1433, $i5=var3664, $i6=var3733}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	c2 := @parameter0: char;	$i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i1 = $i0 % 2;	if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i5 = (int) c2;	if $i5 != 43 goto $i6 = (int) c2;	$i6 = (int) c2;	if $i6 != 45 goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>();	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>();	return r0
;block_num 5