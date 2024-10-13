(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1517 0)
(declare-sort var657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var657_read/200421467 (var1517 (Array Int Int) Int Int) Int)
(declare-const null-var1517 var1517)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1789 var1517) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var1789 null-var1517)))
(declare-const var1048 (Array Int Int)) ; Statement: r1 := @parameter1: byte[] 
(assert (not (= var1048 null-__Array__Int__Int__)))
(declare-const var171 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var171 null-Int)))
(declare-const var1156 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1156 null-Int)))
(define-const var375 Int (var657_read/200421467 var1789 var1048 var171 var1156)) ; Statement: i2 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.io.InputStream,byte[],int,int)>(r0, r1, i0, i1) 
 ; Statement: if i2 == i1 goto return 
(assert (= var375 var1156)) ; Cond: i2 == i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var657_read/200421467=([java.io.InputStream, byte[], int, int], int)}
; {var1517=java.io.InputStream, var1789=r0, var1048=r1, var171=i0, var1156=i1, var657=org.apache.commons.io.IOUtils, var375=i2}
; {java.io.InputStream=var1517, r0=var1789, r1=var1048, i0=var171, i1=var1156, org.apache.commons.io.IOUtils=var657, i2=var375}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.InputStream;	r1 := @parameter1: byte[];	i0 := @parameter2: int;	i1 := @parameter3: int;	i2 = staticinvoke <org.apache.commons.io.IOUtils: int read(java.io.InputStream,byte[],int,int)>(r0, r1, i0, i1);	if i2 == i1 goto return;	return
;block_num 2