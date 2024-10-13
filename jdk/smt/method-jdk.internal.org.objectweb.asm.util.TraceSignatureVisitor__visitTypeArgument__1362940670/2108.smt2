(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun argumentStack/170212153 (var2183) Int)
(declare-fun declaration/170212153 (var2183) String)
(declare-fun append/1183289509 (String Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun startType/-1810372054 (var2183) void)
(declare-const null-var2183 var2183)
(declare-const null-Int Int)
(declare-const var2370 var2183) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2370 null-var2183)))
(declare-const var2937 Int) ; Statement: c2 := @parameter0: char 
(assert (not (= var2937 null-Int)))
(define-const var3112 Int (argumentStack/170212153 var2370)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var903 Int (mod var3112 2)) ; Statement: $i1 = $i0 % 2 
 ; Statement: if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert (not (not (= var903 0)))) ; Negate: Cond: $i1 != 0  
(define-const var2497 Int (argumentStack/170212153 var2370)) ; Statement: $i3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> 
(define-const var1006 Int (+ var2497 1)) ; Statement: $i4 = $i3 + 1 
(declare-const var2370!1 var2183)
(assert (not (= var2370!1 null-var2183)))
(assert (= (argumentStack/170212153 var2370!1) var1006)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i4 
(define-const var3367 String (declaration/170212153 var2370!1)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var3367 60)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(60) 

(declare-const var3367!1 String)
(declare-const var3962 Int)
 ; Statement: goto [?= $i5 = (int) c2] 
(assert true) ; Non Conditional
(define-const var1407 Int (cast-from-Int-to-Int var2937)) ; Statement: $i5 = (int) c2 
 ; Statement: if $i5 != 43 goto $i6 = (int) c2 
(assert (not (not (= var1407 43)))) ; Negate: Cond: $i5 != 43  
(define-const var1293 String (declaration/170212153 var2370!1)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1560614132 var1293 "? extends ")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("? extends ") 
(declare-const var1293!1 String)
(assert (str.prefixof var1293 var1293!1))
 ; Statement: goto [?= specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (startType/-1810372054 var2370!1)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>() 

(declare-const var2370!2 var2183)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {argumentStack/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], int), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), cast-from-Int-to-Int=([char], int), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), startType/-1810372054=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void)}
; {var2183=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2370=r0, var2937=c2, var3112=$i0, var903=$i1, var2497=$i3, var1006=$i4, var3367=$r4, var3962=60, var1407=$i5, var1293=$r3}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var2183, r0=var2370, c2=var2937, $i0=var3112, $i1=var903, $i3=var2497, $i4=var1006, $r4=var3367, 60=var3962, $i5=var1407, $r3=var1293}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	c2 := @parameter0: char;	$i0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i1 = $i0 % 2;	if $i1 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$i3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack>;	$i4 = $i3 + 1;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: int argumentStack> = $i4;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(60);	goto [?= $i5 = (int) c2];	$i5 = (int) c2;	if $i5 != 43 goto $i6 = (int) c2;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("? extends ");	goto [?= specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>()];	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>();	return r0
;block_num 5