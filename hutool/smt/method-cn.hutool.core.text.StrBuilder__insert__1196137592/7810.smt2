(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3060 var3060)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1493 var3060) ; Statement: r0 := @this: cn.hutool.core.text.StrBuilder 
(assert (not (= var1493 null-var3060)))
(declare-const var1038 Int) ; Statement: i7 := @parameter0: int 
(assert (not (= var1038 null-Int)))
(declare-const var1071 String) ; Statement: r3 := @parameter1: java.lang.CharSequence 
(assert (not (= var1071 null-String)))
(declare-const var900 Int) ; Statement: i8 := @parameter2: int 
(assert (not (= var900 null-Int)))
(declare-const var3231 Int) ; Statement: i9 := @parameter3: int 
(assert (not (= var3231 null-Int)))
 ; Statement: if r3 != null goto $i6 = interfaceinvoke r3.<java.lang.CharSequence: int length()>() 
(assert (not (= var1071 null-String))) ; Cond: r3 != null 
(define-const var98 Int (String_length/-667254855 var1071)) ; Statement: $i6 = interfaceinvoke r3.<java.lang.CharSequence: int length()>() 
 ; Statement: if i8 <= $i6 goto (branch) 
(assert (not (<= var900 var98))) ; Negate: Cond: i8 <= $i6  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var3060=cn.hutool.core.text.StrBuilder, var1493=r0, var1038=i7, var1071=r3, var900=i8, var3231=i9, var98=$i6}
; {cn.hutool.core.text.StrBuilder=var3060, r0=var1493, i7=var1038, r3=var1071, i8=var900, i9=var3231, $i6=var98}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.text.StrBuilder;	i7 := @parameter0: int;	r3 := @parameter1: java.lang.CharSequence;	i8 := @parameter2: int;	i9 := @parameter3: int;	if r3 != null goto $i6 = interfaceinvoke r3.<java.lang.CharSequence: int length()>();	$i6 = interfaceinvoke r3.<java.lang.CharSequence: int length()>();	if i8 <= $i6 goto (branch);	return r0
;block_num 3