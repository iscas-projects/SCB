(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3619 0)
(declare-sort var892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3619!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3619_getBestComparator/239995290 () var892)
(define-const var1274 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1274)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1274!1 String)
(assert (= var1274!1 ""))
(define-const var1712 ClassObject var3619!class) ; Statement: $r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;" 
(assert true)
(define-const var1071 String (getName/-1958580599 var1712)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2156 String (append/672562846 var1274!1 var1071)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1274!2 String)
(assert (= var1274!2 (str.++ var1274!1 var1071)))
(assert true)
(define-const var834 String (append/672562846 var2156 "$UnsafeComparator")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$UnsafeComparator") 
(declare-const var2156!1 String)
(assert (= var2156!1 (str.++ var2156 "$UnsafeComparator")))
(assert true)
(define-const var1846 String (toString/-2075883882 var834)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2457 String var1846) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.lang.String UNSAFE_COMPARATOR_NAME> = $r5 
(define-const var1527 var892 var3619_getBestComparator/239995290) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.util.Comparator getBestComparator()>() 
(define-const var2975 var892 var1527) ; Statement: <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.util.Comparator BEST_COMPARATOR> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3619_getBestComparator/239995290=([], java.util.Comparator)}
; {var1274=$r0, var3619=com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder, var1712=$r1, var1071=$r2, var2156=$r3, var834=$r4, var1846=$r5, var2457=<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.lang.String UNSAFE_COMPARATOR_NAME>, var892=java.util.Comparator, var1527=$r6, var2975=<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.util.Comparator BEST_COMPARATOR>}
; {$r0=var1274, com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder=var3619, $r1=var1712, $r2=var1071, $r3=var2156, $r4=var834, $r5=var1846, <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.lang.String UNSAFE_COMPARATOR_NAME>=var2457, java.util.Comparator=var892, $r6=var1527, <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.util.Comparator BEST_COMPARATOR>=var2975}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;";	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$UnsafeComparator");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.lang.String UNSAFE_COMPARATOR_NAME> = $r5;	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.util.Comparator getBestComparator()>();	<com.google.javascript.jscomp.jarjar.com.google.common.primitives.UnsignedBytes$LexicographicalComparatorHolder: java.util.Comparator BEST_COMPARATOR> = $r6;	return
;block_num 1