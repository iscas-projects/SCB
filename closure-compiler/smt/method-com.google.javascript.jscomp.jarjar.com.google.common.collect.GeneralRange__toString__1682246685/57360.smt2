(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var58 0)
(declare-sort var2358 0)
(declare-sort var564 0)
(declare-sort var1221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun comparator/491116613 (var58) var2358)
(declare-fun append/-1031950772 (String var564) String)
(declare-fun cast-from-var2358-to-var564 (var2358) var564)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerBoundType/491116613 (var58) var1221)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasLowerBound/491116613 (var58) Bool)
(declare-fun cast-from-String-to-var564 (String) var564)
(declare-fun hasUpperBound/491116613 (var58) Bool)
(declare-fun upperBoundType/491116613 (var58) var1221)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var58 var58)
(declare-const var1221-CLOSED var1221)
(declare-const var2971 var58) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange 
(assert (not (= var2971 null-var58)))
(define-const var1378 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1378)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1378!1 String)
(assert (= var1378!1 ""))
(define-const var165 var2358 (comparator/491116613 var2971)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator> 
(assert true)
(define-const var927 String (append/-1031950772 var1378!1 (cast-from-var2358-to-var564 var165))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1378!2 String)
(assert (str.prefixof var1378!1 var1378!2))
(assert true)
(define-const var3687 String (append/672562846 var927 ":")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var927!1 String)
(assert (= var927!1 (str.++ var927 ":")))
(define-const var3351 var1221 (lowerBoundType/491116613 var2971)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType> 
(define-const var206 var1221 var1221-CLOSED) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r5 != $r4 goto $c0 = 40 
(assert (not (= var3351 var206))) ; Cond: $r5 != $r4 
(define-const var2712 Int 40) ; Statement: $c0 = 40 
(assert true) ; Non Conditional
(assert true)
(define-const var3065 String (append/-1166366385 var3687 var2712)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3687!1 String)
(assert (str.prefixof var3687 var3687!1))
(define-const var425 Bool (hasLowerBound/491116613 var2971)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound> 
 ; Statement: if $z0 == 0 goto $r15 = "-\u221e" 
(assert (= (ite var425 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2616 var564 (cast-from-String-to-var564 "-\u221e")) ; Statement: $r15 = "-\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var2824 String (append/-1031950772 var3065 var2616)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var3065!1 String)
(assert (str.prefixof var3065 var3065!1))
(assert true)
(define-const var3165 String (append/-1166366385 var2824 44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var2824!1 String)
(assert (str.prefixof var2824 var2824!1))
(define-const var3370 Bool (hasUpperBound/491116613 var2971)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound> 
 ; Statement: if $z1 == 0 goto $r16 = "\u221e" 
(assert (= (ite var3370 1 0) 0)) ; Cond: $z1 == 0 
(define-const var20 var564 (cast-from-String-to-var564 "\u221e")) ; Statement: $r16 = "\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var755 String (append/-1031950772 var3165 var20)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var3165!1 String)
(assert (str.prefixof var3165 var3165!1))
(define-const var3247 var1221 (upperBoundType/491116613 var2971)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType> 
(define-const var1282 var1221 var1221-CLOSED) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r11 != $r10 goto $c1 = 41 
(assert (not (= var3247 var1282))) ; Cond: $r11 != $r10 
(define-const var2828 Int 41) ; Statement: $c1 = 41 
(assert true) ; Non Conditional
(assert true)
(define-const var506 String (append/-1166366385 var755 var2828)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var755!1 String)
(assert (str.prefixof var755 var755!1))
(assert true)
(define-const var2588 String (toString/-2075883882 var506)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), comparator/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2358-to-var564=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasLowerBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), cast-from-String-to-var564=([java.lang.String], java.lang.Object), hasUpperBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), upperBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var58=com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange, var2971=r1, var1378=$r0, var2358=java.util.Comparator, var165=$r2, var564=java.lang.Object, var927=$r3, var3687=$r6, var1221=com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType, var3351=$r5, var206=$r4, var2712=$c0, var3065=$r7, var425=$z0, var2616=$r15, var2824=$r8, var3165=$r9, var3370=$z1, var20=$r16, var755=$r12, var3247=$r11, var1282=$r10, var2828=$c1, var506=$r13, var2588=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange=var58, r1=var2971, $r0=var1378, java.util.Comparator=var2358, $r2=var165, java.lang.Object=var564, $r3=var927, $r6=var3687, com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType=var1221, $r5=var3351, $r4=var206, $c0=var2712, $r7=var3065, $z0=var425, $r15=var2616, $r8=var2824, $r9=var3165, $z1=var3370, $r16=var20, $r12=var755, $r11=var3247, $r10=var1282, $c1=var2828, $r13=var506, $r14=var2588}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r5 != $r4 goto $c0 = 40;	$c0 = 40;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound>;	if $z0 == 0 goto $r15 = "-\u221e";	$r15 = "-\u221e";	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound>;	if $z1 == 0 goto $r16 = "\u221e";	$r16 = "\u221e";	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType>;	$r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r11 != $r10 goto $c1 = 41;	$c1 = 41;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9