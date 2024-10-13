(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var474 0)
(declare-sort var3205 0)
(declare-sort var2873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2873-init () var2873)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/1661515187 (var474) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var2873 String) void)
(declare-const null-var474 var474)
(declare-const null-String String)
(declare-const var1206 var474) ; Statement: r5 := @this: org.hibernate.persister.entity.AbstractPropertyMapping 
(assert (not (= var1206 null-var474)))
(declare-const var909 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var909 null-String)))
(define-const var3041 var2873 var2873-init) ; Statement: $r0 = new org.hibernate.QueryException 
(define-const var3793 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3793)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3793!1 String)
(assert (= var3793!1 ""))
(assert true)
(define-const var2411 String (append/672562846 var3793!1 "could not resolve property: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not resolve property: ") 
(declare-const var3793!2 String)
(assert (= var3793!2 (str.++ var3793!1 "could not resolve property: ")))
(assert true)
(define-const var1114 String (append/672562846 var2411 var909)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2411!1 String)
(assert (= var2411!1 (str.++ var2411 var909)))
(assert true)
(define-const var3779 String (append/672562846 var1114 " of: ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of: ") 
(declare-const var1114!1 String)
(assert (= var1114!1 (str.++ var1114 " of: ")))
(assert true)
(define-const var251 String (getEntityName/1661515187 var1206)) ; Statement: $r6 = virtualinvoke r5.<org.hibernate.persister.entity.AbstractPropertyMapping: java.lang.String getEntityName()>() 
(assert true)
(define-const var683 String (append/672562846 var3779 var251)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3779!1 String)
(assert (= var3779!1 (str.++ var3779 var251)))
(assert true)
(define-const var3584 String (toString/-2075883882 var683)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3041 var3584)) ; Statement: specialinvoke $r0.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9) 

(declare-const var3041!1 var2873)
(declare-const var3584!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2873-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/1661515187=([org.hibernate.persister.entity.AbstractPropertyMapping], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void)}
; {var474=org.hibernate.persister.entity.AbstractPropertyMapping, var1206=r5, var909=r2, var3205=null_type, var2873=org.hibernate.QueryException, var3041=$r0, var3793=$r1, var2411=$r3, var1114=$r4, var3779=$r7, var251=$r6, var683=$r8, var3584=$r9}
; {org.hibernate.persister.entity.AbstractPropertyMapping=var474, r5=var1206, r2=var909, null_type=var3205, org.hibernate.QueryException=var2873, $r0=var3041, $r1=var3793, $r3=var2411, $r4=var1114, $r7=var3779, $r6=var251, $r8=var683, $r9=var3584}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.persister.entity.AbstractPropertyMapping;	r2 := @parameter0: java.lang.String;	$r0 = new org.hibernate.QueryException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not resolve property: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of: ");	$r6 = virtualinvoke r5.<org.hibernate.persister.entity.AbstractPropertyMapping: java.lang.String getEntityName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9);	return $r0
;block_num 1