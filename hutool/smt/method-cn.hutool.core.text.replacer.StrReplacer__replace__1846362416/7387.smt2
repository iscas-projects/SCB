(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2330 0)
(declare-sort var3860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3860_create/1018862386 (Int) var3860)
(declare-const null-var2330 var2330)
(declare-const null-String String)
(declare-const var1799 var2330) ; Statement: r2 := @this: cn.hutool.core.text.replacer.StrReplacer 
(assert (not (= var1799 null-var2330)))
(declare-const var1714 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1714 null-String)))
(define-const var326 Int (String_length/-667254855 var1714)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var699 var3860 (var3860_create/1018862386 var326)) ; Statement: r1 = staticinvoke <cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder create(int)>(i0) 
(define-const var1609 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto return r1 
(assert (>= var1609 var326)) ; Cond: i3 >= i0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var3860_create/1018862386=([int], cn.hutool.core.text.StrBuilder)}
; {var2330=cn.hutool.core.text.replacer.StrReplacer, var1799=r2, var1714=r0, var326=i0, var3860=cn.hutool.core.text.StrBuilder, var699=r1, var1609=i3}
; {cn.hutool.core.text.replacer.StrReplacer=var2330, r2=var1799, r0=var1714, i0=var326, cn.hutool.core.text.StrBuilder=var3860, r1=var699, i3=var1609}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r2 := @this: cn.hutool.core.text.replacer.StrReplacer;	r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	r1 = staticinvoke <cn.hutool.core.text.StrBuilder: cn.hutool.core.text.StrBuilder create(int)>(i0);	i3 = 0;	if i3 >= i0 goto return r1;	return r1
;block_num 3