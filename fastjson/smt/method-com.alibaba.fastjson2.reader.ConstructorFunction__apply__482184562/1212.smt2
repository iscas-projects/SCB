(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2275 0)
(declare-sort var104 0)
(declare-sort var2843 0)
(declare-sort var2252 0)
(declare-sort var1427 0)
(declare-sort var3163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCodes/-1715129530 (var2275) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun function/-1715129530 (var2275) var2843)
(declare-fun parameters/-1715129530 (var2275) (Array Int var2252))
(declare-fun getLength-Arr-var2252-1 ((Array Int var2252)) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun var104_get/1088891777 (var104 var1427) var1427)
(declare-fun cast-from-Int-to-var1427 (Int) var1427)
(declare-fun getType/2128767863 (var2252) ClassObject)
(declare-fun var3163_getDefaultValue/-1137440073 (ClassObject) var1427)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var2843_apply/533941847 (var2843 var1427) var1427)
(declare-const null-var2275 var2275)
(declare-const null-var104 var104)
(declare-const null-var2843 var2843)
(declare-const null-var1427 var1427)
(declare-const var3656 var2275) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ConstructorFunction 
(assert (not (= var3656 null-var2275)))
(declare-const var3766 var104) ; Statement: r7 := @parameter0: java.util.Map 
(assert (not (= var3766 null-var104)))
(define-const var1727 Bool (ite (= 1 1) true false)) ; Statement: z8 = 1 
(define-const var968 (Array Int Int) (hashCodes/-1715129530 var3656)) ; Statement: r49 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes> 
(define-const var2085 Int (getLength-Arr-Int-1 var968)) ; Statement: i14 = lengthof r49 
(define-const var1025 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i14 goto (branch) 
(assert (>= var1025 var2085)) ; Cond: i15 >= i14 
 ; Statement: if z8 != 0 goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
(assert (not (= (ite var1727 1 0) 0))) ; Cond: z8 != 0 
(define-const var265 var2843 (function/-1715129530 var3656)) ; Statement: $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
 ; Statement: if $r56 == null goto $r1 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.BiFunction biFunction> 
(assert (not (= var265 null-var2843))) ; Negate: Cond: $r56 == null  
(define-const var3321 (Array Int var2252) (parameters/-1715129530 var3656)) ; Statement: $r21 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.lang.reflect.Parameter[] parameters> 
(define-const var2520 Int (getLength-Arr-var2252-1 var3321)) ; Statement: $i9 = lengthof $r21 
 ; Statement: if $i9 != 1 goto $r1 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.BiFunction biFunction> 
(assert (not (not (= var2520 1)))) ; Negate: Cond: $i9 != 1  
(define-const var1801 (Array Int var2252) (parameters/-1715129530 var3656)) ; Statement: $r22 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.lang.reflect.Parameter[] parameters> 
(define-const var2061 var2252 (select var1801 0)) ; Statement: r57 = $r22[0] 
(define-const var1271 (Array Int Int) (hashCodes/-1715129530 var3656)) ; Statement: $r23 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes> 
(define-const var3868 Int (select var1271 0)) ; Statement: $l10 = $r23[0] 
(define-const var1007 Int (Int_valueOf/-1102777585 var3868)) ; Statement: $r24 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l10) 
(define-const var662 var1427 (var104_get/1088891777 var3766 (cast-from-Int-to-var1427 var1007))) ; Statement: r58 = interfaceinvoke r7.<java.util.Map: java.lang.Object get(java.lang.Object)>($r24) 
(assert true)
(define-const var3256 ClassObject (getType/2128767863 var2061)) ; Statement: r59 = virtualinvoke r57.<java.lang.reflect.Parameter: java.lang.Class getType()>() 
 ; Statement: if r58 != null goto $z6 = virtualinvoke r59.<java.lang.Class: boolean isInstance(java.lang.Object)>(r58) 
(assert (not (not (= var662 null-var1427)))) ; Negate: Cond: r58 != null  
(define-const var662!1 var1427 (var3163_getDefaultValue/-1137440073 (cast-from-ClassObject-to-ClassObject var3256))) ; Statement: r58 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Object getDefaultValue(java.lang.reflect.Type)>(r59) 
 ; Statement: goto [?= $r60 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>] 
(assert true) ; Non Conditional
(define-const var2752 var2843 (function/-1715129530 var3656)) ; Statement: $r60 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
(define-const var1202 var1427 (var2843_apply/533941847 var2752 var662!1)) ; Statement: $r61 = interfaceinvoke $r60.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r58) 
 ; Statement: return $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCodes/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], long[]), getLength-Arr-Int-1=([long[]], int), function/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], java.util.function.Function), parameters/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], java.lang.reflect.Parameter[]), getLength-Arr-var2252-1=([java.lang.reflect.Parameter[]], int), Int_valueOf/-1102777585=([long], java.lang.Long), var104_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1427=([java.lang.Long], java.lang.Object), getType/2128767863=([java.lang.reflect.Parameter], java.lang.Class), var3163_getDefaultValue/-1137440073=([java.lang.reflect.Type], java.lang.Object), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var2843_apply/533941847=([java.util.function.Function, java.lang.Object], java.lang.Object)}
; {var2275=com.alibaba.fastjson2.reader.ConstructorFunction, var3656=r0, var104=java.util.Map, var3766=r7, var1727=z8, var968=r49, var2085=i14, var1025=i15, var2843=java.util.function.Function, var265=$r56, var2252=java.lang.reflect.Parameter, var3321=$r21, var2520=$i9, var1801=$r22, var2061=r57, var1271=$r23, var3868=$l10, var1007=$r24, var1427=java.lang.Object, var662=r58, var3256=r59, var3163=com.alibaba.fastjson2.util.TypeUtils, var2752=$r60, var1202=$r61}
; {com.alibaba.fastjson2.reader.ConstructorFunction=var2275, r0=var3656, java.util.Map=var104, r7=var3766, z8=var1727, r49=var968, i14=var2085, i15=var1025, java.util.function.Function=var2843, $r56=var265, java.lang.reflect.Parameter=var2252, $r21=var3321, $i9=var2520, $r22=var1801, r57=var2061, $r23=var1271, $l10=var3868, $r24=var1007, java.lang.Object=var1427, r58=var662, r59=var3256, com.alibaba.fastjson2.util.TypeUtils=var3163, $r60=var2752, $r61=var1202}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ConstructorFunction;	r7 := @parameter0: java.util.Map;	z8 = 1;	r49 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes>;	i14 = lengthof r49;	i15 = 0;	if i15 >= i14 goto (branch);	if z8 != 0 goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	$r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	if $r56 == null goto $r1 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.BiFunction biFunction>;	$r21 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.lang.reflect.Parameter[] parameters>;	$i9 = lengthof $r21;	if $i9 != 1 goto $r1 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.BiFunction biFunction>;	$r22 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.lang.reflect.Parameter[] parameters>;	r57 = $r22[0];	$r23 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes>;	$l10 = $r23[0];	$r24 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l10);	r58 = interfaceinvoke r7.<java.util.Map: java.lang.Object get(java.lang.Object)>($r24);	r59 = virtualinvoke r57.<java.lang.reflect.Parameter: java.lang.Class getType()>();	if r58 != null goto $z6 = virtualinvoke r59.<java.lang.Class: boolean isInstance(java.lang.Object)>(r58);	r58 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Object getDefaultValue(java.lang.reflect.Type)>(r59);	goto [?= $r60 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>];	$r60 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	$r61 = interfaceinvoke $r60.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r58);	return $r61
;block_num 8