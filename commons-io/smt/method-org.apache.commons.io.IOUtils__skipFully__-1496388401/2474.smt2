(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1479 0)
(declare-sort var148 0)
(declare-sort var3739 0)
(declare-sort var1414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3739_bootstrap$/523421054 () var148)
(declare-fun var1414_skip/-14589613 (var1479 Int var148) Int)
(declare-const null-var1479 var1479)
(declare-const null-Int Int)
(declare-const var3556 var1479) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var3556 null-var1479)))
(declare-const var980 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var980 null-Int)))
(define-const var518 var148 var3739_bootstrap$/523421054) ; Statement: $r1 = staticinvoke <org.apache.commons.io.IOUtils$getScratchByteArrayWriteOnly__39: java.util.function.Supplier bootstrap$()>() 
(define-const var3509 Int (var1414_skip/-14589613 var3556 var980 var518)) ; Statement: l1 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.InputStream,long,java.util.function.Supplier)>(r0, l0, $r1) 
(define-const var183 Int (ite (> var3509 var980) 1 (ite (< var3509 var980) (- 1) 0))) ; Statement: $b2 = l1 cmp l0 
 ; Statement: if $b2 == 0 goto return 
(assert (= var183 0)) ; Cond: $b2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3739_bootstrap$/523421054=([], java.util.function.Supplier), var1414_skip/-14589613=([java.io.InputStream, long, java.util.function.Supplier], long)}
; {var1479=java.io.InputStream, var3556=r0, var980=l0, var148=java.util.function.Supplier, var3739=org.apache.commons.io.IOUtils$getScratchByteArrayWriteOnly__39, var518=$r1, var1414=org.apache.commons.io.IOUtils, var3509=l1, var183=$b2}
; {java.io.InputStream=var1479, r0=var3556, l0=var980, java.util.function.Supplier=var148, org.apache.commons.io.IOUtils$getScratchByteArrayWriteOnly__39=var3739, $r1=var518, org.apache.commons.io.IOUtils=var1414, l1=var3509, $b2=var183}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	$r1 = staticinvoke <org.apache.commons.io.IOUtils$getScratchByteArrayWriteOnly__39: java.util.function.Supplier bootstrap$()>();	l1 = staticinvoke <org.apache.commons.io.IOUtils: long skip(java.io.InputStream,long,java.util.function.Supplier)>(r0, l0, $r1);	$b2 = l1 cmp l0;	if $b2 == 0 goto return;	return
;block_num 2