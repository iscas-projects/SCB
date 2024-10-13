(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var81 0)
(declare-sort var3311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sharedPrefix/-1697221909 (var81) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun sharedSuffix/-1697221909 (var81) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var81 var81)
(declare-const null-String String)
(declare-const var2860 var81) ; Statement: r2 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor 
(assert (not (= var2860 null-var81)))
(declare-const var3243 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3243 null-String)))
(define-const var339 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var339)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var339!1 String)
(assert (= var339!1 ""))
(assert true)
(define-const var3139 String (append/672562846 var339!1 "[")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var339!2 String)
(assert (= var339!2 (str.++ var339!1 "[")))
(define-const var1727 String (sharedPrefix/-1697221909 var2860)) ; Statement: $r3 = r2.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix> 
(assert true)
(define-const var2686 Int (length/-134980193 var1727)) ; Statement: $i3 = virtualinvoke $r3.<java.lang.String: int length()>() 
(assert true)
(define-const var3213 Int (length/-134980193 var3243)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1520 String (sharedSuffix/-1697221909 var2860)) ; Statement: $r4 = r2.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix> 
(assert true)
(define-const var1711 Int (length/-134980193 var1520)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var2163 Int (- var3213 var1711)) ; Statement: $i2 = $i1 - $i0 
(assert (and true (and (>= var2686 0) (>= (str.len var3243) var2163) (>= var2163 var2686))))
(define-const var3898 String (substring/-1240304868 var3243 var2686 var2163)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i3, $i2) 
(assert true)
(define-const var3175 String (append/672562846 var3139 var3898)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3139!1 String)
(assert (= var3139!1 (str.++ var3139 var3898)))
(assert true)
(define-const var2349 String (append/672562846 var3175 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3175!1 String)
(assert (= var3175!1 (str.++ var3175 "]")))
(assert true)
(define-const var733 String (toString/-2075883882 var2349)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), sharedPrefix/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], java.lang.String), length/-134980193=([java.lang.String], int), sharedSuffix/-1697221909=([org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var81=org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor, var2860=r2, var3243=r1, var3311=null_type, var339=$r0, var3139=$r6, var1727=$r3, var2686=$i3, var3213=$i1, var1520=$r4, var1711=$i0, var2163=$i2, var3898=$r5, var3175=$r7, var2349=$r8, var733=$r9}
; {org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor=var81, r2=var2860, r1=var3243, null_type=var3311, $r0=var339, $r6=var3139, $r3=var1727, $i3=var2686, $i1=var3213, $r4=var1520, $i0=var1711, $i2=var2163, $r5=var3898, $r7=var3175, $r8=var2349, $r9=var733}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: int length()>": 3,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r3 = r2.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedPrefix>;	$i3 = virtualinvoke $r3.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$r4 = r2.<org.junit.ComparisonFailure$ComparisonCompactor$DiffExtractor: java.lang.String sharedSuffix>;	$i0 = virtualinvoke $r4.<java.lang.String: int length()>();	$i2 = $i1 - $i0;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i3, $i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1