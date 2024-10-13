(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3683 0)
(declare-sort var822 0)
(declare-sort var1032 0)
(declare-sort var1211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3683_indexOf/-419066929 (String Int Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun var1032_of/313752935 (var1211 var1211) var822)
(declare-fun cast-from-String-to-var1211 (String) var1211)
(declare-const null-String String)
(declare-const var2304 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2304 null-String)))
(define-const var933 Int (String_length/-667254855 var2304)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var574 Int (var3683_indexOf/-419066929 var2304 61 0 var933)) ; Statement: i1 = staticinvoke <cn.hutool.core.util.StrUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, 61, 0, $i0) 
(define-const var1292 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i1 <= $i5 goto return null 
(assert (not (<= var574 var1292))) ; Negate: Cond: i1 <= $i5  
(define-const var3748 Int (+ var574 1)) ; Statement: $i2 = i1 + 1 
(define-const var184 String (String_subSequence/-1087362312 var2304 0 var3748)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, $i2) 
(define-const var1259 Int (String_length/-667254855 var2304)) ; Statement: $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2049 String (String_subSequence/-1087362312 var2304 var574 var1259)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i1, $i3) 
(define-const var2893 var822 (var1032_of/313752935 (cast-from-String-to-var1211 var184) (cast-from-String-to-var1211 var2049))) ; Statement: $r3 = staticinvoke <cn.hutool.core.map.MapUtil: java.util.HashMap of(java.lang.Object,java.lang.Object)>($r2, $r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var3683_indexOf/-419066929=([java.lang.CharSequence, char, int, int], int), cast-from-Int-to-Int=([int], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), var1032_of/313752935=([java.lang.Object, java.lang.Object], java.util.HashMap), cast-from-String-to-var1211=([java.lang.CharSequence], java.lang.Object)}
; {var2304=r0, var933=$i0, var3683=cn.hutool.core.text.CharSequenceUtil, var574=i1, var1292=$i5, var3748=$i2, var184=$r2, var1259=$i3, var2049=$r1, var822=java.util.HashMap, var1032=cn.hutool.core.map.MapUtil, var1211=java.lang.Object, var2893=$r3}
; {r0=var2304, $i0=var933, cn.hutool.core.text.CharSequenceUtil=var3683, i1=var574, $i5=var1292, $i2=var3748, $r2=var184, $i3=var1259, $r1=var2049, java.util.HashMap=var822, cn.hutool.core.map.MapUtil=var1032, java.lang.Object=var1211, $r3=var2893}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 2}
;stmts r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i1 = staticinvoke <cn.hutool.core.util.StrUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, 61, 0, $i0);	$i5 = (int) -1;	if i1 <= $i5 goto return null;	$i2 = i1 + 1;	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, $i2);	$i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i1, $i3);	$r3 = staticinvoke <cn.hutool.core.map.MapUtil: java.util.HashMap of(java.lang.Object,java.lang.Object)>($r2, $r1);	return $r3
;block_num 2