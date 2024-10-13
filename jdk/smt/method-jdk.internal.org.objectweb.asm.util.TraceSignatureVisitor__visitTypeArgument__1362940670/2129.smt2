(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun argumentStack/170212153 (var1506) Int)
(declare-fun declaration/170212153 (var1506) String)
(declare-fun append/1183289509 (String Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun startType/-1810372054 (var1506) void)
(declare-const null-var1506 var1506)
(declare-const null-Int Int)
(declare-const var2440 var1506) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2440 null-var1506)))
(declare-const var3006 Int) ; Statement: c2 := @parameter0: char 
(assert (not (= var3006 null-Int)))
(define-const var2984 Int (argumentStack/170212153 var2440)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var635 Int (mod var2984 2)) ; Statement: $i1 = $i0 % 2 
 ; Statement: if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert (not (not (= var635 0)))) ; Negate: Cond: $i1 != 0  
(define-const var2543 Int (argumentStack/170212153 var2440)) ; Statement: $i3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var3259 Int (+ var2543 1)) ; Statement: $i4 = $i3 + 1 
(declare-const var2440!1 var1506)
(assert (not (= var2440!1 null-var1506)))
(assert (= (argumentStack/170212153 var2440!1) var3259)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i4 
(define-const var1354 String (declaration/170212153 var2440!1)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var1354 60)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(60) 

(declare-const var1354!1 String)
(declare-const var3477 Int)
 ; Statement: goto [?= $i5 = (int) c2] 
(assert true) ; Non Conditional
(define-const var76 Int (cast-from-Int-to-Int var3006)) ; Statement: $i5 = (int) c2 
 ; Statement: if $i5 != 43 goto $i6 = (int) c2 
(assert (not (= var76 43))) ; Cond: $i5 != 43 
(define-const var2413 Int (cast-from-Int-to-Int var3006)) ; Statement: $i6 = (int) c2 
 ; Statement: if $i6 != 45 goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>() 
(assert (not (= var2413 45))) ; Cond: $i6 != 45 
(assert true)
;(assert (startType/-1810372054 var2440!1)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>() 

(declare-const var2440!2 var1506)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {argumentStack/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], int), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), cast-from-Int-to-Int=([char], int), startType/-1810372054=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void)}
; {var1506=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2440=r0, var3006=c2, var2984=$i0, var635=$i1, var2543=$i3, var3259=$i4, var1354=$r4, var3477=60, var76=$i5, var2413=$i6}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1506, r0=var2440, c2=var3006, $i0=var2984, $i1=var635, $i3=var2543, $i4=var3259, $r4=var1354, 60=var3477, $i5=var76, $i6=var2413}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	c2 := @parameter0: char;	$i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i1 = $i0 % 2;	if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$i3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i4 = $i3 + 1;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i4;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(60);	goto [?= $i5 = (int) c2];	$i5 = (int) c2;	if $i5 != 43 goto $i6 = (int) c2;	$i6 = (int) c2;	if $i6 != 45 goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>();	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>();	return r0
;block_num 5