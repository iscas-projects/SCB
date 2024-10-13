(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2087 0)
(declare-sort var293 0)
(declare-sort var3810 0)
(declare-sort var1136 0)
(declare-sort var3961 0)
(declare-sort var2319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1136_strBuilder/-585293937 () var3810)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2319-init () var2319)
(declare-fun <init>/1499337008 (var2319 var3961) void)
(declare-const null-var2087 var2087)
(declare-const null-String String)
(declare-const null-var3961 var3961)
(declare-const var1422 var2087) ; Statement: r4 := @this: cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine 
(assert (not (= var1422 null-var2087)))
(declare-const var3939 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3939 null-String)))
(declare-const var2234 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2234 null-String)))
(define-const var2163 var3810 var1136_strBuilder/-585293937) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: cn.hutool.core.text.StrBuilder strBuilder()>() 
(define-const var3986 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(assert true)
(define-const var1946 Int (length/-134980193 var3939)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1300 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto (branch) 
(assert (not (>= var1300 var1946))) ; Negate: Cond: i3 >= i0  
 ; Statement: if z1 == 0 goto virtualinvoke r0.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder append(java.lang.CharSequence)>(r3) 
(assert (not (= (ite var3986 1 0) 0))) ; Negate: Cond: z1 == 0  
(declare-const var686 var3961) ; Statement: $r8 := @caughtexception 
(assert (not (= var686 null-var3961)))
(define-const var3487 var2319 var2319-init) ; Statement: $r9 = new cn.hutool.extra.pinyin.PinyinException 
(assert true)
;(assert (<init>/1499337008 var3487 var686)) ; Statement: specialinvoke $r9.<cn.hutool.extra.pinyin.PinyinException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var3487!1 var2319)
(declare-const var686!1 var3961)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1136_strBuilder/-585293937=([], cn.hutool.core.text.StrBuilder), length/-134980193=([java.lang.String], int), var2319-init=([], cn.hutool.extra.pinyin.PinyinException), <init>/1499337008=([cn.hutool.extra.pinyin.PinyinException, java.lang.Throwable], void)}
; {var2087=cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine, var1422=r4, var3939=r1, var293=null_type, var2234=r3, var3810=cn.hutool.core.text.StrBuilder, var1136=cn.hutool.core.util.StrUtil, var2163=r0, var3986=z1, var1946=i0, var1300=i3, var3961=java.lang.Throwable, var686=$r8, var2319=cn.hutool.extra.pinyin.PinyinException, var3487=$r9}
; {cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine=var2087, r4=var1422, r1=var3939, null_type=var293, r3=var2234, cn.hutool.core.text.StrBuilder=var3810, cn.hutool.core.util.StrUtil=var1136, r0=var2163, z1=var3986, i0=var1946, i3=var1300, java.lang.Throwable=var3961, $r8=var686, cn.hutool.extra.pinyin.PinyinException=var2319, $r9=var3487}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: cn.hutool.core.text.StrBuilder strBuilder()>();	z1 = 1;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i3 = 0;	if i3 >= i0 goto (branch);	if z1 == 0 goto virtualinvoke r0.<cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder append(java.lang.CharSequence)>(r3);	$r8 := @caughtexception;	$r9 = new cn.hutool.extra.pinyin.PinyinException;	specialinvoke $r9.<cn.hutool.extra.pinyin.PinyinException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 4