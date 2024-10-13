(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3770 0)
(declare-sort var1806 0)
(declare-sort var3041 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun filterName/1722928979 (var3770) String)
(declare-fun filterParameters/1722928979 (var3770) var1806)
(declare-fun append/-1031950772 (String var3041) String)
(declare-fun cast-from-var1806-to-var3041 (var1806) var3041)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3770 var3770)
(declare-const var2460 var3770) ; Statement: r1 := @this: org.hibernate.cache.spi.FilterKey 
(assert (not (= var2460 null-var3770)))
(define-const var1149 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1149)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1149!1 String)
(assert (= var1149!1 ""))
(assert true)
(define-const var1787 String (append/672562846 var1149!1 "FilterKey[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FilterKey[") 
(declare-const var1149!2 String)
(assert (= var1149!2 (str.++ var1149!1 "FilterKey[")))
(define-const var3698 String (filterName/1722928979 var2460)) ; Statement: $r2 = r1.<org.hibernate.cache.spi.FilterKey: java.lang.String filterName> 
(assert true)
(define-const var145 String (append/672562846 var1787 var3698)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1787!1 String)
(assert (= var1787!1 (str.++ var1787 var3698)))
(define-const var1848 var1806 (filterParameters/1722928979 var2460)) ; Statement: $r4 = r1.<org.hibernate.cache.spi.FilterKey: java.util.Map filterParameters> 
(assert true)
(define-const var3442 String (append/-1031950772 var145 (cast-from-var1806-to-var3041 var1848))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var145!1 String)
(assert (str.prefixof var145 var145!1))
(assert true)
(define-const var3069 String (append/-1166366385 var3442 93)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3442!1 String)
(assert (str.prefixof var3442 var3442!1))
(assert true)
(define-const var2220 String (toString/-2075883882 var3069)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), filterName/1722928979=([org.hibernate.cache.spi.FilterKey], java.lang.String), filterParameters/1722928979=([org.hibernate.cache.spi.FilterKey], java.util.Map), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1806-to-var3041=([java.util.Map], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3770=org.hibernate.cache.spi.FilterKey, var2460=r1, var1149=$r0, var1787=$r3, var3698=$r2, var145=$r5, var1806=java.util.Map, var1848=$r4, var3041=java.lang.Object, var3442=$r6, var3069=$r7, var2220=$r8}
; {org.hibernate.cache.spi.FilterKey=var3770, r1=var2460, $r0=var1149, $r3=var1787, $r2=var3698, $r5=var145, java.util.Map=var1806, $r4=var1848, java.lang.Object=var3041, $r6=var3442, $r7=var3069, $r8=var2220}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cache.spi.FilterKey;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FilterKey[");	$r2 = r1.<org.hibernate.cache.spi.FilterKey: java.lang.String filterName>;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = r1.<org.hibernate.cache.spi.FilterKey: java.util.Map filterParameters>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1