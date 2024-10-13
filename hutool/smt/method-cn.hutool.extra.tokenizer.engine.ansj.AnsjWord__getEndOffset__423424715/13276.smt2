(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStartOffset/-313798620 (var1343) Int)
(declare-fun getText/-153009236 (var1343) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1343 var1343)
(declare-const var2878 var1343) ; Statement: r0 := @this: cn.hutool.extra.tokenizer.engine.ansj.AnsjWord 
(assert (not (= var2878 null-var1343)))
(assert true)
(define-const var848 Int (getStartOffset/-313798620 var2878)) ; Statement: $i1 = virtualinvoke r0.<cn.hutool.extra.tokenizer.engine.ansj.AnsjWord: int getStartOffset()>() 
(assert true)
(define-const var3995 String (getText/-153009236 var2878)) ; Statement: $r1 = virtualinvoke r0.<cn.hutool.extra.tokenizer.engine.ansj.AnsjWord: java.lang.String getText()>() 
(assert true)
(define-const var3617 Int (length/-134980193 var3995)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1277 Int (+ var848 var3617)) ; Statement: $i2 = $i1 + $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getStartOffset/-313798620=([cn.hutool.extra.tokenizer.engine.ansj.AnsjWord], int), getText/-153009236=([cn.hutool.extra.tokenizer.engine.ansj.AnsjWord], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1343=cn.hutool.extra.tokenizer.engine.ansj.AnsjWord, var2878=r0, var848=$i1, var3995=$r1, var3617=$i0, var1277=$i2}
; {cn.hutool.extra.tokenizer.engine.ansj.AnsjWord=var1343, r0=var2878, $i1=var848, $r1=var3995, $i0=var3617, $i2=var1277}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.extra.tokenizer.engine.ansj.AnsjWord;	$i1 = virtualinvoke r0.<cn.hutool.extra.tokenizer.engine.ansj.AnsjWord: int getStartOffset()>();	$r1 = virtualinvoke r0.<cn.hutool.extra.tokenizer.engine.ansj.AnsjWord: java.lang.String getText()>();	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	return $i2
;block_num 1