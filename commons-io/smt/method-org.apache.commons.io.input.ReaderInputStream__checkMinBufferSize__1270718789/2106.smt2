(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var244 0)
(declare-sort var292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var292_minBufferSize/290170227 (var244) Float32)
(declare-fun cast-from-Int-to-Float32 (Int) Float32)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var244 var244)
(declare-const null-Int Int)
(declare-const var331 var244) ; Statement: r0 := @parameter0: java.nio.charset.CharsetEncoder 
(assert (not (= var331 null-var244)))
(declare-const var3749 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3749 null-Int)))
(define-const var3226 Float32 (var292_minBufferSize/290170227 var331)) ; Statement: f0 = staticinvoke <org.apache.commons.io.input.ReaderInputStream: float minBufferSize(java.nio.charset.CharsetEncoder)>(r0) 
(define-const var1312 Float32 (cast-from-Int-to-Float32 var3749)) ; Statement: $f1 = (float) i0 
(define-const var610 Int (ite (fp.gt var1312 var3226) 1 (ite (fp.lt var1312 var3226) (- 1) 0))) ; Statement: $b1 = $f1 cmpg f0 
(define-const var2148 Int (cast-from-Int-to-Int var610)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto return i0 
(assert (>= var2148 0)) ; Cond: $i2 >= 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {var292_minBufferSize/290170227=([java.nio.charset.CharsetEncoder], float), cast-from-Int-to-Float32=([int], float), cast-from-Int-to-Int=([byte], int)}
; {var244=java.nio.charset.CharsetEncoder, var331=r0, var3749=i0, var292=org.apache.commons.io.input.ReaderInputStream, var3226=f0, var1312=$f1, var610=$b1, var2148=$i2}
; {java.nio.charset.CharsetEncoder=var244, r0=var331, i0=var3749, org.apache.commons.io.input.ReaderInputStream=var292, f0=var3226, $f1=var1312, $b1=var610, $i2=var2148}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.nio.charset.CharsetEncoder;	i0 := @parameter1: int;	f0 = staticinvoke <org.apache.commons.io.input.ReaderInputStream: float minBufferSize(java.nio.charset.CharsetEncoder)>(r0);	$f1 = (float) i0;	$b1 = $f1 cmpg f0;	$i2 = (int) $b1;	if $i2 >= 0 goto return i0;	return i0
;block_num 2