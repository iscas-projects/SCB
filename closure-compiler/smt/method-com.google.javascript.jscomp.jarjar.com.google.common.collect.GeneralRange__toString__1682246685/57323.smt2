(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1057 0)
(declare-sort var575 0)
(declare-sort var3164 0)
(declare-sort var3863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun comparator/491116613 (var1057) var575)
(declare-fun append/-1031950772 (String var3164) String)
(declare-fun cast-from-var575-to-var3164 (var575) var3164)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerBoundType/491116613 (var1057) var3863)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasLowerBound/491116613 (var1057) Bool)
(declare-fun lowerEndpoint/491116613 (var1057) var3164)
(declare-fun hasUpperBound/491116613 (var1057) Bool)
(declare-fun cast-from-String-to-var3164 (String) var3164)
(declare-fun upperBoundType/491116613 (var1057) var3863)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1057 var1057)
(declare-const var3863-CLOSED var3863)
(declare-const var405 var1057) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange 
(assert (not (= var405 null-var1057)))
(define-const var2824 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2824)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2824!1 String)
(assert (= var2824!1 ""))
(define-const var2925 var575 (comparator/491116613 var405)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator> 
(assert true)
(define-const var3418 String (append/-1031950772 var2824!1 (cast-from-var575-to-var3164 var2925))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2824!2 String)
(assert (str.prefixof var2824!1 var2824!2))
(assert true)
(define-const var2907 String (append/672562846 var3418 ":")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3418!1 String)
(assert (= var3418!1 (str.++ var3418 ":")))
(define-const var257 var3863 (lowerBoundType/491116613 var405)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType> 
(define-const var3703 var3863 var3863-CLOSED) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r5 != $r4 goto $c0 = 40 
(assert (not (= var257 var3703))) ; Cond: $r5 != $r4 
(define-const var2892 Int 40) ; Statement: $c0 = 40 
(assert true) ; Non Conditional
(assert true)
(define-const var1816 String (append/-1166366385 var2907 var2892)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2907!1 String)
(assert (str.prefixof var2907 var2907!1))
(define-const var3460 Bool (hasLowerBound/491116613 var405)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound> 
 ; Statement: if $z0 == 0 goto $r15 = "-\u221e" 
(assert (not (= (ite var3460 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3909 var3164 (lowerEndpoint/491116613 var405)) ; Statement: $r15 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object lowerEndpoint> 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3124 String (append/-1031950772 var1816 var3909)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var1816!1 String)
(assert (str.prefixof var1816 var1816!1))
(assert true)
(define-const var3119 String (append/-1166366385 var3124 44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var3124!1 String)
(assert (str.prefixof var3124 var3124!1))
(define-const var1596 Bool (hasUpperBound/491116613 var405)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound> 
 ; Statement: if $z1 == 0 goto $r16 = "\u221e" 
(assert (= (ite var1596 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2789 var3164 (cast-from-String-to-var3164 "\u221e")) ; Statement: $r16 = "\u221e" 
(assert true) ; Non Conditional
(assert true)
(define-const var1116 String (append/-1031950772 var3119 var2789)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var3119!1 String)
(assert (str.prefixof var3119 var3119!1))
(define-const var17 var3863 (upperBoundType/491116613 var405)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType> 
(define-const var2242 var3863 var3863-CLOSED) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r11 != $r10 goto $c1 = 41 
(assert (not (= var17 var2242))) ; Cond: $r11 != $r10 
(define-const var3605 Int 41) ; Statement: $c1 = 41 
(assert true) ; Non Conditional
(assert true)
(define-const var631 String (append/-1166366385 var1116 var3605)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var1116!1 String)
(assert (str.prefixof var1116 var1116!1))
(assert true)
(define-const var3678 String (toString/-2075883882 var631)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), comparator/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var575-to-var3164=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasLowerBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), lowerEndpoint/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.lang.Object), hasUpperBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), cast-from-String-to-var3164=([java.lang.String], java.lang.Object), upperBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1057=com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange, var405=r1, var2824=$r0, var575=java.util.Comparator, var2925=$r2, var3164=java.lang.Object, var3418=$r3, var2907=$r6, var3863=com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType, var257=$r5, var3703=$r4, var2892=$c0, var1816=$r7, var3460=$z0, var3909=$r15, var3124=$r8, var3119=$r9, var1596=$z1, var2789=$r16, var1116=$r12, var17=$r11, var2242=$r10, var3605=$c1, var631=$r13, var3678=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange=var1057, r1=var405, $r0=var2824, java.util.Comparator=var575, $r2=var2925, java.lang.Object=var3164, $r3=var3418, $r6=var2907, com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType=var3863, $r5=var257, $r4=var3703, $c0=var2892, $r7=var1816, $z0=var3460, $r15=var3909, $r8=var3124, $r9=var3119, $z1=var1596, $r16=var2789, $r12=var1116, $r11=var17, $r10=var2242, $c1=var3605, $r13=var631, $r14=var3678}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r5 != $r4 goto $c0 = 40;	$c0 = 40;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound>;	if $z0 == 0 goto $r15 = "-\u221e";	$r15 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object lowerEndpoint>;	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound>;	if $z1 == 0 goto $r16 = "\u221e";	$r16 = "\u221e";	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType>;	$r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r11 != $r10 goto $c1 = 41;	$c1 = 41;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9