(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1106 0)
(declare-sort var2088 0)
(declare-sort var2780 0)
(declare-sort var395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun comparator/491116613 (var1106) var2088)
(declare-fun append/-1031950772 (String var2780) String)
(declare-fun cast-from-var2088-to-var2780 (var2088) var2780)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerBoundType/491116613 (var1106) var395)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasLowerBound/491116613 (var1106) Bool)
(declare-fun cast-from-String-to-var2780 (String) var2780)
(declare-fun hasUpperBound/491116613 (var1106) Bool)
(declare-fun upperEndpoint/491116613 (var1106) var2780)
(declare-fun upperBoundType/491116613 (var1106) var395)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1106 var1106)
(declare-const var395-CLOSED var395)
(declare-const var3887 var1106) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange 
(assert (not (= var3887 null-var1106)))
(define-const var1809 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1809)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1809!1 String)
(assert (= var1809!1 ""))
(define-const var3341 var2088 (comparator/491116613 var3887)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator> 
(assert true)
(define-const var2567 String (append/-1031950772 var1809!1 (cast-from-var2088-to-var2780 var3341))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1809!2 String)
(assert (str.prefixof var1809!1 var1809!2))
(assert true)
(define-const var2115 String (append/672562846 var2567 ":")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2567!1 String)
(assert (= var2567!1 (str.++ var2567 ":")))
(define-const var2934 var395 (lowerBoundType/491116613 var3887)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType> 
(define-const var3017 var395 var395-CLOSED) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r5 != $r4 goto $c0 = 40 
(assert (not (not (= var2934 var3017)))) ; Negate: Cond: $r5 != $r4  
(define-const var3260 Int 91) ; Statement: $c0 = 91 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1706 String (append/-1166366385 var2115 var3260)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2115!1 String)
(assert (str.prefixof var2115 var2115!1))
(define-const var3696 Bool (hasLowerBound/491116613 var3887)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound> 
 ; Statement: if $z0 == 0 goto $r15 = "-\u221e" 
(assert (= (ite var3696 1 0) 0)) ; Cond: $z0 == 0 
(define-const var585 var2780 (cast-from-String-to-var2780 "-\u221e")) ; Statement: $r15 = "-\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var757 String (append/-1031950772 var1706 var585)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1706!1 String)
(assert (str.prefixof var1706 var1706!1))
(assert true)
(define-const var718 String (append/-1166366385 var757 44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var757!1 String)
(assert (str.prefixof var757 var757!1))
(define-const var1174 Bool (hasUpperBound/491116613 var3887)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound> 
 ; Statement: if $z1 == 0 goto $r16 = "\u221e" 
(assert (not (= (ite var1174 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2444 var2780 (upperEndpoint/491116613 var3887)) ; Statement: $r16 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object upperEndpoint> 
 ; Statement: goto [?= $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1431 String (append/-1031950772 var718 var2444)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var718!1 String)
(assert (str.prefixof var718 var718!1))
(define-const var1474 var395 (upperBoundType/491116613 var3887)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType> 
(define-const var1894 var395 var395-CLOSED) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r11 != $r10 goto $c1 = 41 
(assert (not (= var1474 var1894))) ; Cond: $r11 != $r10 
(define-const var2388 Int 41) ; Statement: $c1 = 41 
(assert true) ; Non Conditional
(assert true)
(define-const var311 String (append/-1166366385 var1431 var2388)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var1431!1 String)
(assert (str.prefixof var1431 var1431!1))
(assert true)
(define-const var161 String (toString/-2075883882 var311)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), comparator/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2088-to-var2780=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasLowerBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), cast-from-String-to-var2780=([java.lang.String], java.lang.Object), hasUpperBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), upperEndpoint/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.lang.Object), upperBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1106=com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange, var3887=r1, var1809=$r0, var2088=java.util.Comparator, var3341=$r2, var2780=java.lang.Object, var2567=$r3, var2115=$r6, var395=com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType, var2934=$r5, var3017=$r4, var3260=$c0, var1706=$r7, var3696=$z0, var585=$r15, var757=$r8, var718=$r9, var1174=$z1, var2444=$r16, var1431=$r12, var1474=$r11, var1894=$r10, var2388=$c1, var311=$r13, var161=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange=var1106, r1=var3887, $r0=var1809, java.util.Comparator=var2088, $r2=var3341, java.lang.Object=var2780, $r3=var2567, $r6=var2115, com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType=var395, $r5=var2934, $r4=var3017, $c0=var3260, $r7=var1706, $z0=var3696, $r15=var585, $r8=var757, $r9=var718, $z1=var1174, $r16=var2444, $r12=var1431, $r11=var1474, $r10=var1894, $c1=var2388, $r13=var311, $r14=var161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r5 != $r4 goto $c0 = 40;	$c0 = 91;	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound>;	if $z0 == 0 goto $r15 = "-\u221e";	$r15 = "-\u221e";	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound>;	if $z1 == 0 goto $r16 = "\u221e";	$r16 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object upperEndpoint>;	goto [?= $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)];	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType>;	$r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r11 != $r10 goto $c1 = 41;	$c1 = 41;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9