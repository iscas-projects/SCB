(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun argumentStack/170212153 (var1288) Int)
(declare-fun declaration/170212153 (var1288) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var1288 var1288)
(declare-const var2973 var1288) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2973 null-var1288)))
(define-const var426 Int (argumentStack/170212153 var2973)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var3693 Int (mod var426 2)) ; Statement: $i1 = $i0 % 2 
 ; Statement: if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert (not (= var3693 0))) ; Cond: $i1 != 0 
(define-const var782 String (declaration/170212153 var2973)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1560614132 var782 ", ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var782!1 String)
(assert (str.prefixof var782 var782!1))
(assert true) ; Non Conditional
(define-const var2168 String (declaration/170212153 var2973)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var2168 63)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(63) 

(declare-const var2168!1 String)
(declare-const var1540 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {argumentStack/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], int), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var1288=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2973=r0, var426=$i0, var3693=$i1, var782=$r1, var2168=$r2, var1540=63}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1288, r0=var2973, $i0=var426, $i1=var3693, $r1=var782, $r2=var2168, 63=var1540}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i1 = $i0 % 2;	if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(63);	return
;block_num 3