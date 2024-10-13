(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var487 0)
(declare-sort var1123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLeft/1053147166 (var487) var1123)
(declare-fun append/-1031950772 (String var1123) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getRight/-570391911 (var487) var1123)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var487 var487)
(declare-const var2723 var487) ; Statement: r1 := @this: org.apache.commons.lang3.tuple.Pair 
(assert (not (= var2723 null-var487)))
(define-const var2909 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2909)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2909!1 String)
(assert (= var2909!1 ""))
(assert true)
(define-const var375 String (append/672562846 var2909!1 "(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2909!2 String)
(assert (= var2909!2 (str.++ var2909!1 "(")))
(assert true)
(define-const var1446 var1123 (getLeft/1053147166 var2723)) ; Statement: $r2 = virtualinvoke r1.<org.apache.commons.lang3.tuple.Pair: java.lang.Object getLeft()>() 
(assert true)
(define-const var2452 String (append/-1031950772 var375 var1446)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var375!1 String)
(assert (str.prefixof var375 var375!1))
(assert true)
(define-const var1756 String (append/-1166366385 var2452 44)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var2452!1 String)
(assert (str.prefixof var2452 var2452!1))
(assert true)
(define-const var2407 var1123 (getRight/-570391911 var2723)) ; Statement: $r5 = virtualinvoke r1.<org.apache.commons.lang3.tuple.Pair: java.lang.Object getRight()>() 
(assert true)
(define-const var444 String (append/-1031950772 var1756 var2407)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1756!1 String)
(assert (str.prefixof var1756 var1756!1))
(assert true)
(define-const var35 String (append/-1166366385 var444 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var444!1 String)
(assert (str.prefixof var444 var444!1))
(assert true)
(define-const var1462 String (toString/-2075883882 var35)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLeft/1053147166=([org.apache.commons.lang3.tuple.Pair], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getRight/-570391911=([org.apache.commons.lang3.tuple.Pair], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var487=org.apache.commons.lang3.tuple.Pair, var2723=r1, var2909=$r0, var375=$r3, var1123=java.lang.Object, var1446=$r2, var2452=$r4, var1756=$r6, var2407=$r5, var444=$r7, var35=$r8, var1462=$r9}
; {org.apache.commons.lang3.tuple.Pair=var487, r1=var2723, $r0=var2909, $r3=var375, java.lang.Object=var1123, $r2=var1446, $r4=var2452, $r6=var1756, $r5=var2407, $r7=var444, $r8=var35, $r9=var1462}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.tuple.Pair;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r2 = virtualinvoke r1.<org.apache.commons.lang3.tuple.Pair: java.lang.Object getLeft()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$r5 = virtualinvoke r1.<org.apache.commons.lang3.tuple.Pair: java.lang.Object getRight()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1