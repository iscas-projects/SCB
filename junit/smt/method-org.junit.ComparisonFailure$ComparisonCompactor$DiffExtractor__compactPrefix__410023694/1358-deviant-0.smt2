(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3271 0)
(declare-sort var24 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sharedPrefix/-1697221909 (var3271) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun this$0/-1697221909 (var3271) var24)
(declare-fun var24_access$500/-1055696995 (var24) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3271 var3271)
(declare-const var2851 var3271) ; Statement: r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor 
(assert (not (= var2851 null-var3271)))
(define-const var3541 String (sharedPrefix/-1697221909 var2851)) ; Statement: $r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix> 
(assert true)
(define-const var2109 Int (length/-134980193 var3541)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2291 var24 (this$0/-1697221909 var2851)) ; Statement: $r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0> 
(define-const var2925 Int (var24_access$500/-1055696995 var2291)) ; Statement: $i0 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r2) 
 ; Statement: if $i1 > $i0 goto $r3 = new java.lang.StringBuilder 
(assert (> var2109 var2925)) ; Cond: $i1 > $i0 
(define-const var562 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var562)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var562!1 String)
(assert (= var562!1 ""))
(assert true)
(define-const var3379 String (append/672562846 var562!1 "...")) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...") 
(declare-const var562!2 String)
(assert (= var562!2 (str.++ var562!1 "...")))
(define-const var1087 String (sharedPrefix/-1697221909 var2851)) ; Statement: $r5 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix> 
(define-const var1604 String (sharedPrefix/-1697221909 var2851)) ; Statement: $r4 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix> 
(assert true)
(define-const var1005 Int (length/-134980193 var1604)) ; Statement: $i3 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var2716 var24 (this$0/-1697221909 var2851)) ; Statement: $r6 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0> 
(define-const var2608 Int (var24_access$500/-1055696995 var2716)) ; Statement: $i2 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r6) 
(define-const var286 Int (- var1005 var2608)) ; Statement: $i4 = $i3 - $i2 
(assert (not (and true (and (>= var286 0) (>= (str.len var1087) var286)))))
(check-sat)
(get-model)
(get-unsat-core)
; {sharedPrefix/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], java.lang.String), length/-134980193=([java.lang.String], int), this$0/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], org.junit.ComparisonFailure$ComparisonCompactor), var24_access$500/-1055696995=([org.junit.ComparisonFailure$ComparisonCompactor], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3271=org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor, var2851=r0, var3541=$r1, var2109=$i1, var24=org.junit.ComparisonFailure$ComparisonCompactor, var2291=$r2, var2925=$i0, var562=$r3, var3379=$r8, var1087=$r5, var1604=$r4, var1005=$i3, var2716=$r6, var2608=$i2, var286=$i4, var234=$r7, var1437=$r9, var1545=$r10}
; {org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor=var3271, r0=var2851, $r1=var3541, $i1=var2109, org.junit.ComparisonFailure$ComparisonCompactor=var24, $r2=var2291, $i0=var2925, $r3=var562, $r8=var3379, $r5=var1087, $r4=var1604, $i3=var1005, $r6=var2716, $i2=var2608, $i4=var286, $r7=var234, $r9=var1437, $r10=var1545}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor;	$r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0>;	$i0 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r2);	if $i1 > $i0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");	$r5 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix>;	$r4 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix>;	$i3 = virtualinvoke $r4.<java.lang.String: int length()>();	$r6 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0>;	$i2 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r6);	$i4 = $i3 - $i2;	$r7 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int)>($i4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2