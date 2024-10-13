(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3372 0)
(declare-sort var3373 0)
(declare-sort var2749 0)
(declare-sort var54 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun remaining/-1331500056 (var2749) Int)
(declare-fun cast-from-var3373-to-var2749 (var3373) var2749)
(declare-fun var54_read/-528766446 (var3372 var3373) Int)
(declare-const null-var3372 var3372)
(declare-const null-var3373 var3373)
(declare-const var699 var3372) ; Statement: r1 := @parameter0: java.nio.channels.ReadableByteChannel 
(assert (not (= var699 null-var3372)))
(declare-const var1850 var3373) ; Statement: r0 := @parameter1: java.nio.ByteBuffer 
(assert (not (= var1850 null-var3373)))
(assert true)
(define-const var1613 Int (remaining/-1331500056 (cast-from-var3373-to-var2749 var1850))) ; Statement: i0 = virtualinvoke r0.<java.nio.ByteBuffer: int remaining()>() 
(define-const var2867 Int (var54_read/-528766446 var699 var1850)) ; Statement: i1 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.nio.channels.ReadableByteChannel,java.nio.ByteBuffer)>(r1, r0) 
 ; Statement: if i1 == i0 goto return 
(assert (= var2867 var1613)) ; Cond: i1 == i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {remaining/-1331500056=([java.nio.Buffer], int), cast-from-var3373-to-var2749=([java.nio.ByteBuffer], java.nio.Buffer), var54_read/-528766446=([java.nio.channels.ReadableByteChannel, java.nio.ByteBuffer], int)}
; {var3372=java.nio.channels.ReadableByteChannel, var699=r1, var3373=java.nio.ByteBuffer, var1850=r0, var2749=java.nio.Buffer, var1613=i0, var54=org.apache.commons.io.IOUtils, var2867=i1}
; {java.nio.channels.ReadableByteChannel=var3372, r1=var699, java.nio.ByteBuffer=var3373, r0=var1850, java.nio.Buffer=var2749, i0=var1613, org.apache.commons.io.IOUtils=var54, i1=var2867}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.nio.channels.ReadableByteChannel;	r0 := @parameter1: java.nio.ByteBuffer;	i0 = virtualinvoke r0.<java.nio.ByteBuffer: int remaining()>();	i1 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.nio.channels.ReadableByteChannel,java.nio.ByteBuffer)>(r1, r0);	if i1 == i0 goto return;	return
;block_num 2