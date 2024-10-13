(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1722 0)
(declare-sort var740 0)
(declare-sort var3658 0)
(declare-sort var3976 0)
(declare-sort var1480 0)
(declare-sort var2449 0)
(declare-sort var1193 0)
(declare-sort var829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3976_instance/-1028431714 () var3976)
(declare-fun var2449_toPropertyDescriptor/721018023 (var3976 var3658) var1480)
(declare-fun getOwnPropertyDescriptor/2082275124 (var2449 String) var3658)
(declare-fun cast-from-var1722-to-var2449 (var1722) var2449)
(declare-fun cast-from-var3658-to-var1480 (var3658) var1480)
(declare-fun var1480_getValue/-1270232062 (var1480) var3658)
(declare-fun var1193_toUint32/450380516 (var3658) Int)
(declare-fun var829_getArrayIndex/-960398924 (String) Int)
(declare-fun var829_isValidArrayIndex/1485590303 (Int) Bool)
(declare-fun defineOwnProperty/-734813864 (var2449 String var3658 Bool) Bool)
(declare-fun cast-from-var1480-to-var3658 (var1480) var3658)
(declare-const null-var1722 var1722)
(declare-const null-String String)
(declare-const null-var3658 var3658)
(declare-const null-Bool Bool)
(declare-const var1450 var1722) ; Statement: r3 := @this: jdk.nashorn.internal.objects.NativeArray 
(assert (not (= var1450 null-var1722)))
(declare-const var2277 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2277 null-String)))
(declare-const var643 var3658) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var643 null-var3658)))
(declare-const var1504 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var1504 null-Bool)))
(define-const var2330 var3976 var3976_instance/-1028431714) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>() 
(define-const var1474 var1480 (var2449_toPropertyDescriptor/721018023 var2330 var643)) ; Statement: r2 = staticinvoke <jdk.nashorn.internal.objects.NativeArray: jdk.nashorn.internal.runtime.PropertyDescriptor toPropertyDescriptor(jdk.nashorn.internal.objects.Global,java.lang.Object)>($r1, r0) 
(assert true)
(define-const var1662 var3658 (getOwnPropertyDescriptor/2082275124 (cast-from-var1722-to-var2449 var1450) "length")) ; Statement: $r4 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object getOwnPropertyDescriptor(java.lang.String)>("length") 
(define-const var930 var1480 (cast-from-var3658-to-var1480 var1662)) ; Statement: r5 = (jdk.nashorn.internal.runtime.PropertyDescriptor) $r4 
(define-const var1427 var3658 (var1480_getValue/-1270232062 var930)) ; Statement: $r6 = interfaceinvoke r5.<jdk.nashorn.internal.runtime.PropertyDescriptor: java.lang.Object getValue()>() 
(define-const var3215 Int (var1193_toUint32/450380516 var1427)) ; Statement: l0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: long toUint32(java.lang.Object)>($r6) 
(define-const var1302 String "length") ; Statement: $r8 = "length" 
(assert true)
(define-const var2661 Bool (= var1302 var2277)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 == 0 goto i5 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayIndex: int getArrayIndex(java.lang.String)>(r7) 
(assert (= (ite var2661 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2128 Int (var829_getArrayIndex/-960398924 var2277)) ; Statement: i5 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayIndex: int getArrayIndex(java.lang.String)>(r7) 
(define-const var220 Bool (var829_isValidArrayIndex/1485590303 var2128)) ; Statement: $z1 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayIndex: boolean isValidArrayIndex(int)>(i5) 
 ; Statement: if $z1 == 0 goto $z3 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: boolean defineOwnProperty(java.lang.String,java.lang.Object,boolean)>(r7, r2, z2) 
(assert (= (ite var220 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1066 Bool (defineOwnProperty/-734813864 (cast-from-var1722-to-var2449 var1450) var2277 (cast-from-var1480-to-var3658 var1474) var1504)) ; Statement: $z3 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: boolean defineOwnProperty(java.lang.String,java.lang.Object,boolean)>(r7, r2, z2) 
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3976_instance/-1028431714=([], jdk.nashorn.internal.objects.Global), var2449_toPropertyDescriptor/721018023=([jdk.nashorn.internal.objects.Global, java.lang.Object], jdk.nashorn.internal.runtime.PropertyDescriptor), getOwnPropertyDescriptor/2082275124=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.String], java.lang.Object), cast-from-var1722-to-var2449=([jdk.nashorn.internal.objects.NativeArray], jdk.nashorn.internal.runtime.ScriptObject), cast-from-var3658-to-var1480=([java.lang.Object], jdk.nashorn.internal.runtime.PropertyDescriptor), var1480_getValue/-1270232062=([jdk.nashorn.internal.runtime.PropertyDescriptor], java.lang.Object), var1193_toUint32/450380516=([java.lang.Object], long), var829_getArrayIndex/-960398924=([java.lang.String], int), var829_isValidArrayIndex/1485590303=([int], boolean), defineOwnProperty/-734813864=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.String, java.lang.Object, boolean], boolean), cast-from-var1480-to-var3658=([jdk.nashorn.internal.runtime.PropertyDescriptor], java.lang.Object)}
; {var1722=jdk.nashorn.internal.objects.NativeArray, var1450=r3, var2277=r7, var740=null_type, var3658=java.lang.Object, var643=r0, var1504=z2, var3976=jdk.nashorn.internal.objects.Global, var2330=$r1, var1480=jdk.nashorn.internal.runtime.PropertyDescriptor, var2449=jdk.nashorn.internal.runtime.ScriptObject, var1474=r2, var1662=$r4, var930=r5, var1427=$r6, var1193=jdk.nashorn.internal.runtime.JSType, var3215=l0, var1302=$r8, var2661=$z0, var829=jdk.nashorn.internal.runtime.arrays.ArrayIndex, var2128=i5, var220=$z1, var1066=$z3}
; {jdk.nashorn.internal.objects.NativeArray=var1722, r3=var1450, r7=var2277, null_type=var740, java.lang.Object=var3658, r0=var643, z2=var1504, jdk.nashorn.internal.objects.Global=var3976, $r1=var2330, jdk.nashorn.internal.runtime.PropertyDescriptor=var1480, jdk.nashorn.internal.runtime.ScriptObject=var2449, r2=var1474, $r4=var1662, r5=var930, $r6=var1427, jdk.nashorn.internal.runtime.JSType=var1193, l0=var3215, $r8=var1302, $z0=var2661, jdk.nashorn.internal.runtime.arrays.ArrayIndex=var829, i5=var2128, $z1=var220, $z3=var1066}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: jdk.nashorn.internal.objects.NativeArray;	r7 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.Object;	z2 := @parameter2: boolean;	$r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>();	r2 = staticinvoke <jdk.nashorn.internal.objects.NativeArray: jdk.nashorn.internal.runtime.PropertyDescriptor toPropertyDescriptor(jdk.nashorn.internal.objects.Global,java.lang.Object)>($r1, r0);	$r4 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object getOwnPropertyDescriptor(java.lang.String)>("length");	r5 = (jdk.nashorn.internal.runtime.PropertyDescriptor) $r4;	$r6 = interfaceinvoke r5.<jdk.nashorn.internal.runtime.PropertyDescriptor: java.lang.Object getValue()>();	l0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: long toUint32(java.lang.Object)>($r6);	$r8 = "length";	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 == 0 goto i5 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayIndex: int getArrayIndex(java.lang.String)>(r7);	i5 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayIndex: int getArrayIndex(java.lang.String)>(r7);	$z1 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayIndex: boolean isValidArrayIndex(int)>(i5);	if $z1 == 0 goto $z3 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: boolean defineOwnProperty(java.lang.String,java.lang.Object,boolean)>(r7, r2, z2);	$z3 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: boolean defineOwnProperty(java.lang.String,java.lang.Object,boolean)>(r7, r2, z2);	return $z3
;block_num 3