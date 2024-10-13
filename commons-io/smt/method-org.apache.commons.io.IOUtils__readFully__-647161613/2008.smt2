(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2642 0)
(declare-sort var2402 0)
(declare-sort var1951 0)
(declare-sort var88 0)
(declare-sort var1811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun remaining/-1331500056 (var1951) Int)
(declare-fun cast-from-var2402-to-var1951 (var2402) var1951)
(declare-fun var88_read/-528766446 (var2642 var2402) Int)
(declare-fun var1811-init () var1811)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1131757835 (var1811 String) void)
(declare-const null-var2642 var2642)
(declare-const null-var2402 var2402)
(declare-const var2314 var2642) ; Statement: r1 := @parameter0: java.nio.channels.ReadableByteChannel 
(assert (not (= var2314 null-var2642)))
(declare-const var467 var2402) ; Statement: r0 := @parameter1: java.nio.ByteBuffer 
(assert (not (= var467 null-var2402)))
(assert true)
(define-const var3540 Int (remaining/-1331500056 (cast-from-var2402-to-var1951 var467))) ; Statement: i0 = virtualinvoke r0.<java.nio.ByteBuffer: int remaining()>() 
(define-const var2509 Int (var88_read/-528766446 var2314 var467)) ; Statement: i1 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.nio.channels.ReadableByteChannel,java.nio.ByteBuffer)>(r1, r0) 
 ; Statement: if i1 == i0 goto return 
(assert (not (= var2509 var3540))) ; Negate: Cond: i1 == i0  
(define-const var402 var1811 var1811-init) ; Statement: $r2 = new java.io.EOFException 
(define-const var246 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var246)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var246!1 String)
(assert (= var246!1 ""))
(assert true)
(define-const var1100 String (append/672562846 var246!1 "Length to read: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length to read: ") 
(declare-const var246!2 String)
(assert (= var246!2 (str.++ var246!1 "Length to read: ")))
(assert true)
(define-const var1176 String (append/-1001720160 var1100 var3540)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1100!1 String)
(assert (str.prefixof var1100 var1100!1))
(assert true)
(define-const var3620 String (append/672562846 var1176 " actual: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ") 
(declare-const var1176!1 String)
(assert (= var1176!1 (str.++ var1176 " actual: ")))
(assert true)
(define-const var3954 String (append/-1001720160 var3620 var2509)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3620!1 String)
(assert (str.prefixof var3620 var3620!1))
(assert true)
(define-const var854 String (toString/-2075883882 var3954)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1131757835 var402 var854)) ; Statement: specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r8) 

(declare-const var402!1 var1811)
(declare-const var854!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {remaining/-1331500056=([java.nio.Buffer], int), cast-from-var2402-to-var1951=([java.nio.ByteBuffer], java.nio.Buffer), var88_read/-528766446=([java.nio.channels.ReadableByteChannel, java.nio.ByteBuffer], int), var1811-init=([], java.io.EOFException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1131757835=([java.io.EOFException, java.lang.String], void)}
; {var2642=java.nio.channels.ReadableByteChannel, var2314=r1, var2402=java.nio.ByteBuffer, var467=r0, var1951=java.nio.Buffer, var3540=i0, var88=org.apache.commons.io.IOUtils, var2509=i1, var1811=java.io.EOFException, var402=$r2, var246=$r3, var1100=$r4, var1176=$r5, var3620=$r6, var3954=$r7, var854=$r8}
; {java.nio.channels.ReadableByteChannel=var2642, r1=var2314, java.nio.ByteBuffer=var2402, r0=var467, java.nio.Buffer=var1951, i0=var3540, org.apache.commons.io.IOUtils=var88, i1=var2509, java.io.EOFException=var1811, $r2=var402, $r3=var246, $r4=var1100, $r5=var1176, $r6=var3620, $r7=var3954, $r8=var854}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.nio.channels.ReadableByteChannel;	r0 := @parameter1: java.nio.ByteBuffer;	i0 = virtualinvoke r0.<java.nio.ByteBuffer: int remaining()>();	i1 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.nio.channels.ReadableByteChannel,java.nio.ByteBuffer)>(r1, r0);	if i1 == i0 goto return;	$r2 = new java.io.EOFException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Length to read: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.EOFException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2