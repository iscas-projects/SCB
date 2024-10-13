(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3443 0)
(declare-sort var2403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2403_read/-695534317 (var3443 (Array Int Int) Int Int) Int)
(declare-const null-var3443 var3443)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3077 var3443) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var3077 null-var3443)))
(declare-const var12 (Array Int Int)) ; Statement: r1 := @parameter1: byte[] 
(assert (not (= var12 null-__Array__Int__Int__)))
(declare-const var481 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var481 null-Int)))
(declare-const var3264 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3264 null-Int)))
(define-const var1914 Int (var2403_read/-695534317 var3077 var12 var481 var3264)) ; Statement: i2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: int read(java.io.InputStream,byte[],int,int)>(r0, r1, i0, i1) 
 ; Statement: if i2 == i1 goto return 
(assert (= var1914 var3264)) ; Cond: i2 == i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2403_read/-695534317=([java.io.InputStream, byte[], int, int], int)}
; {var3443=java.io.InputStream, var3077=r0, var12=r1, var481=i0, var3264=i1, var2403=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams, var1914=i2}
; {java.io.InputStream=var3443, r0=var3077, r1=var12, i0=var481, i1=var3264, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams=var2403, i2=var1914}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.InputStream;	r1 := @parameter1: byte[];	i0 := @parameter2: int;	i1 := @parameter3: int;	i2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: int read(java.io.InputStream,byte[],int,int)>(r0, r1, i0, i1);	if i2 == i1 goto return;	return
;block_num 2