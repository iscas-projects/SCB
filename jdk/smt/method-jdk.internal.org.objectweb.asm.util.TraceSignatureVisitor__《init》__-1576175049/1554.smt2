(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1939 0)
(declare-sort var3214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/936083162 (var3214 Int) void)
(declare-fun cast-from-var1939-to-var3214 (var1939) var3214)
(declare-fun separator/170212153 (var1939) String)
(declare-fun isInterface/170212153 (var1939) Bool)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun declaration/170212153 (var1939) String)
(declare-const null-var1939 var1939)
(declare-const null-Int Int)
(declare-const var2105 var1939) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2105 null-var1939)))
(declare-const var1283 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1283 null-Int)))
(assert true)
;(assert (<init>/936083162 (cast-from-var1939-to-var3214 var2105) 327680)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void <init>(int)>(327680) 

(declare-const var2105!1 var1939)
(declare-const var3779 Int)
(declare-const var2105!2 var1939)
(assert (not (= var2105!2 null-var1939)))
(assert (= (separator/170212153 var2105!2) "")) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> = "" 
(define-const var1099 Int (bv2nat (bvand ((_ int2bv 64) var1283) ((_ int2bv 64) 512)))) ; Statement: $i1 = i0 & 512 
 ; Statement: if $i1 == 0 goto $z0 = 0 
(assert (not (= var1099 0))) ; Negate: Cond: $i1 == 0  
(define-const var1869 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean isInterface> = $z0] 
(assert true) ; Non Conditional
(declare-const var2105!3 var1939)
(assert (not (= var2105!3 null-var1939)))
(assert (= (isInterface/170212153 var2105!3) var1869)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean isInterface> = $z0 
(define-const var926 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var926)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var926!1 String)
(declare-const var2105!4 var1939)
(assert (not (= var2105!4 null-var1939)))
(assert (= (declaration/170212153 var2105!4) var926!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/936083162=([jdk.internal.org.objectweb.asm.signature.SignatureVisitor, int], void), cast-from-var1939-to-var3214=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], jdk.internal.org.objectweb.asm.signature.SignatureVisitor), separator/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.String), isInterface/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer)}
; {var1939=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2105=r0, var1283=i0, var3214=jdk.internal.org.objectweb.asm.signature.SignatureVisitor, var3779=327680, var1099=$i1, var1869=$z0, var926=$r1}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1939, r0=var2105, i0=var1283, jdk.internal.org.objectweb.asm.signature.SignatureVisitor=var3214, 327680=var3779, $i1=var1099, $z0=var1869, $r1=var926}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	i0 := @parameter0: int;	specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void <init>(int)>(327680);	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> = "";	$i1 = i0 & 512;	if $i1 == 0 goto $z0 = 0;	$z0 = 1;	goto [?= r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean isInterface> = $z0];	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean isInterface> = $z0;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> = $r1;	return
;block_num 3