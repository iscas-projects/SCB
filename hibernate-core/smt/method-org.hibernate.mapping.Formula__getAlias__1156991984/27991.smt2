(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3645 0)
(declare-sort var3291 0)
(declare-sort var699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun uniqueInteger/-1197146112 (var3645) Int)
(declare-fun var699_get/91882594 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3645 var3645)
(declare-const null-var3291 var3291)
(declare-const var804 var3645) ; Statement: r1 := @this: org.hibernate.mapping.Formula 
(assert (not (= var804 null-var3645)))
(declare-const var879 var3291) ; Statement: r6 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var879 null-var3291)))
(define-const var2172 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2172)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2172!1 String)
(assert (= var2172!1 ""))
(assert true)
(define-const var322 String (append/672562846 var2172!1 "formula")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("formula") 
(declare-const var2172!2 String)
(assert (= var2172!2 (str.++ var2172!1 "formula")))
(define-const var2414 Int (uniqueInteger/-1197146112 var804)) ; Statement: $i0 = r1.<org.hibernate.mapping.Formula: int uniqueInteger> 
(define-const var1156 String (var699_get/91882594 var2414)) ; Statement: $r2 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>($i0) 
(assert true)
(define-const var1167 String (append/672562846 var322 var1156)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var322!1 String)
(assert (= var322!1 (str.++ var322 var1156)))
(assert true)
(define-const var2374 String (toString/-2075883882 var1167)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), uniqueInteger/-1197146112=([org.hibernate.mapping.Formula], int), var699_get/91882594=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3645=org.hibernate.mapping.Formula, var804=r1, var3291=org.hibernate.dialect.Dialect, var879=r6, var2172=$r0, var322=$r3, var2414=$i0, var699=org.hibernate.loader.internal.AliasConstantsHelper, var1156=$r2, var1167=$r4, var2374=$r5}
; {org.hibernate.mapping.Formula=var3645, r1=var804, org.hibernate.dialect.Dialect=var3291, r6=var879, $r0=var2172, $r3=var322, $i0=var2414, org.hibernate.loader.internal.AliasConstantsHelper=var699, $r2=var1156, $r4=var1167, $r5=var2374}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Formula;	r6 := @parameter0: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("formula");	$i0 = r1.<org.hibernate.mapping.Formula: int uniqueInteger>;	$r2 = staticinvoke <org.hibernate.loader.internal.AliasConstantsHelper: java.lang.String get(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1