(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3402 0)
(declare-sort var3829 0)
(declare-sort var3130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/-173403899 (var3402) var3829)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-var3402 var3402)
(declare-const null-Int Int)
(declare-const null-var3130 var3130)
(declare-const var775 var3402) ; Statement: r0 := @this: cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine 
(assert (not (= var775 null-var3402)))
(declare-const var132 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var132 null-Int)))
(define-const var3871 var3829 (format/-173403899 var775)) ; Statement: $r1 = r0.<cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine: net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat format> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1502 var3130) ; Statement: $r2 := @caughtexception 
(assert (not (= var1502 null-var3130)))
(define-const var1684 String (String_valueOf/-371898945 var132)) ; Statement: r5 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert true) ; Non Conditional
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {format/-173403899=([cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine], net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat), String_valueOf/-371898945=([char], java.lang.String)}
; {var3402=cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine, var775=r0, var132=c0, var3829=net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat, var3871=$r1, var3130=java.lang.Throwable, var1502=$r2, var1684=r5}
; {cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine=var3402, r0=var775, c0=var132, net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat=var3829, $r1=var3871, java.lang.Throwable=var3130, $r2=var1502, r5=var1684}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine;	c0 := @parameter0: char;	$r1 = r0.<cn.hutool.extra.pinyin.engine.pinyin4j.Pinyin4jEngine: net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat format>;	$r2 := @caughtexception;	r5 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	return r5
;block_num 3