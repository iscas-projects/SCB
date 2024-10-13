(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2938 0)
(declare-sort var1455 0)
(declare-sort var1364 0)
(declare-sort var3660 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun comparator/491116613 (var2938) var1455)
(declare-fun append/-1031950772 (String var1364) String)
(declare-fun cast-from-var1455-to-var1364 (var1455) var1364)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerBoundType/491116613 (var2938) var3660)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun hasLowerBound/491116613 (var2938) Bool)
(declare-fun lowerEndpoint/491116613 (var2938) var1364)
(declare-fun hasUpperBound/491116613 (var2938) Bool)
(declare-fun upperEndpoint/491116613 (var2938) var1364)
(declare-fun upperBoundType/491116613 (var2938) var3660)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2938 var2938)
(declare-const var3660-CLOSED var3660)
(declare-const var2180 var2938) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange 
(assert (not (= var2180 null-var2938)))
(define-const var386 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var386)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var386!1 String)
(assert (= var386!1 ""))
(define-const var3358 var1455 (comparator/491116613 var2180)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator> 
(assert true)
(define-const var240 String (append/-1031950772 var386!1 (cast-from-var1455-to-var1364 var3358))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var386!2 String)
(assert (str.prefixof var386!1 var386!2))
(assert true)
(define-const var2799 String (append/672562846 var240 ":")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var240!1 String)
(assert (= var240!1 (str.++ var240 ":")))
(define-const var2184 var3660 (lowerBoundType/491116613 var2180)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType> 
(define-const var1838 var3660 var3660-CLOSED) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r5 != $r4 goto $c0 = 40 
(assert (not (not (= var2184 var1838)))) ; Negate: Cond: $r5 != $r4  
(define-const var796 Int 91) ; Statement: $c0 = 91 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3863 String (append/-1166366385 var2799 var796)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2799!1 String)
(assert (str.prefixof var2799 var2799!1))
(define-const var1699 Bool (hasLowerBound/491116613 var2180)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound> 
 ; Statement: if $z0 == 0 goto $r15 = "-\u221e" 
(assert (not (= (ite var1699 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3560 var1364 (lowerEndpoint/491116613 var2180)) ; Statement: $r15 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object lowerEndpoint> 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3495 String (append/-1031950772 var3863 var3560)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var3863!1 String)
(assert (str.prefixof var3863 var3863!1))
(assert true)
(define-const var2539 String (append/-1166366385 var3495 44)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var3495!1 String)
(assert (str.prefixof var3495 var3495!1))
(define-const var353 Bool (hasUpperBound/491116613 var2180)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound> 
 ; Statement: if $z1 == 0 goto $r16 = "\u221e" 
(assert (not (= (ite var353 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2245 var1364 (upperEndpoint/491116613 var2180)) ; Statement: $r16 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object upperEndpoint> 
 ; Statement: goto [?= $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2373 String (append/-1031950772 var2539 var2245)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var2539!1 String)
(assert (str.prefixof var2539 var2539!1))
(define-const var2779 var3660 (upperBoundType/491116613 var2180)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType> 
(define-const var1700 var3660 var3660-CLOSED) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED> 
 ; Statement: if $r11 != $r10 goto $c1 = 41 
(assert (not (= var2779 var1700))) ; Cond: $r11 != $r10 
(define-const var2092 Int 41) ; Statement: $c1 = 41 
(assert true) ; Non Conditional
(assert true)
(define-const var1243 String (append/-1166366385 var2373 var2092)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2373!1 String)
(assert (str.prefixof var2373 var2373!1))
(assert true)
(define-const var1101 String (toString/-2075883882 var1243)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), comparator/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1455-to-var1364=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), hasLowerBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), lowerEndpoint/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.lang.Object), hasUpperBound/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], boolean), upperEndpoint/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], java.lang.Object), upperBoundType/491116613=([com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange], com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2938=com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange, var2180=r1, var386=$r0, var1455=java.util.Comparator, var3358=$r2, var1364=java.lang.Object, var240=$r3, var2799=$r6, var3660=com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType, var2184=$r5, var1838=$r4, var796=$c0, var3863=$r7, var1699=$z0, var3560=$r15, var3495=$r8, var2539=$r9, var353=$z1, var2245=$r16, var2373=$r12, var2779=$r11, var1700=$r10, var2092=$c1, var1243=$r13, var1101=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange=var2938, r1=var2180, $r0=var386, java.util.Comparator=var1455, $r2=var3358, java.lang.Object=var1364, $r3=var240, $r6=var2799, com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType=var3660, $r5=var2184, $r4=var1838, $c0=var796, $r7=var3863, $z0=var1699, $r15=var3560, $r8=var3495, $r9=var2539, $z1=var353, $r16=var2245, $r12=var2373, $r11=var2779, $r10=var1700, $c1=var2092, $r13=var1243, $r14=var1101}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.util.Comparator comparator>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType lowerBoundType>;	$r4 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r5 != $r4 goto $c0 = 40;	$c0 = 91;	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasLowerBound>;	if $z0 == 0 goto $r15 = "-\u221e";	$r15 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object lowerEndpoint>;	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15)];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$z1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: boolean hasUpperBound>;	if $z1 == 0 goto $r16 = "\u221e";	$r16 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: java.lang.Object upperEndpoint>;	goto [?= $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16)];	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.GeneralRange: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType upperBoundType>;	$r10 = <com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType: com.google.javascript.jscomp.jarjar.com.google.common.collect.BoundType CLOSED>;	if $r11 != $r10 goto $c1 = 41;	$c1 = 41;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 9