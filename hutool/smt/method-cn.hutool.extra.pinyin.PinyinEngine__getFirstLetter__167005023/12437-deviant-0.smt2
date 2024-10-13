(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3357_getPinyin/1182698009 (var3357 Int) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var3357 var3357)
(declare-const null-Int Int)
(declare-const var3074 var3357) ; Statement: r0 := @this: cn.hutool.extra.pinyin.PinyinEngine 
(assert (not (= var3074 null-var3357)))
(declare-const var1489 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1489 null-Int)))
(define-const var5 String (var3357_getPinyin/1182698009 var3074 var1489)) ; Statement: $r1 = interfaceinvoke r0.<cn.hutool.extra.pinyin.PinyinEngine: java.lang.String getPinyin(char)>(c0) 
(assert (not (and true (and (> (str.len var5) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3357_getPinyin/1182698009=([cn.hutool.extra.pinyin.PinyinEngine, char], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var3357=cn.hutool.extra.pinyin.PinyinEngine, var3074=r0, var1489=c0, var5=$r1, var1783=$c1}
; {cn.hutool.extra.pinyin.PinyinEngine=var3357, r0=var3074, c0=var1489, $r1=var5, $c1=var1783}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: cn.hutool.extra.pinyin.PinyinEngine;	c0 := @parameter0: char;	$r1 = interfaceinvoke r0.<cn.hutool.extra.pinyin.PinyinEngine: java.lang.String getPinyin(char)>(c0);	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(0);	return $c1
;block_num 1