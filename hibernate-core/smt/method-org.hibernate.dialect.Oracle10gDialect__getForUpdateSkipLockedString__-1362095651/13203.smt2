(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3100 0)
(declare-sort var41 0)
(declare-sort var976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/1603279401 (var976) String)
(declare-fun cast-from-var3100-to-var976 (var3100) var976)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3100 var3100)
(declare-const null-String String)
(declare-const var3681 var3100) ; Statement: r1 := @this: org.hibernate.dialect.Oracle10gDialect 
(assert (not (= var3681 null-var3100)))
(declare-const var603 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var603 null-String)))
(define-const var2545 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2545)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2545!1 String)
(assert (= var2545!1 ""))
(assert true)
(define-const var836 String (getForUpdateString/1603279401 (cast-from-var3100-to-var976 var3681))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle10gDialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var2898 String (append/672562846 var2545!1 var836)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2545!2 String)
(assert (= var2545!2 (str.++ var2545!1 var836)))
(assert true)
(define-const var1304 String (append/672562846 var2898 " of ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var2898!1 String)
(assert (= var2898!1 (str.++ var2898 " of ")))
(assert true)
(define-const var2569 String (append/672562846 var1304 var603)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1304!1 String)
(assert (= var1304!1 (str.++ var1304 var603)))
(assert true)
(define-const var2932 String (append/672562846 var2569 " skip locked")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip locked") 
(declare-const var2569!1 String)
(assert (= var2569!1 (str.++ var2569 " skip locked")))
(assert true)
(define-const var2332 String (toString/-2075883882 var2932)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/1603279401=([org.hibernate.dialect.Oracle9iDialect], java.lang.String), cast-from-var3100-to-var976=([org.hibernate.dialect.Oracle10gDialect], org.hibernate.dialect.Oracle9iDialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3100=org.hibernate.dialect.Oracle10gDialect, var3681=r1, var603=r4, var41=null_type, var2545=$r0, var976=org.hibernate.dialect.Oracle9iDialect, var836=$r2, var2898=$r3, var1304=$r5, var2569=$r6, var2932=$r7, var2332=$r8}
; {org.hibernate.dialect.Oracle10gDialect=var3100, r1=var3681, r4=var603, null_type=var41, $r0=var2545, org.hibernate.dialect.Oracle9iDialect=var976, $r2=var836, $r3=var2898, $r5=var1304, $r6=var2569, $r7=var2932, $r8=var2332}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Oracle10gDialect;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.Oracle10gDialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" skip locked");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1