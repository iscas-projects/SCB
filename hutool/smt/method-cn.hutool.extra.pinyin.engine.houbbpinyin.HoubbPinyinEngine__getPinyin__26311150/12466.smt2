(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var486 0)
(declare-sort var1582 0)
(declare-sort var2869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun format/-1056782441 (var486) var1582)
(declare-fun var2869_toPinyin/-818831113 (String var1582) String)
(declare-const null-var486 var486)
(declare-const null-Int Int)
(declare-const var2107 var486) ; Statement: r0 := @this: cn.hutool.extra.pinyin.engine.houbbpinyin.HoubbPinyinEngine 
(assert (not (= var2107 null-var486)))
(declare-const var1281 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1281 null-Int)))
(define-const var372 String (String_valueOf/-371898945 var1281)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(define-const var610 var1582 (format/-1056782441 var2107)) ; Statement: $r1 = r0.<cn.hutool.extra.pinyin.engine.houbbpinyin.HoubbPinyinEngine: com.github.houbb.pinyin.constant.enums.PinyinStyleEnum format> 
(define-const var2039 String (var2869_toPinyin/-818831113 var372 var610)) ; Statement: r3 = staticinvoke <com.github.houbb.pinyin.util.PinyinHelper: java.lang.String toPinyin(java.lang.String,com.github.houbb.pinyin.constant.enums.PinyinStyleEnum)>($r2, $r1) 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), format/-1056782441=([cn.hutool.extra.pinyin.engine.houbbpinyin.HoubbPinyinEngine], com.github.houbb.pinyin.constant.enums.PinyinStyleEnum), var2869_toPinyin/-818831113=([java.lang.String, com.github.houbb.pinyin.constant.enums.PinyinStyleEnum], java.lang.String)}
; {var486=cn.hutool.extra.pinyin.engine.houbbpinyin.HoubbPinyinEngine, var2107=r0, var1281=c0, var372=$r2, var1582=com.github.houbb.pinyin.constant.enums.PinyinStyleEnum, var610=$r1, var2869=com.github.houbb.pinyin.util.PinyinHelper, var2039=r3}
; {cn.hutool.extra.pinyin.engine.houbbpinyin.HoubbPinyinEngine=var486, r0=var2107, c0=var1281, $r2=var372, com.github.houbb.pinyin.constant.enums.PinyinStyleEnum=var1582, $r1=var610, com.github.houbb.pinyin.util.PinyinHelper=var2869, r3=var2039}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: cn.hutool.extra.pinyin.engine.houbbpinyin.HoubbPinyinEngine;	c0 := @parameter0: char;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r1 = r0.<cn.hutool.extra.pinyin.engine.houbbpinyin.HoubbPinyinEngine: com.github.houbb.pinyin.constant.enums.PinyinStyleEnum format>;	r3 = staticinvoke <com.github.houbb.pinyin.util.PinyinHelper: java.lang.String toPinyin(java.lang.String,com.github.houbb.pinyin.constant.enums.PinyinStyleEnum)>($r2, $r1);	return r3
;block_num 1