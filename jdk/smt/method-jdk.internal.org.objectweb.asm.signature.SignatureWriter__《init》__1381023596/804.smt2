(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1102 0)
(declare-sort var498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/936083162 (var498 Int) void)
(declare-fun cast-from-var1102-to-var498 (var1102) var498)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buf/993692779 (var1102) String)
(declare-const null-var1102 var1102)
(declare-const var1045 var1102) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var1045 null-var1102)))
(assert true)
;(assert (<init>/936083162 (cast-from-var1102-to-var498 var1045) 327680)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void <init>(int)>(327680) 

(declare-const var1045!1 var1102)
(declare-const var3348 Int)
(define-const var3768 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3768)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3768!1 String)
(declare-const var1045!2 var1102)
(assert (not (= var1045!2 null-var1102)))
(assert (= (buf/993692779 var1045!2) var3768!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/936083162=([jdk.internal.org.objectweb.asm.signature.SignatureVisitor, int], void), cast-from-var1102-to-var498=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], jdk.internal.org.objectweb.asm.signature.SignatureVisitor), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer)}
; {var1102=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var1045=r0, var498=jdk.internal.org.objectweb.asm.signature.SignatureVisitor, var3348=327680, var3768=$r1}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var1102, r0=var1045, jdk.internal.org.objectweb.asm.signature.SignatureVisitor=var498, 327680=var3348, $r1=var3768}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void <init>(int)>(327680);	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> = $r1;	return
;block_num 1