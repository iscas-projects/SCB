(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3452 0)
(declare-sort var1483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1483_isChinese/-1345425372 (Int) Bool)
(declare-fun var1483_toPinyin/837475504 (Int) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-const null-var3452 var3452)
(declare-const null-Int Int)
(declare-const var3085 var3452) ; Statement: r3 := @this: cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine 
(assert (not (= var3085 null-var3452)))
(declare-const var2558 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2558 null-Int)))
(define-const var3409 Bool (var1483_isChinese/-1345425372 var2558)) ; Statement: $z0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: boolean isChinese(char)>(c0) 
 ; Statement: if 0 != $z0 goto $r0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: java.lang.String toPinyin(char)>(c0) 
(assert (not (= 0 (ite var3409 1 0)))) ; Cond: 0 != $z0 
(define-const var2704 String (var1483_toPinyin/837475504 var2558)) ; Statement: $r0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: java.lang.String toPinyin(char)>(c0) 
(assert true)
(define-const var216 String (toLowerCase/415700667 var2704)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1483_isChinese/-1345425372=([char], boolean), var1483_toPinyin/837475504=([char], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String)}
; {var3452=cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine, var3085=r3, var2558=c0, var1483=com.github.promeg.pinyinhelper.Pinyin, var3409=$z0, var2704=$r0, var216=$r1}
; {cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine=var3452, r3=var3085, c0=var2558, com.github.promeg.pinyinhelper.Pinyin=var1483, $z0=var3409, $r0=var2704, $r1=var216}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r3 := @this: cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine;	c0 := @parameter0: char;	$z0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: boolean isChinese(char)>(c0);	if 0 != $z0 goto $r0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: java.lang.String toPinyin(char)>(c0);	$r0 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: java.lang.String toPinyin(char)>(c0);	$r1 = virtualinvoke $r0.<java.lang.String: java.lang.String toLowerCase()>();	return $r1
;block_num 2