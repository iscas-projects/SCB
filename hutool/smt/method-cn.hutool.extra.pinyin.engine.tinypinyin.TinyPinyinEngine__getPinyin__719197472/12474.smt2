(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1892 0)
(declare-sort var2219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2219_isChinese/-1345425372 (Int) Bool)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-var1892 var1892)
(declare-const null-Int Int)
(declare-const var2059 var1892) ; Statement: r3 := @this: cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine 
(assert (not (= var2059 null-var1892)))
(declare-const var889 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var889 null-Int)))
(define-const var1718 Bool (var2219_isChinese/-1345425372 var889)) ; Statement: $z0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: boolean isChinese(char)>(c0) 
 ; Statement: if 0 != $z0 goto $r0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: java.lang.String toPinyin(char)>(c0) 
(assert (not (not (= 0 (ite var1718 1 0))))) ; Negate: Cond: 0 != $z0  
(define-const var3192 String (String_valueOf/-371898945 var889)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2219_isChinese/-1345425372=([char], boolean), String_valueOf/-371898945=([char], java.lang.String)}
; {var1892=cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine, var2059=r3, var889=c0, var2219=com.github.promeg.pinyinhelper.Pinyin, var1718=$z0, var3192=$r2}
; {cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine=var1892, r3=var2059, c0=var889, com.github.promeg.pinyinhelper.Pinyin=var2219, $z0=var1718, $r2=var3192}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r3 := @this: cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine;	c0 := @parameter0: char;	$z0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: boolean isChinese(char)>(c0);	if 0 != $z0 goto $r0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: java.lang.String toPinyin(char)>(c0);	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	return $r2
;block_num 2