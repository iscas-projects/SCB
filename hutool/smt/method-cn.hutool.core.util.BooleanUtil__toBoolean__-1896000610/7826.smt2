(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3057 0)
(declare-sort var1309 0)
(declare-sort var1599 0)
(declare-sort var3190 0)
(declare-sort var3174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1309_isNotBlank/-658997806 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun var1599_contains/1636690605 (var1599 var3174) Bool)
(declare-fun cast-from-String-to-var3174 (String) var3174)
(declare-const null-String String)
(declare-const var3190-TRUE_SET var1599)
(declare-const var2146 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2146 null-String)))
(define-const var1719 Bool (var1309_isNotBlank/-658997806 (cast-from-String-to-String var2146))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r2) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1719 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3937 String (trim/-847153721 var2146)) ; Statement: $r0 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2334 String (toLowerCase/415700667 var3937)) ; Statement: r3 = virtualinvoke $r0.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var1207 var1599 var3190-TRUE_SET) ; Statement: $r1 = <cn.hutool.core.util.BooleanUtil: java.util.Set TRUE_SET> 
(define-const var3371 Bool (var1599_contains/1636690605 var1207 (cast-from-String-to-var3174 var2334))) ; Statement: $z1 = interfaceinvoke $r1.<java.util.Set: boolean contains(java.lang.Object)>(r3) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1309_isNotBlank/-658997806=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), var1599_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var3174=([java.lang.String], java.lang.Object)}
; {var2146=r2, var3057=null_type, var1309=cn.hutool.core.text.CharSequenceUtil, var1719=$z0, var3937=$r0, var2334=r3, var1599=java.util.Set, var3190=cn.hutool.core.util.BooleanUtil, var1207=$r1, var3174=java.lang.Object, var3371=$z1}
; {r2=var2146, null_type=var3057, cn.hutool.core.text.CharSequenceUtil=var1309, $z0=var1719, $r0=var3937, r3=var2334, java.util.Set=var1599, cn.hutool.core.util.BooleanUtil=var3190, $r1=var1207, java.lang.Object=var3174, $z1=var3371}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r2);	if $z0 == 0 goto return 0;	$r0 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	r3 = virtualinvoke $r0.<java.lang.String: java.lang.String toLowerCase()>();	$r1 = <cn.hutool.core.util.BooleanUtil: java.util.Set TRUE_SET>;	$z1 = interfaceinvoke $r1.<java.util.Set: boolean contains(java.lang.Object)>(r3);	return $z1
;block_num 2