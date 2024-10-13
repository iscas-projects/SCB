(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var199 0)
(declare-sort var528 0)
(declare-sort var565 0)
(declare-sort var57 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/1688940495 (var2953) var199)
(declare-fun var528_convertToPinyinArray/-800828955 (Int var199) (Array Int String))
(declare-fun var565_isEmpty/916532361 ((Array Int var57)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var57__ ((Array Int String)) (Array Int var57))
(declare-const null-var2953 var2953)
(declare-const null-Int Int)
(declare-const var2222 var2953) ; Statement: r0 := @this: cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine 
(assert (not (= var2222 null-var2953)))
(declare-const var1189 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1189 null-Int)))
(define-const var1238 var199 (format/1688940495 var2222)) ; Statement: $r1 = r0.<cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine: com.github.stuxuhai.jpinyin.PinyinFormat format> 
(define-const var620 (Array Int String) (var528_convertToPinyinArray/-800828955 var1189 var1238)) ; Statement: r2 = staticinvoke <com.github.stuxuhai.jpinyin.PinyinHelper: java.lang.String[] convertToPinyinArray(char,com.github.stuxuhai.jpinyin.PinyinFormat)>(c0, $r1) 
(define-const var3974 Bool (var565_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var57__ var620))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r2) 
 ; Statement: if $z0 == 0 goto $r3 = r2[0] 
(assert (= (ite var3974 1 0) 0)) ; Cond: $z0 == 0 
(define-const var228 String (select var620 0)) ; Statement: $r3 = r2[0] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {format/1688940495=([cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine], com.github.stuxuhai.jpinyin.PinyinFormat), var528_convertToPinyinArray/-800828955=([char, com.github.stuxuhai.jpinyin.PinyinFormat], java.lang.String[]), var565_isEmpty/916532361=([java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var57__=([java.lang.String[]], java.lang.Object[])}
; {var2953=cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine, var2222=r0, var1189=c0, var199=com.github.stuxuhai.jpinyin.PinyinFormat, var1238=$r1, var528=com.github.stuxuhai.jpinyin.PinyinHelper, var620=r2, var565=cn.hutool.core.util.ArrayUtil, var57=java.lang.Object, var3974=$z0, var228=$r3}
; {cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine=var2953, r0=var2222, c0=var1189, com.github.stuxuhai.jpinyin.PinyinFormat=var199, $r1=var1238, com.github.stuxuhai.jpinyin.PinyinHelper=var528, r2=var620, cn.hutool.core.util.ArrayUtil=var565, java.lang.Object=var57, $z0=var3974, $r3=var228}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine;	c0 := @parameter0: char;	$r1 = r0.<cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine: com.github.stuxuhai.jpinyin.PinyinFormat format>;	r2 = staticinvoke <com.github.stuxuhai.jpinyin.PinyinHelper: java.lang.String[] convertToPinyinArray(char,com.github.stuxuhai.jpinyin.PinyinFormat)>(c0, $r1);	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r2);	if $z0 == 0 goto $r3 = r2[0];	$r3 = r2[0];	return $r3
;block_num 3