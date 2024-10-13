(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2814 0)
(declare-sort var1882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1882_toString/-1831155339 (var2814) String)
(declare-fun var1882_trimLeft/-1223174710 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2814 var2814)
(declare-const var3456 var2814) ; Statement: r7 := @parameter0: java.lang.Object 
(assert (not (= var3456 null-var2814)))
(declare-const var3775 var2814) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3775 null-var2814)))
(define-const var1909 String (var1882_toString/-1831155339 var3775)) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0) 
(define-const var3996 String (var1882_trimLeft/-1223174710 var1909)) ; Statement: r2 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String trimLeft(java.lang.String)>($r1) 
(assert true)
(define-const var3285 Int (length/-134980193 var3996)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto z2 = 0 
(assert (not (not (= var3285 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return #NaN 
(check-sat)
(get-model)
(get-unsat-core)
; {var1882_toString/-1831155339=([java.lang.Object], java.lang.String), var1882_trimLeft/-1223174710=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2814=java.lang.Object, var3456=r7, var3775=r0, var1882=jdk.nashorn.internal.runtime.JSType, var1909=$r1, var3996=r2, var3285=i0}
; {java.lang.Object=var2814, r7=var3456, r0=var3775, jdk.nashorn.internal.runtime.JSType=var1882, $r1=var1909, r2=var3996, i0=var3285}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r7 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	$r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0);	r2 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String trimLeft(java.lang.String)>($r1);	i0 = virtualinvoke r2.<java.lang.String: int length()>();	if i0 != 0 goto z2 = 0;	return #NaN
;block_num 2