(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2232 0)
(declare-sort var1001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sharedSuffix/-1697221909 (var2232) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun this$0/-1697221909 (var2232) var1001)
(declare-fun var1001_access$500/-1055696995 (var1001) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2232 var2232)
(declare-const var1756 var2232) ; Statement: r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor 
(assert (not (= var1756 null-var2232)))
(define-const var1081 String (sharedSuffix/-1697221909 var1756)) ; Statement: $r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix> 
(assert true)
(define-const var1558 Int (length/-134980193 var1081)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var157 var1001 (this$0/-1697221909 var1756)) ; Statement: $r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0> 
(define-const var2263 Int (var1001_access$500/-1055696995 var157)) ; Statement: $i0 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r2) 
 ; Statement: if $i1 > $i0 goto $r3 = new java.lang.StringBuilder 
(assert (> var1558 var2263)) ; Cond: $i1 > $i0 
(define-const var277 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var277)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var277!1 String)
(assert (= var277!1 ""))
(define-const var325 String (sharedSuffix/-1697221909 var1756)) ; Statement: $r5 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix> 
(define-const var1383 var1001 (this$0/-1697221909 var1756)) ; Statement: $r4 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0> 
(define-const var3377 Int (var1001_access$500/-1055696995 var1383)) ; Statement: $i2 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r4) 
(assert (and true (and (>= 0 0) (>= (str.len var325) var3377) (>= var3377 0))))
(define-const var2949 String (substring/-1240304868 var325 0 var3377)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(assert true)
(define-const var1058 String (append/672562846 var277!1 var2949)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var277!2 String)
(assert (= var277!2 (str.++ var277!1 var2949)))
(assert true)
(define-const var3437 String (append/672562846 var1058 "...")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...") 
(declare-const var1058!1 String)
(assert (= var1058!1 (str.++ var1058 "...")))
(assert true)
(define-const var122 String (toString/-2075883882 var3437)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {sharedSuffix/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], java.lang.String), length/-134980193=([java.lang.String], int), this$0/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], org.junit.ComparisonFailure$ComparisonCompactor), var1001_access$500/-1055696995=([org.junit.ComparisonFailure$ComparisonCompactor], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2232=org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor, var1756=r0, var1081=$r1, var1558=$i1, var1001=org.junit.ComparisonFailure$ComparisonCompactor, var157=$r2, var2263=$i0, var277=$r3, var325=$r5, var1383=$r4, var3377=$i2, var2949=$r6, var1058=$r7, var3437=$r8, var122=$r9}
; {org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor=var2232, r0=var1756, $r1=var1081, $i1=var1558, org.junit.ComparisonFailure$ComparisonCompactor=var1001, $r2=var157, $i0=var2263, $r3=var277, $r5=var325, $r4=var1383, $i2=var3377, $r6=var2949, $r7=var1058, $r8=var3437, $r9=var122}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor;	$r1 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0>;	$i0 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r2);	if $i1 > $i0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix>;	$r4 = r0.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: org.junit.ComparisonFailure$ComparisonCompactor this$0>;	$i2 = staticinvoke <org.junit.ComparisonFailure$ComparisonCompactor: int access$500(org.junit.ComparisonFailure$ComparisonCompactor)>($r4);	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2