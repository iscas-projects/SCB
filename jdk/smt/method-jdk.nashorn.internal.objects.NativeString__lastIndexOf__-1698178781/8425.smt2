(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3117 0)
(declare-sort var261 0)
(declare-sort var2367 0)
(declare-sort var3860 0)
(declare-sort var2712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var261_checkObjectToString/539912867 (var3117) String)
(declare-fun var2367_toString/-1831155339 (var3117) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cast-from-var3860-to-var3117 (var3860) var3117)
(declare-fun lastIndexOf/262189930 (String String Int) Int)
(declare-const null-var3117 var3117)
(declare-const var2712-UNDEFINED var3860)
(declare-const var683 var3117) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var683 null-var3117)))
(declare-const var1975 var3117) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1975 null-var3117)))
(declare-const var3459 var3117) ; Statement: r4 := @parameter2: java.lang.Object 
(assert (not (= var3459 null-var3117)))
(define-const var978 String (var261_checkObjectToString/539912867 var683)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(define-const var306 String (var2367_toString/-1831155339 var1975)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r2) 
(assert true)
(define-const var2809 Int (length/-134980193 var978)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3873 var3860 var2712-UNDEFINED) ; Statement: $r5 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r4 != $r5 goto d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r4) 
(assert (not (not (= var3459 (cast-from-var3860-to-var3117 var3873))))) ; Negate: Cond: r4 != $r5  
(define-const var2913 Int var2809) ; Statement: i1 = i0 
 ; Statement: goto [?= $i3 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String,int)>(r3, i1)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3142 Int (lastIndexOf/262189930 var978 var306 var2913)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String,int)>(r3, i1) 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {var261_checkObjectToString/539912867=([java.lang.Object], java.lang.String), var2367_toString/-1831155339=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-var3860-to-var3117=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), lastIndexOf/262189930=([java.lang.String, java.lang.String, int], int)}
; {var3117=java.lang.Object, var683=r0, var1975=r2, var3459=r4, var261=jdk.nashorn.internal.objects.NativeString, var978=r1, var2367=jdk.nashorn.internal.runtime.JSType, var306=r3, var2809=i0, var3860=jdk.nashorn.internal.runtime.Undefined, var2712=jdk.nashorn.internal.runtime.ScriptRuntime, var3873=$r5, var2913=i1, var3142=$i3}
; {java.lang.Object=var3117, r0=var683, r2=var1975, r4=var3459, jdk.nashorn.internal.objects.NativeString=var261, r1=var978, jdk.nashorn.internal.runtime.JSType=var2367, r3=var306, i0=var2809, jdk.nashorn.internal.runtime.Undefined=var3860, jdk.nashorn.internal.runtime.ScriptRuntime=var2712, $r5=var3873, i1=var2913, $i3=var3142}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.String: int lastIndexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r4 := @parameter2: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	r3 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r2);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r5 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r4 != $r5 goto d0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: double toNumber(java.lang.Object)>(r4);	i1 = i0;	goto [?= $i3 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String,int)>(r3, i1)];	$i3 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String,int)>(r3, i1);	return $i3
;block_num 3