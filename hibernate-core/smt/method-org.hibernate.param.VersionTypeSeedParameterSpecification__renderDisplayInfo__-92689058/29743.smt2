(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3511 0)
(declare-sort var232 0)
(declare-sort var530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-266806890 (var3511) var232)
(declare-fun append/-1031950772 (String var530) String)
(declare-fun cast-from-var232-to-var530 (var232) var530)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3511 var3511)
(declare-const var2907 var3511) ; Statement: r1 := @this: org.hibernate.param.VersionTypeSeedParameterSpecification 
(assert (not (= var2907 null-var3511)))
(define-const var1977 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1977)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1977!1 String)
(assert (= var1977!1 ""))
(assert true)
(define-const var2387 String (append/672562846 var1977!1 "version-seed, type=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("version-seed, type=") 
(declare-const var1977!2 String)
(assert (= var1977!2 (str.++ var1977!1 "version-seed, type=")))
(define-const var1391 var232 (type/-266806890 var2907)) ; Statement: $r2 = r1.<org.hibernate.param.VersionTypeSeedParameterSpecification: org.hibernate.type.VersionType type> 
(assert true)
(define-const var836 String (append/-1031950772 var2387 (cast-from-var232-to-var530 var1391))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2387!1 String)
(assert (str.prefixof var2387 var2387!1))
(assert true)
(define-const var614 String (toString/-2075883882 var836)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-266806890=([org.hibernate.param.VersionTypeSeedParameterSpecification], org.hibernate.type.VersionType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var232-to-var530=([org.hibernate.type.VersionType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3511=org.hibernate.param.VersionTypeSeedParameterSpecification, var2907=r1, var1977=$r0, var2387=$r3, var232=org.hibernate.type.VersionType, var1391=$r2, var530=java.lang.Object, var836=$r4, var614=$r5}
; {org.hibernate.param.VersionTypeSeedParameterSpecification=var3511, r1=var2907, $r0=var1977, $r3=var2387, org.hibernate.type.VersionType=var232, $r2=var1391, java.lang.Object=var530, $r4=var836, $r5=var614}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.param.VersionTypeSeedParameterSpecification;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("version-seed, type=");	$r2 = r1.<org.hibernate.param.VersionTypeSeedParameterSpecification: org.hibernate.type.VersionType type>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1