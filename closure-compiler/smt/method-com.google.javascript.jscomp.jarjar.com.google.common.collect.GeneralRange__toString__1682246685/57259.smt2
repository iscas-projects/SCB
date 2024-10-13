(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var250 0)
(declare-sort var2660 0)
(declare-sort var3735 0)
(declare-sort var3393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun comparator/491116613 (var250) var2660)
(declare-fun append/-1031950772 (String var3735) String)
(declare-fun cast-from-var2660-to-var3735 (var2660) var3735)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerBoundType/491116613 (var250) var3393)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasLowerBound/491116613 (var250) Bool)
(declare-fun cast-from-String-to-var3735 (String) var3735)
(declare-fun hasUpperBound/491116613 (var250) Bool)
(declare-fun upperEndpoint/491116613 (var250) var3735)
(declare-fun upperBoundType/491116613 (var250) var3393)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var250 var250)
(declare-const var3393-CLOSED var3393)
(declare-const var1232 var250) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange 
(assert (not (= var1232 null-var250)))
(define-const var3601 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3601)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3601!1 String)
(assert (= var3601!1 ""))
(define-const var2899 var2660 (comparator/491116613 var1232)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator> 
(assert true)
(define-const var3338 String (append/-1031950772 var3601!1 (cast-from-var2660-to-var3735 var2899))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3601!2 String)
(assert (str.prefixof var3601!1 var3601!2))
(assert true)
(define-const var2018 String (append/672562846 var3338 ":")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3338!1 String)
(assert (= var3338!1 (str.++ var3338 ":")))
(define-const var656 var3393 (lowerBoundType/491116613 var1232)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType> 
(define-const var3191 var3393 var3393-CLOSED) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r5 != $r4 goto $c0 = 40 
(assert (not (not (= var656 var3191)))) ; Negate: Cond: $r5 != $r4  
(define-const var832 Int 91) ; Statement: $c0 = 91 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2959 String (append/-1166366385 var2018 var832)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2018!1 String)
(assert (str.prefixof var2018 var2018!1))
(define-const var3433 Bool (hasLowerBound/491116613 var1232)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound> 
 ; Statement: if $z0 == 0 goto $r15 = "-\u221e" 
(assert (= (ite var3433 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2855 var3735 (cast-from-String-to-var3735 "-\u221e")) ; Statement: $r15 = "-\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var1560 String (append/-1031950772 var2959 var2855)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var2959!1 String)
(assert (str.prefixof var2959 var2959!1))
(assert true)
(define-const var1149 String (append/-1166366385 var1560 44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var1560!1 String)
(assert (str.prefixof var1560 var1560!1))
(define-const var2412 Bool (hasUpperBound/491116613 var1232)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound> 
 ; Statement: if $z1 == 0 goto $r16 = "\u221e" 
(assert (not (= (ite var2412 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3486 var3735 (upperEndpoint/491116613 var1232)) ; Statement: $r16 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object upperEndpoint> 
 ; Statement: goto [?= $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2943 String (append/-1031950772 var1149 var3486)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var1149!1 String)
(assert (str.prefixof var1149 var1149!1))
(define-const var1354 var3393 (upperBoundType/491116613 var1232)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType> 
(define-const var1178 var3393 var3393-CLOSED) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r11 != $r10 goto $c1 = 41 
(assert (not (not (= var1354 var1178)))) ; Negate: Cond: $r11 != $r10  
(define-const var2866 Int 93) ; Statement: $c1 = 93 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1885 String (append/-1166366385 var2943 var2866)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2943!1 String)
(assert (str.prefixof var2943 var2943!1))
(assert true)
(define-const var1230 String (toString/-2075883882 var1885)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), comparator/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2660-to-var3735=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasLowerBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), cast-from-String-to-var3735=([java.lang.String], java.lang.Object), hasUpperBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), upperEndpoint/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.lang.Object), upperBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var250=com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange, var1232=r1, var3601=$r0, var2660=java.util.Comparator, var2899=$r2, var3735=java.lang.Object, var3338=$r3, var2018=$r6, var3393=com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType, var656=$r5, var3191=$r4, var832=$c0, var2959=$r7, var3433=$z0, var2855=$r15, var1560=$r8, var1149=$r9, var2412=$z1, var3486=$r16, var2943=$r12, var1354=$r11, var1178=$r10, var2866=$c1, var1885=$r13, var1230=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange=var250, r1=var1232, $r0=var3601, java.util.Comparator=var2660, $r2=var2899, java.lang.Object=var3735, $r3=var3338, $r6=var2018, com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType=var3393, $r5=var656, $r4=var3191, $c0=var832, $r7=var2959, $z0=var3433, $r15=var2855, $r8=var1560, $r9=var1149, $z1=var2412, $r16=var3486, $r12=var2943, $r11=var1354, $r10=var1178, $c1=var2866, $r13=var1885, $r14=var1230}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r5 != $r4 goto $c0 = 40;	$c0 = 91;	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound>;	if $z0 == 0 goto $r15 = "-\u221e";	$r15 = "-\u221e";	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound>;	if $z1 == 0 goto $r16 = "\u221e";	$r16 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object upperEndpoint>;	goto [?= $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)];	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType>;	$r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r11 != $r10 goto $c1 = 41;	$c1 = 93;	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9