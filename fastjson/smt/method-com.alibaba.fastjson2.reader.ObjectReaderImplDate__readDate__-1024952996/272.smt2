(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1477 0)
(declare-sort var67 0)
(declare-sort var2831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun useSimpleFormatter/-1559571708 (var2831) Bool)
(declare-fun cast-from-var1477-to-var2831 (var1477) var2831)
(declare-fun nextIfNullOrEmptyString/-1812407907 (var67) Bool)
(declare-const null-var1477 var1477)
(declare-const null-var67 var67)
(declare-const var270 var1477) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDate 
(assert (not (= var270 null-var1477)))
(declare-const var3108 var67) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3108 null-var67)))
(define-const var1803 Bool (useSimpleFormatter/-1559571708 (cast-from-var1477-to-var2831 var270))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplDate: boolean useSimpleFormatter> 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>() 
(assert (= (ite var1803 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2294 Bool (nextIfNullOrEmptyString/-1812407907 var3108)) ; Statement: $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>() 
 ; Statement: if $z1 == 0 goto $z2 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplDate: boolean formatUnixTime> 
(assert (not (= (ite var2294 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {useSimpleFormatter/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), cast-from-var1477-to-var2831=([com.alibaba.fastjson2.reader.ObjectReaderImplDate], com.alibaba.fastjson2.codec.DateTimeCodec), nextIfNullOrEmptyString/-1812407907=([com.alibaba.fastjson2.JSONReader], boolean)}
; {var1477=com.alibaba.fastjson2.reader.ObjectReaderImplDate, var270=r0, var67=com.alibaba.fastjson2.JSONReader, var3108=r1, var2831=com.alibaba.fastjson2.codec.DateTimeCodec, var1803=$z0, var2294=$z1}
; {com.alibaba.fastjson2.reader.ObjectReaderImplDate=var1477, r0=var270, com.alibaba.fastjson2.JSONReader=var67, r1=var3108, com.alibaba.fastjson2.codec.DateTimeCodec=var2831, $z0=var1803, $z1=var2294}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDate;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader;	$z0 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplDate: boolean useSimpleFormatter>;	if $z0 == 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>();	$z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>();	if $z1 == 0 goto $z2 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplDate: boolean formatUnixTime>;	return null
;block_num 3