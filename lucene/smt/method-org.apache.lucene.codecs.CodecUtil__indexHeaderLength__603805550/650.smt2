(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1500 0)
(declare-sort var3566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3566_headerLength/-657136097 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1568 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1568 null-String)))
(declare-const var464 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var464 null-String)))
(define-const var1843 Int (var3566_headerLength/-657136097 var1568)) ; Statement: $i0 = staticinvoke <org.apache.lucene.codecs.CodecUtil: int headerLength(java.lang.String)>(r0) 
(define-const var3418 Int (+ var1843 16)) ; Statement: $i1 = $i0 + 16 
(define-const var2330 Int (+ var3418 1)) ; Statement: $i3 = $i1 + 1 
(assert true)
(define-const var2816 Int (length/-134980193 var464)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var376 Int (+ var2330 var2816)) ; Statement: $i4 = $i3 + $i2 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3566_headerLength/-657136097=([java.lang.String], int), length/-134980193=([java.lang.String], int)}
; {var1568=r0, var1500=null_type, var464=r1, var3566=org.apache.lucene.codecs.CodecUtil, var1843=$i0, var3418=$i1, var2330=$i3, var2816=$i2, var376=$i4}
; {r0=var1568, null_type=var1500, r1=var464, org.apache.lucene.codecs.CodecUtil=var3566, $i0=var1843, $i1=var3418, $i3=var2330, $i2=var2816, $i4=var376}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i0 = staticinvoke <org.apache.lucene.codecs.CodecUtil: int headerLength(java.lang.String)>(r0);	$i1 = $i0 + 16;	$i3 = $i1 + 1;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = $i3 + $i2;	return $i4
;block_num 1