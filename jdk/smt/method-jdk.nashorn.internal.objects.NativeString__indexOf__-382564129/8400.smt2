(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3827 0)
(declare-sort var461 0)
(declare-sort var3373 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var461_checkObjectToString/539912867 (var3827) String)
(declare-fun var3373_toString/-1831155339 (var3827) String)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-var3827 var3827)
(declare-const null-Int Int)
(declare-const var2669 var3827) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2669 null-var3827)))
(declare-const var2069 var3827) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2069 null-var3827)))
(declare-const var128 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var128 null-Int)))
(define-const var2745 String (var461_checkObjectToString/539912867 var2669)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(define-const var775 String (var3373_toString/-1831155339 var2069)) ; Statement: $r2 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r1) 
(assert true)
(define-const var3169 Int (indexOf/1795197748 var2745 var775 var128)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int indexOf(java.lang.String,int)>($r2, i0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {var461_checkObjectToString/539912867=([java.lang.Object], java.lang.String), var3373_toString/-1831155339=([java.lang.Object], java.lang.String), indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var3827=java.lang.Object, var2669=r0, var2069=r1, var128=i0, var461=jdk.nashorn.internal.objects.NativeString, var2745=$r3, var3373=jdk.nashorn.internal.runtime.JSType, var775=$r2, var3169=$i1}
; {java.lang.Object=var3827, r0=var2669, r1=var2069, i0=var128, jdk.nashorn.internal.objects.NativeString=var461, $r3=var2745, jdk.nashorn.internal.runtime.JSType=var3373, $r2=var775, $i1=var3169}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Object;	i0 := @parameter2: int;	$r3 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	$r2 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r1);	$i1 = virtualinvoke $r3.<java.lang.String: int indexOf(java.lang.String,int)>($r2, i0);	return $i1
;block_num 1