(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun annotation/1405660840 (var2722) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2722 var2722)
(declare-const var68 var2722) ; Statement: r1 := @this: org.apache.ibatis.io.ResolverUtil$AnnotatedWith 
(assert (not (= var68 null-var2722)))
(define-const var724 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var724)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var724!1 String)
(assert (= var724!1 ""))
(assert true)
(define-const var3905 String (append/672562846 var724!1 "annotated with @")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("annotated with @") 
(declare-const var724!2 String)
(assert (= var724!2 (str.++ var724!1 "annotated with @")))
(define-const var441 ClassObject (annotation/1405660840 var68)) ; Statement: $r2 = r1.<org.apache.ibatis.io.ResolverUtil$AnnotatedWith: java.lang.Class 'annotation'> 
(assert true)
(define-const var18 String (getSimpleName/-390194377 var441)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var358 String (append/672562846 var3905 var18)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3905!1 String)
(assert (= var3905!1 (str.++ var3905 var18)))
(assert true)
(define-const var2915 String (toString/-2075883882 var358)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), annotation/1405660840=([org.apache.ibatis.io.ResolverUtil$AnnotatedWith], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2722=org.apache.ibatis.io.ResolverUtil$AnnotatedWith, var68=r1, var724=$r0, var3905=$r4, var441=$r2, var18=$r3, var358=$r5, var2915=$r6}
; {org.apache.ibatis.io.ResolverUtil$AnnotatedWith=var2722, r1=var68, $r0=var724, $r4=var3905, $r2=var441, $r3=var18, $r5=var358, $r6=var2915}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.io.ResolverUtil$AnnotatedWith;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("annotated with @");	$r2 = r1.<org.apache.ibatis.io.ResolverUtil$AnnotatedWith: java.lang.Class 'annotation'>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1