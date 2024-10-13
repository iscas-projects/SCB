(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1036 0)
(declare-sort var986 0)
(declare-sort var149 0)
(declare-sort var2465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1036_indexOf/-419066929 (String Int Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun var149_of/313752935 (var2465 var2465) var986)
(declare-fun cast-from-String-to-var2465 (String) var2465)
(declare-const null-String String)
(declare-const var1356 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1356 null-String)))
(define-const var1593 Int (String_length/-667254855 var1356)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var201 Int (var1036_indexOf/-419066929 var1356 61 0 var1593)) ; Statement: i1 = staticinvoke <cn.hutool.core.util.StrUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, 61, 0, $i0) 
(define-const var2636 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i1 <= $i5 goto return null 
(assert (not (<= var201 var2636))) ; Negate: Cond: i1 <= $i5  
(define-const var1222 Int (+ var201 1)) ; Statement: $i2 = i1 + 1 
(define-const var2602 String (String_subSequence/-1087362312 var1356 0 var1222)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, $i2) 
(define-const var694 Int (String_length/-667254855 var1356)) ; Statement: $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2960 String (String_subSequence/-1087362312 var1356 var201 var694)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i1, $i3) 
(define-const var1342 var986 (var149_of/313752935 (cast-from-String-to-var2465 var2602) (cast-from-String-to-var2465 var2960))) ; Statement: $r3 = staticinvoke <cn.hutool.core.map.MapUtil: java.util.HashMap of(java.lang.Object,java.lang.Object)>($r2, $r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var1036_indexOf/-419066929=([java.lang.CharSequence, char, int, int], int), cast-from-Int-to-Int=([int], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), var149_of/313752935=([java.lang.Object, java.lang.Object], java.util.HashMap), cast-from-String-to-var2465=([java.lang.CharSequence], java.lang.Object)}
; {var1356=r0, var1593=$i0, var1036=cn.hutool.core.text.CharSequenceUtil, var201=i1, var2636=$i5, var1222=$i2, var2602=$r2, var694=$i3, var2960=$r1, var986=java.util.HashMap, var149=cn.hutool.core.map.MapUtil, var2465=java.lang.Object, var1342=$r3}
; {r0=var1356, $i0=var1593, cn.hutool.core.text.CharSequenceUtil=var1036, i1=var201, $i5=var2636, $i2=var1222, $r2=var2602, $i3=var694, $r1=var2960, java.util.HashMap=var986, cn.hutool.core.map.MapUtil=var149, java.lang.Object=var2465, $r3=var1342}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 2}
;stmts r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i1 = staticinvoke <cn.hutool.core.util.StrUtil: int indexOf(java.lang.CharSequence,char,int,int)>(r0, 61, 0, $i0);	$i5 = (int) -1;	if i1 <= $i5 goto return null;	$i2 = i1 + 1;	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, $i2);	$i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i1, $i3);	$r3 = staticinvoke <cn.hutool.core.map.MapUtil: java.util.HashMap of(java.lang.Object,java.lang.Object)>($r2, $r1);	return $r3
;block_num 2