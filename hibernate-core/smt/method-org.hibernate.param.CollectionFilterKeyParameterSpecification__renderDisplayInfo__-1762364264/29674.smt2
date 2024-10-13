(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun collectionRole/-367314532 (var615) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var615 var615)
(declare-const var3061 var615) ; Statement: r1 := @this: org.hibernate.param.CollectionFilterKeyParameterSpecification 
(assert (not (= var3061 null-var615)))
(define-const var167 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var167)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var167!1 String)
(assert (= var167!1 ""))
(assert true)
(define-const var2895 String (append/672562846 var167!1 "collection-filter-key=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection-filter-key=") 
(declare-const var167!2 String)
(assert (= var167!2 (str.++ var167!1 "collection-filter-key=")))
(define-const var2563 String (collectionRole/-367314532 var3061)) ; Statement: $r2 = r1.<org.hibernate.param.CollectionFilterKeyParameterSpecification: java.lang.String collectionRole> 
(assert true)
(define-const var3119 String (append/672562846 var2895 var2563)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2895!1 String)
(assert (= var2895!1 (str.++ var2895 var2563)))
(assert true)
(define-const var3247 String (toString/-2075883882 var3119)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), collectionRole/-367314532=([org.hibernate.param.CollectionFilterKeyParameterSpecification], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var615=org.hibernate.param.CollectionFilterKeyParameterSpecification, var3061=r1, var167=$r0, var2895=$r3, var2563=$r2, var3119=$r4, var3247=$r5}
; {org.hibernate.param.CollectionFilterKeyParameterSpecification=var615, r1=var3061, $r0=var167, $r3=var2895, $r2=var2563, $r4=var3119, $r5=var3247}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.param.CollectionFilterKeyParameterSpecification;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection-filter-key=");	$r2 = r1.<org.hibernate.param.CollectionFilterKeyParameterSpecification: java.lang.String collectionRole>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1