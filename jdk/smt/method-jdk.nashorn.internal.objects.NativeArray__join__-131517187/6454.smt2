(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1439 0)
(declare-sort var1849 0)
(declare-sort var864 0)
(declare-sort var3494 0)
(declare-sort var2533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1849_arrayLikeIterator/1855531768 (var1439 Bool) var1849)
(declare-fun cast-from-var864-to-var1439 (var864) var1439)
(declare-fun var2533_toString/-1831155339 (var1439) String)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var1849-to-Iterator (var1849) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1439 var1439)
(declare-const var3494-UNDEFINED var864)
(declare-const var1196 var1439) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1196 null-var1439)))
(declare-const var1268 var1439) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1268 null-var1439)))
(define-const var1665 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1665)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1665!1 String)
(assert (= var1665!1 ""))
(define-const var3538 var1849 (var1849_arrayLikeIterator/1855531768 var1196 (ite (= 1 1) true false))) ; Statement: r2 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator: jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator arrayLikeIterator(java.lang.Object,boolean)>(r1, 1) 
(define-const var218 var864 var3494-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 != $r4 goto $r10 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3) 
(assert (not (= var1268 (cast-from-var864-to-var1439 var218)))) ; Cond: r3 != $r4 
(define-const var1625 String (var2533_toString/-1831155339 var1268)) ; Statement: $r10 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3) 
(assert true) ; Non Conditional
(define-const var1580 String var1625) ; Statement: r5 = $r10 
(assert true) ; Non Conditional
(define-const var2849 Bool (Iterator_hasNext/-1669924200 (cast-from-var1849-to-Iterator var3538))) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2849 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2514 String (toString/-2075883882 var1665!1)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1849_arrayLikeIterator/1855531768=([java.lang.Object, boolean], jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator), cast-from-var864-to-var1439=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var2533_toString/-1831155339=([java.lang.Object], java.lang.String), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var1849-to-Iterator=([jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1439=java.lang.Object, var1196=r1, var1268=r3, var1665=$r0, var1849=jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator, var3538=r2, var864=jdk.nashorn.internal.runtime.Undefined, var3494=jdk.nashorn.internal.runtime.ScriptRuntime, var218=$r4, var2533=jdk.nashorn.internal.runtime.JSType, var1625=$r10, var1580=r5, var2849=$z0, var2514=$r6}
; {java.lang.Object=var1439, r1=var1196, r3=var1268, $r0=var1665, jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator=var1849, r2=var3538, jdk.nashorn.internal.runtime.Undefined=var864, jdk.nashorn.internal.runtime.ScriptRuntime=var3494, $r4=var218, jdk.nashorn.internal.runtime.JSType=var2533, $r10=var1625, r5=var1580, $z0=var2849, $r6=var2514}
;seq <java.lang.StringBuilder: void <init>()>;	<jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator: jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator arrayLikeIterator(java.lang.Object,boolean)>(r1, 1);	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 != $r4 goto $r10 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3);	$r10 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r3);	r5 = $r10;	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5