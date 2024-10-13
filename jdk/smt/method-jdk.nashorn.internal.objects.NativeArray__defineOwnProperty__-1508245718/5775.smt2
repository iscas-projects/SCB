(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var79 0)
(declare-sort var2354 0)
(declare-sort var3126 0)
(declare-sort var1194 0)
(declare-sort var1322 0)
(declare-sort var3174 0)
(declare-sort var1416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1194_instance/-1028431714 () var1194)
(declare-fun var3174_toPropertyDescriptor/721018023 (var1194 var3126) var1322)
(declare-fun getOwnPropertyDescriptor/2082275124 (var3174 String) var3126)
(declare-fun cast-from-var79-to-var3174 (var79) var3174)
(declare-fun cast-from-var3126-to-var1322 (var3126) var1322)
(declare-fun var1322_getValue/-1270232062 (var1322) var3126)
(declare-fun var1416_toUint32/450380516 (var3126) Int)
(declare-fun defineLength/-604633015 (var79 Int var1322 var1322 Bool) Bool)
(declare-fun var1322_has/311796827 (var1322 var3126) Bool)
(declare-fun cast-from-String-to-var3126 (String) var3126)
(declare-const null-var79 var79)
(declare-const null-String String)
(declare-const null-var3126 var3126)
(declare-const null-Bool Bool)
(declare-const var2462 var79) ; Statement: r3 := @this: jdk.nashorn.internal.objects.NativeArray 
(assert (not (= var2462 null-var79)))
(declare-const var3012 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var3012 null-String)))
(declare-const var2746 var3126) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2746 null-var3126)))
(declare-const var2095 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var2095 null-Bool)))
(define-const var265 var1194 var1194_instance/-1028431714) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>() 
(define-const var549 var1322 (var3174_toPropertyDescriptor/721018023 var265 var2746)) ; Statement: r2 = staticinvoke <jdk.nashorn.internal.objects.NativeArray: jdk.nashorn.internal.runtime.PropertyDescriptor toPropertyDescriptor(jdk.nashorn.internal.objects.Global,java.lang.Object)>($r1, r0) 
(assert true)
(define-const var577 var3126 (getOwnPropertyDescriptor/2082275124 (cast-from-var79-to-var3174 var2462) "length")) ; Statement: $r4 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object getOwnPropertyDescriptor(java.lang.String)>("length") 
(define-const var608 var1322 (cast-from-var3126-to-var1322 var577)) ; Statement: r5 = (jdk.nashorn.internal.runtime.PropertyDescriptor) $r4 
(define-const var1430 var3126 (var1322_getValue/-1270232062 var608)) ; Statement: $r6 = interfaceinvoke r5.<jdk.nashorn.internal.runtime.PropertyDescriptor: java.lang.Object getValue()>() 
(define-const var1291 Int (var1416_toUint32/450380516 var1430)) ; Statement: l0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: long toUint32(java.lang.Object)>($r6) 
(define-const var958 String "length") ; Statement: $r8 = "length" 
(assert true)
(define-const var452 Bool (= var958 var3012)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 == 0 goto i5 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayIndex: int getArrayIndex(java.lang.String)>(r7) 
(assert (not (= (ite var452 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1718 Bool (defineLength/-604633015 var2462 var1291 var608 var549 var2095)) ; Statement: z8 = specialinvoke r3.<jdk.nashorn.internal.objects.NativeArray: boolean defineLength(long,jdk.nashorn.internal.runtime.PropertyDescriptor,jdk.nashorn.internal.runtime.PropertyDescriptor,boolean)>(l0, r5, r2, z2) 
(define-const var1707 Bool (var1322_has/311796827 var549 (cast-from-String-to-var3126 "writable"))) ; Statement: $z6 = interfaceinvoke r2.<jdk.nashorn.internal.runtime.PropertyDescriptor: boolean has(java.lang.Object)>("writable") 
 ; Statement: if $z6 == 0 goto return z8 
(assert (= (ite var1707 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return z8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1194_instance/-1028431714=([], jdk.nashorn.internal.objects.Global), var3174_toPropertyDescriptor/721018023=([jdk.nashorn.internal.objects.Global, java.lang.Object], jdk.nashorn.internal.runtime.PropertyDescriptor), getOwnPropertyDescriptor/2082275124=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.String], java.lang.Object), cast-from-var79-to-var3174=([jdk.nashorn.internal.objects.NativeArray], jdk.nashorn.internal.runtime.ScriptObject), cast-from-var3126-to-var1322=([java.lang.Object], jdk.nashorn.internal.runtime.PropertyDescriptor), var1322_getValue/-1270232062=([jdk.nashorn.internal.runtime.PropertyDescriptor], java.lang.Object), var1416_toUint32/450380516=([java.lang.Object], long), defineLength/-604633015=([jdk.nashorn.internal.objects.NativeArray, long, jdk.nashorn.internal.runtime.PropertyDescriptor, jdk.nashorn.internal.runtime.PropertyDescriptor, boolean], boolean), var1322_has/311796827=([jdk.nashorn.internal.runtime.PropertyDescriptor, java.lang.Object], boolean), cast-from-String-to-var3126=([java.lang.String], java.lang.Object)}
; {var79=jdk.nashorn.internal.objects.NativeArray, var2462=r3, var3012=r7, var2354=null_type, var3126=java.lang.Object, var2746=r0, var2095=z2, var1194=jdk.nashorn.internal.objects.Global, var265=$r1, var1322=jdk.nashorn.internal.runtime.PropertyDescriptor, var3174=jdk.nashorn.internal.runtime.ScriptObject, var549=r2, var577=$r4, var608=r5, var1430=$r6, var1416=jdk.nashorn.internal.runtime.JSType, var1291=l0, var958=$r8, var452=$z0, var1718=z8, var1707=$z6}
; {jdk.nashorn.internal.objects.NativeArray=var79, r3=var2462, r7=var3012, null_type=var2354, java.lang.Object=var3126, r0=var2746, z2=var2095, jdk.nashorn.internal.objects.Global=var1194, $r1=var265, jdk.nashorn.internal.runtime.PropertyDescriptor=var1322, jdk.nashorn.internal.runtime.ScriptObject=var3174, r2=var549, $r4=var577, r5=var608, $r6=var1430, jdk.nashorn.internal.runtime.JSType=var1416, l0=var1291, $r8=var958, $z0=var452, z8=var1718, $z6=var1707}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: jdk.nashorn.internal.objects.NativeArray;	r7 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.Object;	z2 := @parameter2: boolean;	$r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>();	r2 = staticinvoke <jdk.nashorn.internal.objects.NativeArray: jdk.nashorn.internal.runtime.PropertyDescriptor toPropertyDescriptor(jdk.nashorn.internal.objects.Global,java.lang.Object)>($r1, r0);	$r4 = specialinvoke r3.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object getOwnPropertyDescriptor(java.lang.String)>("length");	r5 = (jdk.nashorn.internal.runtime.PropertyDescriptor) $r4;	$r6 = interfaceinvoke r5.<jdk.nashorn.internal.runtime.PropertyDescriptor: java.lang.Object getValue()>();	l0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: long toUint32(java.lang.Object)>($r6);	$r8 = "length";	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 == 0 goto i5 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayIndex: int getArrayIndex(java.lang.String)>(r7);	z8 = specialinvoke r3.<jdk.nashorn.internal.objects.NativeArray: boolean defineLength(long,jdk.nashorn.internal.runtime.PropertyDescriptor,jdk.nashorn.internal.runtime.PropertyDescriptor,boolean)>(l0, r5, r2, z2);	$z6 = interfaceinvoke r2.<jdk.nashorn.internal.runtime.PropertyDescriptor: boolean has(java.lang.Object)>("writable");	if $z6 == 0 goto return z8;	return z8
;block_num 3