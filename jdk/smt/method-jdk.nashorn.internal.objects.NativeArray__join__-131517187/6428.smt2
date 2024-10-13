(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2971 0)
(declare-sort var3994 0)
(declare-sort var2523 0)
(declare-sort var1718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3994_arrayLikeIterator/1855531768 (var2971 Bool) var3994)
(declare-fun cast-from-var2523-to-var2971 (var2523) var2971)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var3994-to-Iterator (var3994) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2971 var2971)
(declare-const var1718-UNDEFINED var2523)
(declare-const var24 var2971) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var24 null-var2971)))
(declare-const var2715 var2971) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var2715 null-var2971)))
(define-const var1472 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1472)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1472!1 String)
(assert (= var1472!1 ""))
(define-const var3012 var3994 (var3994_arrayLikeIterator/1855531768 var24 (ite (= 1 1) true false))) ; Statement: r2 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator: jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator arrayLikeIterator(java.lang.Object,boolean)>(r1, 1) 
(define-const var3979 var2523 var1718-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 != $r4 goto $r10 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3) 
(assert (not (not (= var2715 (cast-from-var2523-to-var2971 var3979))))) ; Negate: Cond: r3 != $r4  
(define-const var1457 String ",") ; Statement: $r10 = "," 
 ; Statement: goto [?= r5 = $r10] 
(assert true) ; Non Conditional
(define-const var1924 String var1457) ; Statement: r5 = $r10 
(assert true) ; Non Conditional
(define-const var3004 Bool (Iterator_hasNext/-1669924200 (cast-from-var3994-to-Iterator var3012))) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3004 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3931 String (toString/-2075883882 var1472!1)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3994_arrayLikeIterator/1855531768=([java.lang.Object, boolean], jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator), cast-from-var2523-to-var2971=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var3994-to-Iterator=([jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2971=java.lang.Object, var24=r1, var2715=r3, var1472=$r0, var3994=jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator, var3012=r2, var2523=jdk.nashorn.internal.runtime.Undefined, var1718=jdk.nashorn.internal.runtime.ScriptRuntime, var3979=$r4, var1457=$r10, var1924=r5, var3004=$z0, var3931=$r6}
; {java.lang.Object=var2971, r1=var24, r3=var2715, $r0=var1472, jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator=var3994, r2=var3012, jdk.nashorn.internal.runtime.Undefined=var2523, jdk.nashorn.internal.runtime.ScriptRuntime=var1718, $r4=var3979, $r10=var1457, r5=var1924, $z0=var3004, $r6=var3931}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator: jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator arrayLikeIterator(java.lang.Object,boolean)>(r1, 1);	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 != $r4 goto $r10 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3);	$r10 = ",";	goto [?= r5 = $r10];	r5 = $r10;	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5