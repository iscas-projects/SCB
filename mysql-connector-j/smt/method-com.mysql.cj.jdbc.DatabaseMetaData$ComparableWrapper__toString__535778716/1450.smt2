(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3788 0)
(declare-sort var2910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/962782468 (var3788) var2910)
(declare-fun append/-1031950772 (String var2910) String)
(declare-fun value/962782468 (var3788) var2910)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3788 var3788)
(declare-const var3432 var3788) ; Statement: r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper 
(assert (not (= var3432 null-var3788)))
(define-const var3878 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3878)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3878!1 String)
(assert (= var3878!1 ""))
(assert true)
(define-const var2579 String (append/672562846 var3878!1 "{KEY:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{KEY:") 
(declare-const var3878!2 String)
(assert (= var3878!2 (str.++ var3878!1 "{KEY:")))
(define-const var2404 var2910 (key/962782468 var3432)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper: java.lang.Object key> 
(assert true)
(define-const var1786 String (append/-1031950772 var2579 var2404)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2579!1 String)
(assert (str.prefixof var2579 var2579!1))
(assert true)
(define-const var1897 String (append/672562846 var1786 "; VALUE:")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; VALUE:") 
(declare-const var1786!1 String)
(assert (= var1786!1 (str.++ var1786 "; VALUE:")))
(define-const var3591 var2910 (value/962782468 var3432)) ; Statement: $r5 = r1.<com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper: java.lang.Object value> 
(assert true)
(define-const var2229 String (append/-1031950772 var1897 var3591)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1897!1 String)
(assert (str.prefixof var1897 var1897!1))
(assert true)
(define-const var287 String (append/672562846 var2229 "}")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2229!1 String)
(assert (= var2229!1 (str.++ var2229 "}")))
(assert true)
(define-const var3989 String (toString/-2075883882 var287)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/962782468=([com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), value/962782468=([com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3788=com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper, var3432=r1, var3878=$r0, var2579=$r3, var2910=java.lang.Object, var2404=$r2, var1786=$r4, var1897=$r6, var3591=$r5, var2229=$r7, var287=$r8, var3989=$r9}
; {com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper=var3788, r1=var3432, $r0=var3878, $r3=var2579, java.lang.Object=var2910, $r2=var2404, $r4=var1786, $r6=var1897, $r5=var3591, $r7=var2229, $r8=var287, $r9=var3989}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{KEY:");	$r2 = r1.<com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper: java.lang.Object key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; VALUE:");	$r5 = r1.<com.mysql.cj.jdbc.DatabaseMetaData$ComparableWrapper: java.lang.Object value>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1