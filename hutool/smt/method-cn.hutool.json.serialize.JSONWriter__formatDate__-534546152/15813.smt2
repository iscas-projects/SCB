(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3801 0)
(declare-sort var2692 0)
(declare-sort var2477 0)
(declare-sort var1108 0)
(declare-sort var1747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2477_isNotBlank/-658997806 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var3801-to-var1108 (var3801) var1108)
(declare-fun var1747_toEpochMilli/566505196 (var1108) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var3801 var3801)
(declare-const null-String String)
(declare-const var254 var3801) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var254 null-var3801)))
(declare-const var3428 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3428 null-String)))
(define-const var446 Bool (var2477_isNotBlank/-658997806 (cast-from-String-to-String var3428))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = r1 instanceof java.time.temporal.TemporalAccessor 
(assert (= (ite var446 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3494 Bool false) ; Statement: $z1 = r1 instanceof java.time.temporal.TemporalAccessor 
 ; Statement: if $z1 == 0 goto $z2 = r1 instanceof java.util.Date 
(assert (not (= (ite var3494 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1931 var1108 (cast-from-var3801-to-var1108 var254)) ; Statement: $r10 = (java.time.temporal.TemporalAccessor) r1 
(define-const var1190 Int (var1747_toEpochMilli/566505196 var1931)) ; Statement: l0 = staticinvoke <cn.hutool.core.date.TemporalAccessorUtil: long toEpochMilli(java.time.temporal.TemporalAccessor)>($r10) 
 ; Statement: goto [?= $r17 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0)] 
(assert true) ; Non Conditional
(define-const var3004 String (String_valueOf/-107395227 var1190)) ; Statement: $r17 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2477_isNotBlank/-658997806=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var3801-to-var1108=([java.lang.Object], java.time.temporal.TemporalAccessor), var1747_toEpochMilli/566505196=([java.time.temporal.TemporalAccessor], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var3801=java.lang.Object, var254=r1, var3428=r0, var2692=null_type, var2477=cn.hutool.core.text.CharSequenceUtil, var446=$z0, var3494=$z1, var1108=java.time.temporal.TemporalAccessor, var1931=$r10, var1747=cn.hutool.core.date.TemporalAccessorUtil, var1190=l0, var3004=$r17}
; {java.lang.Object=var3801, r1=var254, r0=var3428, null_type=var2692, cn.hutool.core.text.CharSequenceUtil=var2477, $z0=var446, $z1=var3494, java.time.temporal.TemporalAccessor=var1108, $r10=var1931, cn.hutool.core.date.TemporalAccessorUtil=var1747, l0=var1190, $r17=var3004}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $z1 = r1 instanceof java.time.temporal.TemporalAccessor;	$z1 = r1 instanceof java.time.temporal.TemporalAccessor;	if $z1 == 0 goto $z2 = r1 instanceof java.util.Date;	$r10 = (java.time.temporal.TemporalAccessor) r1;	l0 = staticinvoke <cn.hutool.core.date.TemporalAccessorUtil: long toEpochMilli(java.time.temporal.TemporalAccessor)>($r10);	goto [?= $r17 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0)];	$r17 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	return $r17
;block_num 4