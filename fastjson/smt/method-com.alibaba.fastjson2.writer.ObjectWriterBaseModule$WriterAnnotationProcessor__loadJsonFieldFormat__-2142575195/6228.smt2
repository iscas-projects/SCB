(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var625 0)
(declare-sort var141 0)
(declare-sort var3463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var625 var625)
(declare-const null-var141 var141)
(declare-const null-String String)
(declare-const var1150 var625) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor 
(assert (not (= var1150 null-var625)))
(declare-const var3181 var141) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var3181 null-var141)))
(declare-const var1392 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1392 null-String)))
(assert true)
(define-const var2232 Bool (isEmpty/-1285796103 var1392)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2232 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var625=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor, var1150=r1, var141=com.alibaba.fastjson2.codec.FieldInfo, var3181=r0, var1392=r2, var3463=null_type, var2232=$z0}
; {com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor=var625, r1=var1150, com.alibaba.fastjson2.codec.FieldInfo=var141, r0=var3181, r2=var1392, null_type=var3463, $z0=var2232}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	r2 := @parameter1: java.lang.String;	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2