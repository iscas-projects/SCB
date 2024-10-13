(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2474 0)
(declare-sort var2918 0)
(declare-sort var2304 0)
(declare-sort var3768 0)
(declare-sort var2137 0)
(declare-sort var774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3768_requireNonNull/1378936425 (var2304 String) var2304)
(declare-fun cast-from-var2918-to-var2304 (var2918) var2304)
(declare-fun cast-from-var2304-to-var2918 (var2304) var2918)
(declare-fun <init>/105507897 (var2137 var2918) void)
(declare-fun cast-from-var2474-to-var2137 (var2474) var2137)
(declare-fun var774-init () var774)
(declare-fun <init>/-1348825589 (var774 Int) void)
(declare-fun buffer/474035821 (var2474) var774)
(declare-fun bufferSize/474035821 (var2474) Int)
(declare-fun eof/474035821 (var2474) Bool)
(declare-const null-var2474 var2474)
(declare-const null-var2918 var2918)
(declare-const null-Int Int)
(declare-const var103 var2474) ; Statement: r0 := @this: org.apache.commons.io.input.buffer.CircularBufferInputStream 
(assert (not (= var103 null-var2474)))
(declare-const var1035 var2918) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var1035 null-var2918)))
(declare-const var3168 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3168 null-Int)))
(define-const var3131 var2304 (var3768_requireNonNull/1378936425 (cast-from-var2918-to-var2304 var1035) "inputStream")) ; Statement: $r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "inputStream") 
(define-const var2421 var2918 (cast-from-var2304-to-var2918 var3131)) ; Statement: $r3 = (java.io.InputStream) $r2 
(assert true)
;(assert (<init>/105507897 (cast-from-var2474-to-var2137 var103) var2421)) ; Statement: specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>($r3) 

(declare-const var103!1 var2474)
(declare-const var2421!1 var2918)
 ; Statement: if i0 > 0 goto $r4 = new org.apache.commons.io.input.buffer.CircularByteBuffer 
(assert (> var3168 0)) ; Cond: i0 > 0 
(define-const var1538 var774 var774-init) ; Statement: $r4 = new org.apache.commons.io.input.buffer.CircularByteBuffer 
(assert true)
;(assert (<init>/-1348825589 var1538 var3168)) ; Statement: specialinvoke $r4.<org.apache.commons.io.input.buffer.CircularByteBuffer: void <init>(int)>(i0) 

(declare-const var1538!1 var774)
(declare-const var3168!1 Int)
(declare-const var103!2 var2474)
(assert (not (= var103!2 null-var2474)))
(assert (= (buffer/474035821 var103!2) var1538!1)) ; Statement: r0.<org.apache.commons.io.input.buffer.CircularBufferInputStream: org.apache.commons.io.input.buffer.CircularByteBuffer buffer> = $r4 
(declare-const var103!3 var2474)
(assert (not (= var103!3 null-var2474)))
(assert (= (bufferSize/474035821 var103!3) var3168!1)) ; Statement: r0.<org.apache.commons.io.input.buffer.CircularBufferInputStream: int bufferSize> = i0 
(declare-const var103!4 var2474)
(assert (not (= var103!4 null-var2474)))
(assert (= (eof/474035821 var103!4) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.commons.io.input.buffer.CircularBufferInputStream: boolean eof> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3768_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var2918-to-var2304=([java.io.InputStream], java.lang.Object), cast-from-var2304-to-var2918=([java.lang.Object], java.io.InputStream), <init>/105507897=([java.io.FilterInputStream, java.io.InputStream], void), cast-from-var2474-to-var2137=([org.apache.commons.io.input.buffer.CircularBufferInputStream], java.io.FilterInputStream), var774-init=([], org.apache.commons.io.input.buffer.CircularByteBuffer), <init>/-1348825589=([org.apache.commons.io.input.buffer.CircularByteBuffer, int], void), buffer/474035821=([org.apache.commons.io.input.buffer.CircularBufferInputStream], org.apache.commons.io.input.buffer.CircularByteBuffer), bufferSize/474035821=([org.apache.commons.io.input.buffer.CircularBufferInputStream], int), eof/474035821=([org.apache.commons.io.input.buffer.CircularBufferInputStream], boolean)}
; {var2474=org.apache.commons.io.input.buffer.CircularBufferInputStream, var103=r0, var2918=java.io.InputStream, var1035=r1, var3168=i0, var2304=java.lang.Object, var3768=java.util.Objects, var3131=$r2, var2421=$r3, var2137=java.io.FilterInputStream, var774=org.apache.commons.io.input.buffer.CircularByteBuffer, var1538=$r4}
; {org.apache.commons.io.input.buffer.CircularBufferInputStream=var2474, r0=var103, java.io.InputStream=var2918, r1=var1035, i0=var3168, java.lang.Object=var2304, java.util.Objects=var3768, $r2=var3131, $r3=var2421, java.io.FilterInputStream=var2137, org.apache.commons.io.input.buffer.CircularByteBuffer=var774, $r4=var1538}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.input.buffer.CircularBufferInputStream;	r1 := @parameter0: java.io.InputStream;	i0 := @parameter1: int;	$r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "inputStream");	$r3 = (java.io.InputStream) $r2;	specialinvoke r0.<java.io.FilterInputStream: void <init>(java.io.InputStream)>($r3);	if i0 > 0 goto $r4 = new org.apache.commons.io.input.buffer.CircularByteBuffer;	$r4 = new org.apache.commons.io.input.buffer.CircularByteBuffer;	specialinvoke $r4.<org.apache.commons.io.input.buffer.CircularByteBuffer: void <init>(int)>(i0);	r0.<org.apache.commons.io.input.buffer.CircularBufferInputStream: org.apache.commons.io.input.buffer.CircularByteBuffer buffer> = $r4;	r0.<org.apache.commons.io.input.buffer.CircularBufferInputStream: int bufferSize> = i0;	r0.<org.apache.commons.io.input.buffer.CircularBufferInputStream: boolean eof> = 0;	return
;block_num 2