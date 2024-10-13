(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1601 0)
(declare-sort var1916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1916_arrayLikeIterator/1855531768 (var1601 Bool) var1916)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var1916-to-Iterator (var1916) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1601 var1601)
(declare-const var1974 var1601) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1974 null-var1601)))
(define-const var144 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var144)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var144!1 String)
(assert (= var144!1 ""))
(define-const var1473 var1916 (var1916_arrayLikeIterator/1855531768 var1974 (ite (= 1 1) true false))) ; Statement: r2 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator: jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator arrayLikeIterator(java.lang.Object,boolean)>(r1, 1) 
(assert true) ; Non Conditional
(define-const var2179 Bool (Iterator_hasNext/-1669924200 (cast-from-var1916-to-Iterator var1473))) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2179 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2897 String (toString/-2075883882 var144!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1916_arrayLikeIterator/1855531768=([java.lang.Object, boolean], jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var1916-to-Iterator=([jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1601=java.lang.Object, var1974=r1, var144=$r0, var1916=jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator, var1473=r2, var2179=$z0, var2897=$r3}
; {java.lang.Object=var1601, r1=var1974, $r0=var144, jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator=var1916, r2=var1473, $z0=var2179, $r3=var2897}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = staticinvoke <jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator: jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator arrayLikeIterator(java.lang.Object,boolean)>(r1, 1);	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3