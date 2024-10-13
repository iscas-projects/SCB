(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1980 0)
(declare-sort var3883 0)
(declare-sort var2847 0)
(declare-sort var1356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3883_requireNonNull/1378936425 (var2847 String) var2847)
(declare-fun cast-from-var1980-to-var2847 (var1980) var2847)
(declare-fun divide/-964538930 (var1980 var1980) var1980)
(declare-fun compareTo/-1602314560 (var1980 var1980) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2847) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1980 var1980)
(declare-const var1356-ONE_EB_BI var1980)
(declare-const var1980-ZERO var1980)
(declare-const var3269 var1980) ; Statement: r0 := @parameter0: java.math.BigInteger 
(assert (not (= var3269 null-var1980)))
;(assert (var3883_requireNonNull/1378936425 (cast-from-var1980-to-var2847 var3269) "size")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "size") 

(declare-const var3269!1 var1980)
(declare-const var1365 String)
(define-const var2291 var1980 var1356-ONE_EB_BI) ; Statement: $r1 = <org.apache.commons.io.FileUtils: java.math.BigInteger ONE_EB_BI> 
(assert true)
(define-const var3605 var1980 (divide/-964538930 var3269!1 var2291)) ; Statement: $r3 = virtualinvoke r0.<java.math.BigInteger: java.math.BigInteger divide(java.math.BigInteger)>($r1) 
(define-const var2360 var1980 var1980-ZERO) ; Statement: $r2 = <java.math.BigInteger: java.math.BigInteger ZERO> 
(assert true)
(define-const var2213 Int (compareTo/-1602314560 var3605 var2360)) ; Statement: $i0 = virtualinvoke $r3.<java.math.BigInteger: int compareTo(java.math.BigInteger)>($r2) 
 ; Statement: if $i0 <= 0 goto $r4 = <org.apache.commons.io.FileUtils: java.math.BigInteger ONE_PB_BI> 
(assert (not (<= var2213 0))) ; Negate: Cond: $i0 <= 0  
(define-const var522 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var522)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var522!1 String)
(assert (= var522!1 ""))
(define-const var3760 var1980 var1356-ONE_EB_BI) ; Statement: $r48 = <org.apache.commons.io.FileUtils: java.math.BigInteger ONE_EB_BI> 
(assert true)
(define-const var1969 var1980 (divide/-964538930 var3269!1 var3760)) ; Statement: $r49 = virtualinvoke r0.<java.math.BigInteger: java.math.BigInteger divide(java.math.BigInteger)>($r48) 
(assert true)
(define-const var3315 String (append/-1031950772 var522!1 (cast-from-var1980-to-var2847 var1969))) ; Statement: $r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r49) 
(declare-const var522!2 String)
(assert (str.prefixof var522!1 var522!2))
(assert true)
(define-const var2407 String (append/672562846 var3315 " EB")) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" EB") 
(declare-const var3315!1 String)
(assert (= var3315!1 (str.++ var3315 " EB")))
(assert true)
(define-const var3848 String (toString/-2075883882 var2407)) ; Statement: r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r52] 
(assert true) ; Non Conditional
 ; Statement: return r52 
(check-sat)
(get-model)
(get-unsat-core)
; {var3883_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var1980-to-var2847=([java.math.BigInteger], java.lang.Object), divide/-964538930=([java.math.BigInteger, java.math.BigInteger], java.math.BigInteger), compareTo/-1602314560=([java.math.BigInteger, java.math.BigInteger], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1980=java.math.BigInteger, var3269=r0, var3883=java.util.Objects, var2847=java.lang.Object, var1365="size", var1356=org.apache.commons.io.FileUtils, var2291=$r1, var3605=$r3, var2360=$r2, var2213=$i0, var522=$r47, var3760=$r48, var1969=$r49, var3315=$r50, var2407=$r51, var3848=r52}
; {java.math.BigInteger=var1980, r0=var3269, java.util.Objects=var3883, java.lang.Object=var2847, "size"=var1365, org.apache.commons.io.FileUtils=var1356, $r1=var2291, $r3=var3605, $r2=var2360, $i0=var2213, $r47=var522, $r48=var3760, $r49=var1969, $r50=var3315, $r51=var2407, r52=var3848}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.math.BigInteger;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "size");	$r1 = <org.apache.commons.io.FileUtils: java.math.BigInteger ONE_EB_BI>;	$r3 = virtualinvoke r0.<java.math.BigInteger: java.math.BigInteger divide(java.math.BigInteger)>($r1);	$r2 = <java.math.BigInteger: java.math.BigInteger ZERO>;	$i0 = virtualinvoke $r3.<java.math.BigInteger: int compareTo(java.math.BigInteger)>($r2);	if $i0 <= 0 goto $r4 = <org.apache.commons.io.FileUtils: java.math.BigInteger ONE_PB_BI>;	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r48 = <org.apache.commons.io.FileUtils: java.math.BigInteger ONE_EB_BI>;	$r49 = virtualinvoke r0.<java.math.BigInteger: java.math.BigInteger divide(java.math.BigInteger)>($r48);	$r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r49);	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" EB");	r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r52];	return r52
;block_num 3