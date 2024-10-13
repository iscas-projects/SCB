(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2026 0)
(declare-sort var1718 0)
(declare-sort var678 0)
(declare-sort var2175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun comparator/491116613 (var2026) var1718)
(declare-fun append/-1031950772 (String var678) String)
(declare-fun cast-from-var1718-to-var678 (var1718) var678)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerBoundType/491116613 (var2026) var2175)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasLowerBound/491116613 (var2026) Bool)
(declare-fun cast-from-String-to-var678 (String) var678)
(declare-fun hasUpperBound/491116613 (var2026) Bool)
(declare-fun upperBoundType/491116613 (var2026) var2175)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2026 var2026)
(declare-const var2175-CLOSED var2175)
(declare-const var2032 var2026) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange 
(assert (not (= var2032 null-var2026)))
(define-const var2540 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2540)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2540!1 String)
(assert (= var2540!1 ""))
(define-const var962 var1718 (comparator/491116613 var2032)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator> 
(assert true)
(define-const var1167 String (append/-1031950772 var2540!1 (cast-from-var1718-to-var678 var962))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2540!2 String)
(assert (str.prefixof var2540!1 var2540!2))
(assert true)
(define-const var3351 String (append/672562846 var1167 ":")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1167!1 String)
(assert (= var1167!1 (str.++ var1167 ":")))
(define-const var985 var2175 (lowerBoundType/491116613 var2032)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType> 
(define-const var3123 var2175 var2175-CLOSED) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r5 != $r4 goto $c0 = 40 
(assert (not (not (= var985 var3123)))) ; Negate: Cond: $r5 != $r4  
(define-const var3684 Int 91) ; Statement: $c0 = 91 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2577 String (append/-1166366385 var3351 var3684)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3351!1 String)
(assert (str.prefixof var3351 var3351!1))
(define-const var1543 Bool (hasLowerBound/491116613 var2032)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound> 
 ; Statement: if $z0 == 0 goto $r15 = "-\u221e" 
(assert (= (ite var1543 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3550 var678 (cast-from-String-to-var678 "-\u221e")) ; Statement: $r15 = "-\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var2270 String (append/-1031950772 var2577 var3550)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var2577!1 String)
(assert (str.prefixof var2577 var2577!1))
(assert true)
(define-const var3998 String (append/-1166366385 var2270 44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var2270!1 String)
(assert (str.prefixof var2270 var2270!1))
(define-const var498 Bool (hasUpperBound/491116613 var2032)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound> 
 ; Statement: if $z1 == 0 goto $r16 = "\u221e" 
(assert (= (ite var498 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2600 var678 (cast-from-String-to-var678 "\u221e")) ; Statement: $r16 = "\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var3337 String (append/-1031950772 var3998 var2600)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var3998!1 String)
(assert (str.prefixof var3998 var3998!1))
(define-const var958 var2175 (upperBoundType/491116613 var2032)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType> 
(define-const var579 var2175 var2175-CLOSED) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r11 != $r10 goto $c1 = 41 
(assert (not (not (= var958 var579)))) ; Negate: Cond: $r11 != $r10  
(define-const var2942 Int 93) ; Statement: $c1 = 93 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1872 String (append/-1166366385 var3337 var2942)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var3337!1 String)
(assert (str.prefixof var3337 var3337!1))
(assert true)
(define-const var3545 String (toString/-2075883882 var1872)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), comparator/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1718-to-var678=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasLowerBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), cast-from-String-to-var678=([java.lang.String], java.lang.Object), hasUpperBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), upperBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2026=com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange, var2032=r1, var2540=$r0, var1718=java.util.Comparator, var962=$r2, var678=java.lang.Object, var1167=$r3, var3351=$r6, var2175=com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType, var985=$r5, var3123=$r4, var3684=$c0, var2577=$r7, var1543=$z0, var3550=$r15, var2270=$r8, var3998=$r9, var498=$z1, var2600=$r16, var3337=$r12, var958=$r11, var579=$r10, var2942=$c1, var1872=$r13, var3545=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange=var2026, r1=var2032, $r0=var2540, java.util.Comparator=var1718, $r2=var962, java.lang.Object=var678, $r3=var1167, $r6=var3351, com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType=var2175, $r5=var985, $r4=var3123, $c0=var3684, $r7=var2577, $z0=var1543, $r15=var3550, $r8=var2270, $r9=var3998, $z1=var498, $r16=var2600, $r12=var3337, $r11=var958, $r10=var579, $c1=var2942, $r13=var1872, $r14=var3545}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r5 != $r4 goto $c0 = 40;	$c0 = 91;	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound>;	if $z0 == 0 goto $r15 = "-\u221e";	$r15 = "-\u221e";	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound>;	if $z1 == 0 goto $r16 = "\u221e";	$r16 = "\u221e";	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType>;	$r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r11 != $r10 goto $c1 = 41;	$c1 = 93;	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9