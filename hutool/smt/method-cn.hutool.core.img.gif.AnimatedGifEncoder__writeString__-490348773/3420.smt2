(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2355 0)
(declare-sort var1245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2355 var2355)
(declare-const null-String String)
(declare-const var1221 var2355) ; Statement: r1 := @this: cn.hutool.core.img.gif.AnimatedGifEncoder 
(assert (not (= var1221 null-var2355)))
(declare-const var1448 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1448 null-String)))
(define-const var857 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1777 Int (length/-134980193 var1448)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto return 
(assert (>= var857 var1777)) ; Cond: i3 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2355=cn.hutool.core.img.gif.AnimatedGifEncoder, var1221=r1, var1448=r0, var1245=null_type, var857=i3, var1777=$i0}
; {cn.hutool.core.img.gif.AnimatedGifEncoder=var2355, r1=var1221, r0=var1448, null_type=var1245, i3=var857, $i0=var1777}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: cn.hutool.core.img.gif.AnimatedGifEncoder;	r0 := @parameter0: java.lang.String;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto return;	return
;block_num 3