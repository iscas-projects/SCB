(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var982 0)
(declare-sort var440 0)
(declare-sort var1086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getElement/-115210893 (var1086) var440)
(declare-fun cast-from-var982-to-var1086 (var982) var1086)
(declare-fun String_valueOf/-333372740 (var440) String)
(declare-fun getCount/-2116348054 (var1086) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var982 var982)
(declare-const var3105 var982) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry 
(assert (not (= var3105 null-var982)))
(assert true)
(define-const var2362 var440 (getElement/-115210893 (cast-from-var982-to-var1086 var3105))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry: java.lang.Object getElement()>() 
(define-const var2263 String (String_valueOf/-333372740 var2362)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
(assert true)
(define-const var3630 Int (getCount/-2116348054 (cast-from-var982-to-var1086 var3105))) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry: int getCount()>() 
 ; Statement: if i0 != 1 goto $r3 = new java.lang.StringBuilder 
(assert (not (= var3630 1))) ; Cond: i0 != 1 
(define-const var2899 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2899)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2899!1 String)
(assert (= var2899!1 ""))
(assert true)
(define-const var63 String (append/672562846 var2899!1 var2263)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2899!2 String)
(assert (= var2899!2 (str.++ var2899!1 var2263)))
(assert true)
(define-const var3810 String (append/672562846 var63 " x ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" x ") 
(declare-const var63!1 String)
(assert (= var63!1 (str.++ var63 " x ")))
(assert true)
(define-const var204 String (append/-1001720160 var3810 var3630)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3810!1 String)
(assert (str.prefixof var3810 var3810!1))
(assert true)
(define-const var3649 String (toString/-2075883882 var204)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getElement/-115210893=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry], java.lang.Object), cast-from-var982-to-var1086=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry], com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry), String_valueOf/-333372740=([java.lang.Object], java.lang.String), getCount/-2116348054=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var982=com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry, var3105=r0, var440=java.lang.Object, var1086=com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry, var2362=$r1, var2263=r2, var3630=i0, var2899=$r3, var63=$r4, var3810=$r5, var204=$r6, var3649=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry=var982, r0=var3105, java.lang.Object=var440, com.google.javascript.jscomp.jarjar.com.google.common.collect.Multiset$Entry=var1086, $r1=var2362, r2=var2263, i0=var3630, $r3=var2899, $r4=var63, $r5=var3810, $r6=var204, $r7=var3649}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry: java.lang.Object getElement()>();	r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Multisets$AbstractEntry: int getCount()>();	if i0 != 1 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" x ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3