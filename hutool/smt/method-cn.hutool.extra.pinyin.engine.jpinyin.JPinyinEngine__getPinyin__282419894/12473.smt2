(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2711 0)
(declare-sort var1831 0)
(declare-sort var1583 0)
(declare-sort var599 0)
(declare-sort var3072 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/1688940495 (var2711) var1831)
(declare-fun var1583_convertToPinyinArray/-800828955 (Int var1831) (Array Int String))
(declare-fun var599_isEmpty/916532361 ((Array Int var3072)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3072__ ((Array Int String)) (Array Int var3072))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-var2711 var2711)
(declare-const null-Int Int)
(declare-const var2023 var2711) ; Statement: r0 := @this: cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine 
(assert (not (= var2023 null-var2711)))
(declare-const var1325 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1325 null-Int)))
(define-const var35 var1831 (format/1688940495 var2023)) ; Statement: $r1 = r0.<cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine: com.github.stuxuhai.jpinyin.PinyinFormat format> 
(define-const var3890 (Array Int String) (var1583_convertToPinyinArray/-800828955 var1325 var35)) ; Statement: r2 = staticinvoke <com.github.stuxuhai.jpinyin.PinyinHelper: java.lang.String[] convertToPinyinArray(char,com.github.stuxuhai.jpinyin.PinyinFormat)>(c0, $r1) 
(define-const var2878 Bool (var599_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var3072__ var3890))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r2) 
 ; Statement: if $z0 == 0 goto $r3 = r2[0] 
(assert (not (= (ite var2878 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1303 String (String_valueOf/-371898945 var1325)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {format/1688940495=([cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine], com.github.stuxuhai.jpinyin.PinyinFormat), var1583_convertToPinyinArray/-800828955=([char, com.github.stuxuhai.jpinyin.PinyinFormat], java.lang.String[]), var599_isEmpty/916532361=([java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var3072__=([java.lang.String[]], java.lang.Object[]), String_valueOf/-371898945=([char], java.lang.String)}
; {var2711=cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine, var2023=r0, var1325=c0, var1831=com.github.stuxuhai.jpinyin.PinyinFormat, var35=$r1, var1583=com.github.stuxuhai.jpinyin.PinyinHelper, var3890=r2, var599=cn.hutool.core.util.ArrayUtil, var3072=java.lang.Object, var2878=$z0, var1303=$r3}
; {cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine=var2711, r0=var2023, c0=var1325, com.github.stuxuhai.jpinyin.PinyinFormat=var1831, $r1=var35, com.github.stuxuhai.jpinyin.PinyinHelper=var1583, r2=var3890, cn.hutool.core.util.ArrayUtil=var599, java.lang.Object=var3072, $z0=var2878, $r3=var1303}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine;	c0 := @parameter0: char;	$r1 = r0.<cn.hutool.extra.pinyin.engine.jpinyin.JPinyinEngine: com.github.stuxuhai.jpinyin.PinyinFormat format>;	r2 = staticinvoke <com.github.stuxuhai.jpinyin.PinyinHelper: java.lang.String[] convertToPinyinArray(char,com.github.stuxuhai.jpinyin.PinyinFormat)>(c0, $r1);	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r2);	if $z0 == 0 goto $r3 = r2[0];	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	goto [?= return $r3];	return $r3
;block_num 3