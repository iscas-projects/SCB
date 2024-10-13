(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2203 0)
(declare-sort var3350 0)
(declare-sort var2940 0)
(declare-sort var2380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun comparator/491116613 (var2203) var3350)
(declare-fun append/-1031950772 (String var2940) String)
(declare-fun cast-from-var3350-to-var2940 (var3350) var2940)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerBoundType/491116613 (var2203) var2380)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasLowerBound/491116613 (var2203) Bool)
(declare-fun lowerEndpoint/491116613 (var2203) var2940)
(declare-fun hasUpperBound/491116613 (var2203) Bool)
(declare-fun upperEndpoint/491116613 (var2203) var2940)
(declare-fun upperBoundType/491116613 (var2203) var2380)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2203 var2203)
(declare-const var2380-CLOSED var2380)
(declare-const var3586 var2203) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange 
(assert (not (= var3586 null-var2203)))
(define-const var2061 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2061)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2061!1 String)
(assert (= var2061!1 ""))
(define-const var917 var3350 (comparator/491116613 var3586)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator> 
(assert true)
(define-const var2826 String (append/-1031950772 var2061!1 (cast-from-var3350-to-var2940 var917))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2061!2 String)
(assert (str.prefixof var2061!1 var2061!2))
(assert true)
(define-const var2845 String (append/672562846 var2826 ":")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2826!1 String)
(assert (= var2826!1 (str.++ var2826 ":")))
(define-const var1973 var2380 (lowerBoundType/491116613 var3586)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType> 
(define-const var2264 var2380 var2380-CLOSED) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r5 != $r4 goto $c0 = 40 
(assert (not (= var1973 var2264))) ; Cond: $r5 != $r4 
(define-const var12 Int 40) ; Statement: $c0 = 40 
(assert true) ; Non Conditional
(assert true)
(define-const var2823 String (append/-1166366385 var2845 var12)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2845!1 String)
(assert (str.prefixof var2845 var2845!1))
(define-const var956 Bool (hasLowerBound/491116613 var3586)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound> 
 ; Statement: if $z0 == 0 goto $r15 = "-\u221e" 
(assert (not (= (ite var956 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1989 var2940 (lowerEndpoint/491116613 var3586)) ; Statement: $r15 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object lowerEndpoint> 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1885 String (append/-1031950772 var2823 var1989)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var2823!1 String)
(assert (str.prefixof var2823 var2823!1))
(assert true)
(define-const var625 String (append/-1166366385 var1885 44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var1885!1 String)
(assert (str.prefixof var1885 var1885!1))
(define-const var1090 Bool (hasUpperBound/491116613 var3586)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound> 
 ; Statement: if $z1 == 0 goto $r16 = "\u221e" 
(assert (not (= (ite var1090 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var55 var2940 (upperEndpoint/491116613 var3586)) ; Statement: $r16 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object upperEndpoint> 
 ; Statement: goto [?= $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2958 String (append/-1031950772 var625 var55)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var625!1 String)
(assert (str.prefixof var625 var625!1))
(define-const var719 var2380 (upperBoundType/491116613 var3586)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType> 
(define-const var2808 var2380 var2380-CLOSED) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r11 != $r10 goto $c1 = 41 
(assert (not (not (= var719 var2808)))) ; Negate: Cond: $r11 != $r10  
(define-const var1531 Int 93) ; Statement: $c1 = 93 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)] 
(assert true) ; Non Conditional
(assert true)
(define-const var40 String (append/-1166366385 var2958 var1531)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2958!1 String)
(assert (str.prefixof var2958 var2958!1))
(assert true)
(define-const var578 String (toString/-2075883882 var40)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), comparator/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3350-to-var2940=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasLowerBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), lowerEndpoint/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.lang.Object), hasUpperBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), upperEndpoint/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.lang.Object), upperBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2203=com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange, var3586=r1, var2061=$r0, var3350=java.util.Comparator, var917=$r2, var2940=java.lang.Object, var2826=$r3, var2845=$r6, var2380=com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType, var1973=$r5, var2264=$r4, var12=$c0, var2823=$r7, var956=$z0, var1989=$r15, var1885=$r8, var625=$r9, var1090=$z1, var55=$r16, var2958=$r12, var719=$r11, var2808=$r10, var1531=$c1, var40=$r13, var578=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange=var2203, r1=var3586, $r0=var2061, java.util.Comparator=var3350, $r2=var917, java.lang.Object=var2940, $r3=var2826, $r6=var2845, com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType=var2380, $r5=var1973, $r4=var2264, $c0=var12, $r7=var2823, $z0=var956, $r15=var1989, $r8=var1885, $r9=var625, $z1=var1090, $r16=var55, $r12=var2958, $r11=var719, $r10=var2808, $c1=var1531, $r13=var40, $r14=var578}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r5 != $r4 goto $c0 = 40;	$c0 = 40;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound>;	if $z0 == 0 goto $r15 = "-\u221e";	$r15 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object lowerEndpoint>;	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound>;	if $z1 == 0 goto $r16 = "\u221e";	$r16 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object upperEndpoint>;	goto [?= $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)];	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType>;	$r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r11 != $r10 goto $c1 = 41;	$c1 = 93;	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9