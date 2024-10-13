(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1771 0)
(declare-sort var2239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/936083162 (var2239 Int) void)
(declare-fun cast-from-var1771-to-var2239 (var1771) var2239)
(declare-fun separator/170212153 (var1771) String)
(declare-fun isInterface/170212153 (var1771) Bool)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun declaration/170212153 (var1771) String)
(declare-const null-var1771 var1771)
(declare-const null-Int Int)
(declare-const var2355 var1771) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2355 null-var1771)))
(declare-const var2258 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2258 null-Int)))
(assert true)
;(assert (<init>/936083162 (cast-from-var1771-to-var2239 var2355) 327680)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void <init>(int)>(327680) 

(declare-const var2355!1 var1771)
(declare-const var2466 Int)
(declare-const var2355!2 var1771)
(assert (not (= var2355!2 null-var1771)))
(assert (= (separator/170212153 var2355!2) "")) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> = "" 
(define-const var1108 Int (bv2nat (bvand ((_ int2bv 64) var2258) ((_ int2bv 64) 512)))) ; Statement: $i1 = i0 & 512 
 ; Statement: if $i1 == 0 goto $z0 = 0 
(assert (= var1108 0)) ; Cond: $i1 == 0 
(define-const var2218 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
(declare-const var2355!3 var1771)
(assert (not (= var2355!3 null-var1771)))
(assert (= (isInterface/170212153 var2355!3) var2218)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean isInterface> = $z0 
(define-const var2392 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2392)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2392!1 String)
(declare-const var2355!4 var1771)
(assert (not (= var2355!4 null-var1771)))
(assert (= (declaration/170212153 var2355!4) var2392!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/936083162=([jdk.internal.org.objectweb.asm.signature.SignatureVisitor, int], void), cast-from-var1771-to-var2239=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], jdk.internal.org.objectweb.asm.signature.SignatureVisitor), separator/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.String), isInterface/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer)}
; {var1771=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2355=r0, var2258=i0, var2239=jdk.internal.org.objectweb.asm.signature.SignatureVisitor, var2466=327680, var1108=$i1, var2218=$z0, var2392=$r1}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1771, r0=var2355, i0=var2258, jdk.internal.org.objectweb.asm.signature.SignatureVisitor=var2239, 327680=var2466, $i1=var1108, $z0=var2218, $r1=var2392}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	i0 := @parameter0: int;	specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void <init>(int)>(327680);	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.String separator> = "";	$i1 = i0 & 512;	if $i1 == 0 goto $z0 = 0;	$z0 = 0;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean isInterface> = $z0;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> = $r1;	return
;block_num 3