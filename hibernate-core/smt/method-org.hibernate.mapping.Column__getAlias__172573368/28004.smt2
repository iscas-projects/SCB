(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1396 0)
(declare-sort var913 0)
(declare-sort var2863 0)
(declare-sort var1124 0)
(declare-sort var1909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getAlias/-277383940 (var1396 var913) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getUniqueInteger/-2132987325 (var2863) Int)
(declare-fun var1124_get/91882594 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1909_safeInterning/-733881672 (String) String)
(declare-const null-var1396 var1396)
(declare-const null-var913 var913)
(declare-const null-var2863 var2863)
(declare-const var295 var1396) ; Statement: r1 := @this: org.hibernate.mapping.Column 
(assert (not (= var295 null-var1396)))
(declare-const var358 var913) ; Statement: r2 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var358 null-var913)))
(declare-const var2406 var2863) ; Statement: r4 := @parameter1: org.hibernate.mapping.Table 
(assert (not (= var2406 null-var2863)))
(define-const var282 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var282)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var282!1 String)
(assert (= var282!1 ""))
(assert true)
(define-const var3290 String (getAlias/-277383940 var295 var358)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getAlias(org.hibernate.dialect.Dialect)>(r2) 
(assert true)
(define-const var82 String (append/672562846 var282!1 var3290)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var282!2 String)
(assert (= var282!2 (str.++ var282!1 var3290)))
(assert true)
(define-const var2166 Int (getUniqueInteger/-2132987325 var2406)) ; Statement: $i0 = virtualinvoke r4.<org.hibernate.mapping.Table: int getUniqueInteger()>() 
(define-const var3276 String (var1124_get/91882594 var2166)) ; Statement: $r5 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>($i0) 
(assert true)
(define-const var3019 String (append/672562846 var82 var3276)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var82!1 String)
(assert (= var82!1 (str.++ var82 var3276)))
(assert true)
(define-const var3130 String (toString/-2075883882 var3019)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1822 String (var1909_safeInterning/-733881672 var3130)) ; Statement: $r9 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getAlias/-277383940=([org.hibernate.mapping.Column, org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getUniqueInteger/-2132987325=([org.hibernate.mapping.Table], int), var1124_get/91882594=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1909_safeInterning/-733881672=([java.lang.String], java.lang.String)}
; {var1396=org.hibernate.mapping.Column, var295=r1, var913=org.hibernate.dialect.Dialect, var358=r2, var2863=org.hibernate.mapping.Table, var2406=r4, var282=$r0, var3290=$r3, var82=$r6, var2166=$i0, var1124=org.hibernate.loader.internal.AliasConstantsHelper, var3276=$r5, var3019=$r7, var3130=$r8, var1909=org.hibernate.internal.util.StringHelper, var1822=$r9}
; {org.hibernate.mapping.Column=var1396, r1=var295, org.hibernate.dialect.Dialect=var913, r2=var358, org.hibernate.mapping.Table=var2863, r4=var2406, $r0=var282, $r3=var3290, $r6=var82, $i0=var2166, org.hibernate.loader.internal.AliasConstantsHelper=var1124, $r5=var3276, $r7=var3019, $r8=var3130, org.hibernate.internal.util.StringHelper=var1909, $r9=var1822}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Column;	r2 := @parameter0: org.hibernate.dialect.Dialect;	r4 := @parameter1: org.hibernate.mapping.Table;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getAlias(org.hibernate.dialect.Dialect)>(r2);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$i0 = virtualinvoke r4.<org.hibernate.mapping.Table: int getUniqueInteger()>();	$r5 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r8);	return $r9
;block_num 1