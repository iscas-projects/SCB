(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1185 0)
(declare-sort var3008 0)
(declare-sort var610 0)
(declare-sort var1324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun comparator/491116613 (var1185) var3008)
(declare-fun append/-1031950772 (String var610) String)
(declare-fun cast-from-var3008-to-var610 (var3008) var610)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerBoundType/491116613 (var1185) var1324)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasLowerBound/491116613 (var1185) Bool)
(declare-fun cast-from-String-to-var610 (String) var610)
(declare-fun hasUpperBound/491116613 (var1185) Bool)
(declare-fun upperBoundType/491116613 (var1185) var1324)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1185 var1185)
(declare-const var1324-CLOSED var1324)
(declare-const var410 var1185) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange 
(assert (not (= var410 null-var1185)))
(define-const var1534 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1534)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1534!1 String)
(assert (= var1534!1 ""))
(define-const var3647 var3008 (comparator/491116613 var410)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator> 
(assert true)
(define-const var409 String (append/-1031950772 var1534!1 (cast-from-var3008-to-var610 var3647))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1534!2 String)
(assert (str.prefixof var1534!1 var1534!2))
(assert true)
(define-const var590 String (append/672562846 var409 ":")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var409!1 String)
(assert (= var409!1 (str.++ var409 ":")))
(define-const var739 var1324 (lowerBoundType/491116613 var410)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType> 
(define-const var2213 var1324 var1324-CLOSED) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r5 != $r4 goto $c0 = 40 
(assert (not (not (= var739 var2213)))) ; Negate: Cond: $r5 != $r4  
(define-const var1148 Int 91) ; Statement: $c0 = 91 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var906 String (append/-1166366385 var590 var1148)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var590!1 String)
(assert (str.prefixof var590 var590!1))
(define-const var488 Bool (hasLowerBound/491116613 var410)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound> 
 ; Statement: if $z0 == 0 goto $r15 = "-\u221e" 
(assert (= (ite var488 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3337 var610 (cast-from-String-to-var610 "-\u221e")) ; Statement: $r15 = "-\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var2265 String (append/-1031950772 var906 var3337)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var906!1 String)
(assert (str.prefixof var906 var906!1))
(assert true)
(define-const var1088 String (append/-1166366385 var2265 44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var2265!1 String)
(assert (str.prefixof var2265 var2265!1))
(define-const var627 Bool (hasUpperBound/491116613 var410)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound> 
 ; Statement: if $z1 == 0 goto $r16 = "\u221e" 
(assert (= (ite var627 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1994 var610 (cast-from-String-to-var610 "\u221e")) ; Statement: $r16 = "\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var2876 String (append/-1031950772 var1088 var1994)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var1088!1 String)
(assert (str.prefixof var1088 var1088!1))
(define-const var3759 var1324 (upperBoundType/491116613 var410)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType> 
(define-const var691 var1324 var1324-CLOSED) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r11 != $r10 goto $c1 = 41 
(assert (not (= var3759 var691))) ; Cond: $r11 != $r10 
(define-const var2710 Int 41) ; Statement: $c1 = 41 
(assert true) ; Non Conditional
(assert true)
(define-const var789 String (append/-1166366385 var2876 var2710)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2876!1 String)
(assert (str.prefixof var2876 var2876!1))
(assert true)
(define-const var2865 String (toString/-2075883882 var789)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), comparator/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3008-to-var610=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasLowerBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), cast-from-String-to-var610=([java.lang.String], java.lang.Object), hasUpperBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), upperBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1185=com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange, var410=r1, var1534=$r0, var3008=java.util.Comparator, var3647=$r2, var610=java.lang.Object, var409=$r3, var590=$r6, var1324=com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType, var739=$r5, var2213=$r4, var1148=$c0, var906=$r7, var488=$z0, var3337=$r15, var2265=$r8, var1088=$r9, var627=$z1, var1994=$r16, var2876=$r12, var3759=$r11, var691=$r10, var2710=$c1, var789=$r13, var2865=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange=var1185, r1=var410, $r0=var1534, java.util.Comparator=var3008, $r2=var3647, java.lang.Object=var610, $r3=var409, $r6=var590, com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType=var1324, $r5=var739, $r4=var2213, $c0=var1148, $r7=var906, $z0=var488, $r15=var3337, $r8=var2265, $r9=var1088, $z1=var627, $r16=var1994, $r12=var2876, $r11=var3759, $r10=var691, $c1=var2710, $r13=var789, $r14=var2865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r5 != $r4 goto $c0 = 40;	$c0 = 91;	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound>;	if $z0 == 0 goto $r15 = "-\u221e";	$r15 = "-\u221e";	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound>;	if $z1 == 0 goto $r16 = "\u221e";	$r16 = "\u221e";	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType>;	$r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r11 != $r10 goto $c1 = 41;	$c1 = 41;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9