(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var138 0)
(declare-sort var3777 0)
(declare-sort var2371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3777_checkObjectToString/539912867 (var138) String)
(declare-fun var2371_toString/-1831155339 (var138) String)
(declare-fun var2371_toInteger/1184266250 (var138) Int)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-var138 var138)
(declare-const var2244 var138) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2244 null-var138)))
(declare-const var85 var138) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var85 null-var138)))
(declare-const var2622 var138) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var2622 null-var138)))
(define-const var995 String (var3777_checkObjectToString/539912867 var2244)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(define-const var159 String (var2371_toString/-1831155339 var85)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r2) 
(define-const var550 Int (var2371_toInteger/1184266250 var2622)) ; Statement: $i0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3) 
(assert true)
(define-const var2528 Int (indexOf/1795197748 var995 var159 var550)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>($r4, $i0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3777_checkObjectToString/539912867=([java.lang.Object], java.lang.String), var2371_toString/-1831155339=([java.lang.Object], java.lang.String), var2371_toInteger/1184266250=([java.lang.Object], int), indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var138=java.lang.Object, var2244=r0, var85=r2, var2622=r3, var3777=jdk.nashorn.internal.objects.NativeString, var995=r1, var2371=jdk.nashorn.internal.runtime.JSType, var159=$r4, var550=$i0, var2528=$i1}
; {java.lang.Object=var138, r0=var2244, r2=var85, r3=var2622, jdk.nashorn.internal.objects.NativeString=var3777, r1=var995, jdk.nashorn.internal.runtime.JSType=var2371, $r4=var159, $i0=var550, $i1=var2528}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	$r4 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r2);	$i0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3);	$i1 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>($r4, $i0);	return $i1
;block_num 1