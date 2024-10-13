(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2537 0)
(declare-sort var3721 0)
(declare-sort var1297 0)
(declare-sort var3742 0)
(declare-sort var408 0)
(declare-sort var310 0)
(declare-sort var3209 0)
(declare-sort var941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun queryTranslator/-1424258821 (var2537) var1297)
(declare-fun getParameterTranslations/-1200946488 (var1297) var3742)
(declare-fun cast-from-var310-to-var408 (var310) var408)
(declare-fun var3742_getNamedParameterInformation/1985594371 (var3742 String) var310)
(declare-fun var3209-init () var3209)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var3209 String) void)
(declare-fun cast-from-var3209-to-var941 (var3209) var941)
(declare-const null-var2537 var2537)
(declare-const null-String String)
(declare-const null-var408 var408)
(declare-const var634 var2537) ; Statement: r0 := @this: org.hibernate.loader.hql.QueryLoader 
(assert (not (= var634 null-var2537)))
(declare-const var2599 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2599 null-String)))
(define-const var2728 var1297 (queryTranslator/-1424258821 var634)) ; Statement: $r1 = r0.<org.hibernate.loader.hql.QueryLoader: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslator> 
(assert true)
(define-const var3220 var3742 (getParameterTranslations/-1200946488 var2728)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: org.hibernate.hql.spi.ParameterTranslations getParameterTranslations()>() 
(define-const var3646 var408 (cast-from-var310-to-var408 (var3742_getNamedParameterInformation/1985594371 var3220 var2599))) ; Statement: r13 = interfaceinvoke $r3.<org.hibernate.hql.spi.ParameterTranslations: org.hibernate.hql.spi.NamedParameterInformation getNamedParameterInformation(java.lang.String)>(r2) 
 ; Statement: if r13 != null goto (branch) 
(assert (not (= var3646 null-var408))) ; Cond: r13 != null 
 ; Statement: if r13 != null goto $r4 = interfaceinvoke r13.<org.hibernate.hql.spi.ParameterInformation: int[] getSourceLocations()>() 
(assert (not (not (= var3646 null-var408)))) ; Negate: Cond: r13 != null  
(define-const var596 var3209 var3209-init) ; Statement: $r15 = new org.hibernate.QueryException 
(define-const var3633 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3633)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3633!1 String)
(assert (= var3633!1 ""))
(assert true)
(define-const var1867 String (append/672562846 var3633!1 "Unrecognized parameter label : ")) ; Statement: $r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized parameter label : ") 
(declare-const var3633!2 String)
(assert (= var3633!2 (str.++ var3633!1 "Unrecognized parameter label : ")))
(assert true)
(define-const var1983 String (append/672562846 var1867 var2599)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1867!1 String)
(assert (= var1867!1 (str.++ var1867 var2599)))
(assert true)
(define-const var3836 String (toString/-2075883882 var1983)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var596 var3836)) ; Statement: specialinvoke $r15.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9) 

(declare-const var596!1 var3209)
(declare-const var3836!1 String)
(define-const var1026 var941 (cast-from-var3209-to-var941 var596!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {queryTranslator/-1424258821=([org.hibernate.loader.hql.QueryLoader], org.hibernate.hql.internal.ast.QueryTranslatorImpl), getParameterTranslations/-1200946488=([org.hibernate.hql.internal.ast.QueryTranslatorImpl], org.hibernate.hql.spi.ParameterTranslations), cast-from-var310-to-var408=([org.hibernate.hql.spi.NamedParameterInformation], org.hibernate.hql.spi.ParameterInformation), var3742_getNamedParameterInformation/1985594371=([org.hibernate.hql.spi.ParameterTranslations, java.lang.String], org.hibernate.hql.spi.NamedParameterInformation), var3209-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var3209-to-var941=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2537=org.hibernate.loader.hql.QueryLoader, var634=r0, var2599=r2, var3721=null_type, var1297=org.hibernate.hql.internal.ast.QueryTranslatorImpl, var2728=$r1, var3742=org.hibernate.hql.spi.ParameterTranslations, var3220=$r3, var408=org.hibernate.hql.spi.ParameterInformation, var310=org.hibernate.hql.spi.NamedParameterInformation, var3646=r13, var3209=org.hibernate.QueryException, var596=$r15, var3633=$r14, var1867=$r7, var1983=$r8, var3836=$r9, var941=java.lang.Throwable, var1026=$r16}
; {org.hibernate.loader.hql.QueryLoader=var2537, r0=var634, r2=var2599, null_type=var3721, org.hibernate.hql.internal.ast.QueryTranslatorImpl=var1297, $r1=var2728, org.hibernate.hql.spi.ParameterTranslations=var3742, $r3=var3220, org.hibernate.hql.spi.ParameterInformation=var408, org.hibernate.hql.spi.NamedParameterInformation=var310, r13=var3646, org.hibernate.QueryException=var3209, $r15=var596, $r14=var3633, $r7=var1867, $r8=var1983, $r9=var3836, java.lang.Throwable=var941, $r16=var1026}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.hql.QueryLoader;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.loader.hql.QueryLoader: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslator>;	$r3 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: org.hibernate.hql.spi.ParameterTranslations getParameterTranslations()>();	r13 = interfaceinvoke $r3.<org.hibernate.hql.spi.ParameterTranslations: org.hibernate.hql.spi.NamedParameterInformation getNamedParameterInformation(java.lang.String)>(r2);	if r13 != null goto (branch);	if r13 != null goto $r4 = interfaceinvoke r13.<org.hibernate.hql.spi.ParameterInformation: int[] getSourceLocations()>();	$r15 = new org.hibernate.QueryException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized parameter label : ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 3