(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2924 0)
(declare-sort var1263 0)
(declare-sort var436 0)
(declare-sort var3339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var436_toPinyin/1247878524 (String String) String)
(declare-fun var3339_isEmpty/1540305040 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-const null-var2924 var2924)
(declare-const null-String String)
(declare-const var1207 var2924) ; Statement: r3 := @this: cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine 
(assert (not (= var1207 null-var2924)))
(declare-const var273 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var273 null-String)))
(declare-const var2100 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2100 null-String)))
(define-const var3449 String (var436_toPinyin/1247878524 var273 var2100)) ; Statement: r2 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: java.lang.String toPinyin(java.lang.String,java.lang.String)>(r0, r1) 
(define-const var522 Bool (var3339_isEmpty/1540305040 (cast-from-String-to-String var3449))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmpty(java.lang.CharSequence)>(r2) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase()>() 
(assert (= (ite var522 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1709 String (toLowerCase/415700667 var3449)) ; Statement: $r4 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var436_toPinyin/1247878524=([java.lang.String, java.lang.String], java.lang.String), var3339_isEmpty/1540305040=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toLowerCase/415700667=([java.lang.String], java.lang.String)}
; {var2924=cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine, var1207=r3, var273=r0, var1263=null_type, var2100=r1, var436=com.github.promeg.pinyinhelper.Pinyin, var3449=r2, var3339=cn.hutool.core.text.CharSequenceUtil, var522=$z0, var1709=$r4}
; {cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine=var2924, r3=var1207, r0=var273, null_type=var1263, r1=var2100, com.github.promeg.pinyinhelper.Pinyin=var436, r2=var3449, cn.hutool.core.text.CharSequenceUtil=var3339, $z0=var522, $r4=var1709}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r3 := @this: cn.hutool.extra.pinyin.engine.tinypinyin.TinyPinyinEngine;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 = staticinvoke <com.github.promeg.pinyinhelper.Pinyin: java.lang.String toPinyin(java.lang.String,java.lang.String)>(r0, r1);	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmpty(java.lang.CharSequence)>(r2);	if $z0 == 0 goto $r4 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase()>();	$r4 = virtualinvoke r2.<java.lang.String: java.lang.String toLowerCase()>();	return $r4
;block_num 3