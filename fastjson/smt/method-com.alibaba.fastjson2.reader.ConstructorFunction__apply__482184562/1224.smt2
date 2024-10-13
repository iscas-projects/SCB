(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3253 0)
(declare-sort var903 0)
(declare-sort var3187 0)
(declare-sort var880 0)
(declare-sort var618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCodes/-1715129530 (var3253) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun function/-1715129530 (var3253) var3187)
(declare-fun parameters/-1715129530 (var3253) (Array Int var880))
(declare-fun getLength-Arr-var880-1 ((Array Int var880)) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun var903_get/1088891777 (var903 var618) var618)
(declare-fun cast-from-Int-to-var618 (Int) var618)
(declare-fun getType/2128767863 (var880) ClassObject)
(declare-fun isInstance/451912363 (ClassObject var618) Bool)
(declare-fun var3187_apply/533941847 (var3187 var618) var618)
(declare-const null-var3253 var3253)
(declare-const null-var903 var903)
(declare-const null-var3187 var3187)
(declare-const null-var618 var618)
(declare-const var3027 var3253) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ConstructorFunction 
(assert (not (= var3027 null-var3253)))
(declare-const var810 var903) ; Statement: r7 := @parameter0: java.util.Map 
(assert (not (= var810 null-var903)))
(define-const var3394 Bool (ite (= 1 1) true false)) ; Statement: z8 = 1 
(define-const var1062 (Array Int Int) (hashCodes/-1715129530 var3027)) ; Statement: r49 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes> 
(define-const var2767 Int (getLength-Arr-Int-1 var1062)) ; Statement: i14 = lengthof r49 
(define-const var3029 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i14 goto (branch) 
(assert (>= var3029 var2767)) ; Cond: i15 >= i14 
 ; Statement: if z8 != 0 goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
(assert (not (= (ite var3394 1 0) 0))) ; Cond: z8 != 0 
(define-const var978 var3187 (function/-1715129530 var3027)) ; Statement: $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
 ; Statement: if $r56 == null goto $r1 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.BiFunction biFunction> 
(assert (not (= var978 null-var3187))) ; Negate: Cond: $r56 == null  
(define-const var2207 (Array Int var880) (parameters/-1715129530 var3027)) ; Statement: $r21 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.lang.reflect.Parameter[] parameters> 
(define-const var3315 Int (getLength-Arr-var880-1 var2207)) ; Statement: $i9 = lengthof $r21 
 ; Statement: if $i9 != 1 goto $r1 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.BiFunction biFunction> 
(assert (not (not (= var3315 1)))) ; Negate: Cond: $i9 != 1  
(define-const var3075 (Array Int var880) (parameters/-1715129530 var3027)) ; Statement: $r22 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.lang.reflect.Parameter[] parameters> 
(define-const var27 var880 (select var3075 0)) ; Statement: r57 = $r22[0] 
(define-const var3486 (Array Int Int) (hashCodes/-1715129530 var3027)) ; Statement: $r23 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes> 
(define-const var2779 Int (select var3486 0)) ; Statement: $l10 = $r23[0] 
(define-const var1510 Int (Int_valueOf/-1102777585 var2779)) ; Statement: $r24 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l10) 
(define-const var615 var618 (var903_get/1088891777 var810 (cast-from-Int-to-var618 var1510))) ; Statement: r58 = interfaceinvoke r7.<java.util.Map: java.lang.Object get(java.lang.Object)>($r24) 
(assert true)
(define-const var3809 ClassObject (getType/2128767863 var27)) ; Statement: r59 = virtualinvoke r57.<java.lang.reflect.Parameter: java.lang.Class getType()>() 
 ; Statement: if r58 != null goto $z6 = virtualinvoke r59.<java.lang.Class: boolean isInstance(java.lang.Object)>(r58) 
(assert (not (= var615 null-var618))) ; Cond: r58 != null 
(assert true)
(define-const var1513 Bool (isInstance/451912363 var3809 var615)) ; Statement: $z6 = virtualinvoke r59.<java.lang.Class: boolean isInstance(java.lang.Object)>(r58) 
 ; Statement: if $z6 != 0 goto $r60 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
(assert (not (= (ite var1513 1 0) 0))) ; Cond: $z6 != 0 
(define-const var3452 var3187 (function/-1715129530 var3027)) ; Statement: $r60 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
(define-const var2414 var618 (var3187_apply/533941847 var3452 var615)) ; Statement: $r61 = interfaceinvoke $r60.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r58) 
 ; Statement: return $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCodes/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], long[]), getLength-Arr-Int-1=([long[]], int), function/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], java.util.function.Function), parameters/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], java.lang.reflect.Parameter[]), getLength-Arr-var880-1=([java.lang.reflect.Parameter[]], int), Int_valueOf/-1102777585=([long], java.lang.Long), var903_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var618=([java.lang.Long], java.lang.Object), getType/2128767863=([java.lang.reflect.Parameter], java.lang.Class), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), var3187_apply/533941847=([java.util.function.Function, java.lang.Object], java.lang.Object)}
; {var3253=com.alibaba.fastjson2.reader.ConstructorFunction, var3027=r0, var903=java.util.Map, var810=r7, var3394=z8, var1062=r49, var2767=i14, var3029=i15, var3187=java.util.function.Function, var978=$r56, var880=java.lang.reflect.Parameter, var2207=$r21, var3315=$i9, var3075=$r22, var27=r57, var3486=$r23, var2779=$l10, var1510=$r24, var618=java.lang.Object, var615=r58, var3809=r59, var1513=$z6, var3452=$r60, var2414=$r61}
; {com.alibaba.fastjson2.reader.ConstructorFunction=var3253, r0=var3027, java.util.Map=var903, r7=var810, z8=var3394, r49=var1062, i14=var2767, i15=var3029, java.util.function.Function=var3187, $r56=var978, java.lang.reflect.Parameter=var880, $r21=var2207, $i9=var3315, $r22=var3075, r57=var27, $r23=var3486, $l10=var2779, $r24=var1510, java.lang.Object=var618, r58=var615, r59=var3809, $z6=var1513, $r60=var3452, $r61=var2414}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ConstructorFunction;	r7 := @parameter0: java.util.Map;	z8 = 1;	r49 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes>;	i14 = lengthof r49;	i15 = 0;	if i15 >= i14 goto (branch);	if z8 != 0 goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	$r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	if $r56 == null goto $r1 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.BiFunction biFunction>;	$r21 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.lang.reflect.Parameter[] parameters>;	$i9 = lengthof $r21;	if $i9 != 1 goto $r1 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.BiFunction biFunction>;	$r22 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.lang.reflect.Parameter[] parameters>;	r57 = $r22[0];	$r23 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes>;	$l10 = $r23[0];	$r24 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l10);	r58 = interfaceinvoke r7.<java.util.Map: java.lang.Object get(java.lang.Object)>($r24);	r59 = virtualinvoke r57.<java.lang.reflect.Parameter: java.lang.Class getType()>();	if r58 != null goto $z6 = virtualinvoke r59.<java.lang.Class: boolean isInstance(java.lang.Object)>(r58);	$z6 = virtualinvoke r59.<java.lang.Class: boolean isInstance(java.lang.Object)>(r58);	if $z6 != 0 goto $r60 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	$r60 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	$r61 = interfaceinvoke $r60.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r58);	return $r61
;block_num 8