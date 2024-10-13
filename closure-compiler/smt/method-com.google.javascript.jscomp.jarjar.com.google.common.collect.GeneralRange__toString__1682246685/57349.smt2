(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1968 0)
(declare-sort var1185 0)
(declare-sort var3266 0)
(declare-sort var393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun comparator/491116613 (var1968) var1185)
(declare-fun append/-1031950772 (String var3266) String)
(declare-fun cast-from-var1185-to-var3266 (var1185) var3266)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerBoundType/491116613 (var1968) var393)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasLowerBound/491116613 (var1968) Bool)
(declare-fun cast-from-String-to-var3266 (String) var3266)
(declare-fun hasUpperBound/491116613 (var1968) Bool)
(declare-fun upperBoundType/491116613 (var1968) var393)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1968 var1968)
(declare-const var393-CLOSED var393)
(declare-const var2351 var1968) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange 
(assert (not (= var2351 null-var1968)))
(define-const var3674 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3674)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3674!1 String)
(assert (= var3674!1 ""))
(define-const var3991 var1185 (comparator/491116613 var2351)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator> 
(assert true)
(define-const var1844 String (append/-1031950772 var3674!1 (cast-from-var1185-to-var3266 var3991))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3674!2 String)
(assert (str.prefixof var3674!1 var3674!2))
(assert true)
(define-const var250 String (append/672562846 var1844 ":")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1844!1 String)
(assert (= var1844!1 (str.++ var1844 ":")))
(define-const var2657 var393 (lowerBoundType/491116613 var2351)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType> 
(define-const var3365 var393 var393-CLOSED) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r5 != $r4 goto $c0 = 40 
(assert (not (= var2657 var3365))) ; Cond: $r5 != $r4 
(define-const var3714 Int 40) ; Statement: $c0 = 40 
(assert true) ; Non Conditional
(assert true)
(define-const var1088 String (append/-1166366385 var250 var3714)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var250!1 String)
(assert (str.prefixof var250 var250!1))
(define-const var1091 Bool (hasLowerBound/491116613 var2351)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound> 
 ; Statement: if $z0 == 0 goto $r15 = "-\u221e" 
(assert (= (ite var1091 1 0) 0)) ; Cond: $z0 == 0 
(define-const var443 var3266 (cast-from-String-to-var3266 "-\u221e")) ; Statement: $r15 = "-\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var1453 String (append/-1031950772 var1088 var443)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1088!1 String)
(assert (str.prefixof var1088 var1088!1))
(assert true)
(define-const var2865 String (append/-1166366385 var1453 44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var1453!1 String)
(assert (str.prefixof var1453 var1453!1))
(define-const var341 Bool (hasUpperBound/491116613 var2351)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound> 
 ; Statement: if $z1 == 0 goto $r16 = "\u221e" 
(assert (= (ite var341 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2366 var3266 (cast-from-String-to-var3266 "\u221e")) ; Statement: $r16 = "\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var859 String (append/-1031950772 var2865 var2366)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var2865!1 String)
(assert (str.prefixof var2865 var2865!1))
(define-const var2822 var393 (upperBoundType/491116613 var2351)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType> 
(define-const var2324 var393 var393-CLOSED) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r11 != $r10 goto $c1 = 41 
(assert (not (not (= var2822 var2324)))) ; Negate: Cond: $r11 != $r10  
(define-const var3931 Int 93) ; Statement: $c1 = 93 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)] 
(assert true) ; Non Conditional
(assert true)
(define-const var322 String (append/-1166366385 var859 var3931)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var859!1 String)
(assert (str.prefixof var859 var859!1))
(assert true)
(define-const var941 String (toString/-2075883882 var322)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), comparator/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1185-to-var3266=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasLowerBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), cast-from-String-to-var3266=([java.lang.String], java.lang.Object), hasUpperBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), upperBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1968=com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange, var2351=r1, var3674=$r0, var1185=java.util.Comparator, var3991=$r2, var3266=java.lang.Object, var1844=$r3, var250=$r6, var393=com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType, var2657=$r5, var3365=$r4, var3714=$c0, var1088=$r7, var1091=$z0, var443=$r15, var1453=$r8, var2865=$r9, var341=$z1, var2366=$r16, var859=$r12, var2822=$r11, var2324=$r10, var3931=$c1, var322=$r13, var941=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange=var1968, r1=var2351, $r0=var3674, java.util.Comparator=var1185, $r2=var3991, java.lang.Object=var3266, $r3=var1844, $r6=var250, com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType=var393, $r5=var2657, $r4=var3365, $c0=var3714, $r7=var1088, $z0=var1091, $r15=var443, $r8=var1453, $r9=var2865, $z1=var341, $r16=var2366, $r12=var859, $r11=var2822, $r10=var2324, $c1=var3931, $r13=var322, $r14=var941}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r5 != $r4 goto $c0 = 40;	$c0 = 40;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound>;	if $z0 == 0 goto $r15 = "-\u221e";	$r15 = "-\u221e";	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound>;	if $z1 == 0 goto $r16 = "\u221e";	$r16 = "\u221e";	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType>;	$r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r11 != $r10 goto $c1 = 41;	$c1 = 93;	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9