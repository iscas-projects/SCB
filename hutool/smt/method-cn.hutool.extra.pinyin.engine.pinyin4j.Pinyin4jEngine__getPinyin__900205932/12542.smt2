(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2609 0)
(declare-sort var3414 0)
(declare-sort var3203 0)
(declare-sort var2206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2206_strBuilder/-585293937 () var3203)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun toString/166222746 (var3203) String)
(declare-const null-var2609 var2609)
(declare-const null-String String)
(declare-const var1853 var2609) ; Statement: r4 := @this: cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine 
(assert (not (= var1853 null-var2609)))
(declare-const var2009 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2009 null-String)))
(declare-const var2197 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2197 null-String)))
(define-const var3550 var3203 var2206_strBuilder/-585293937) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: cn.hutool.core.text.StrBuilder strBuilder()>() 
(define-const var2974 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var3848 Int (length/-134980193 var2009)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2573 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto (branch) 
(assert (>= var2573 var3848)) ; Cond: i3 >= i0 
 ; Statement: goto [?= $r2 = virtualinvoke r0.<cn.hutool.core.text.StrBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2800 String (toString/166222746 var3550)) ; Statement: $r2 = virtualinvoke r0.<cn.hutool.core.text.StrBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2206_strBuilder/-585293937=([], cn.hutool.core.text.StrBuilder), length/-134980193=([java.lang.String], int), toString/166222746=([cn.hutool.core.text.StrBuilder], java.lang.String)}
; {var2609=cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine, var1853=r4, var2009=r1, var3414=null_type, var2197=r3, var3203=cn.hutool.core.text.StrBuilder, var2206=cn.hutool.core.util.StrUtil, var3550=r0, var2974=z1, var3848=i0, var2573=i3, var2800=$r2}
; {cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine=var2609, r4=var1853, r1=var2009, null_type=var3414, r3=var2197, cn.hutool.core.text.StrBuilder=var3203, cn.hutool.core.util.StrUtil=var2206, r0=var3550, z1=var2974, i0=var3848, i3=var2573, $r2=var2800}
;seq <java.lang.String: int length()>;	<cn.hutool.core.text.StrBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: cn.hutool.core.text.StrBuilder strBuilder()>();	z1 = 1;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i3 = 0;	if i3 >= i0 goto (branch);	goto [?= $r2 = virtualinvoke r0.<cn.hutool.core.text.StrBuilder: java.lang.String toString()>()];	$r2 = virtualinvoke r0.<cn.hutool.core.text.StrBuilder: java.lang.String toString()>();	return $r2
;block_num 4