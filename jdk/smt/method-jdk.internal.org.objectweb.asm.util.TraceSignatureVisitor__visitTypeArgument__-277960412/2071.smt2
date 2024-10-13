(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun argumentStack/170212153 (var1677) Int)
(declare-fun declaration/170212153 (var1677) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var1677 var1677)
(declare-const var1263 var1677) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var1263 null-var1677)))
(define-const var710 Int (argumentStack/170212153 var1263)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var522 Int (mod var710 2)) ; Statement: $i1 = $i0 % 2 
 ; Statement: if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert (not (not (= var522 0)))) ; Negate: Cond: $i1 != 0  
(define-const var1217 Int (argumentStack/170212153 var1263)) ; Statement: $i2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var2441 Int (+ var1217 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var1263!1 var1677)
(assert (not (= var1263!1 null-var1677)))
(assert (= (argumentStack/170212153 var1263!1) var2441)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i3 
(define-const var557 String (declaration/170212153 var1263!1)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var557 60)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(60) 

(declare-const var557!1 String)
(declare-const var3417 Int)
 ; Statement: goto [?= $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>] 
(assert true) ; Non Conditional
(define-const var1628 String (declaration/170212153 var1263!1)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var1628 63)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(63) 

(declare-const var1628!1 String)
(declare-const var241 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {argumentStack/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], int), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var1677=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var1263=r0, var710=$i0, var522=$i1, var1217=$i2, var2441=$i3, var557=$r3, var3417=60, var1628=$r2, var241=63}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1677, r0=var1263, $i0=var710, $i1=var522, $i2=var1217, $i3=var2441, $r3=var557, 60=var3417, $r2=var1628, 63=var241}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i1 = $i0 % 2;	if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$i2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i3 = $i2 + 1;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i3;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(60);	goto [?= $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>];	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(63);	return
;block_num 3