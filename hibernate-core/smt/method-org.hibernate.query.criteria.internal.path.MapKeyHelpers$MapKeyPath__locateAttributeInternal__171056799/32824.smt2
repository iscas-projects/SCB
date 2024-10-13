(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1543 0)
(declare-sort var1232 0)
(declare-sort var1890 0)
(declare-sort var10 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun canBeDereferenced/-1049673769 (var1543) Bool)
(declare-fun var1890-init () var1890)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPathSource/866111099 (var1543) var10)
(declare-fun getPathIdentifier/1983113487 (var10) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1890 String) void)
(declare-const null-var1543 var1543)
(declare-const null-String String)
(declare-const var1172 var1543) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath 
(assert (not (= var1172 null-var1543)))
(declare-const var218 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var218 null-String)))
(assert true)
(define-const var33 Bool (canBeDereferenced/-1049673769 var1172)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: boolean canBeDereferenced()>() 
 ; Statement: if $z0 != 0 goto $r1 = new java.lang.UnsupportedOperationException 
(assert (not (not (= (ite var33 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2996 var1890 var1890-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var3203 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3203)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3203!1 String)
(assert (= var3203!1 ""))
(assert true)
(define-const var2390 String (append/672562846 var3203!1 "Map key [")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Map key [") 
(declare-const var3203!2 String)
(assert (= var3203!2 (str.++ var3203!1 "Map key [")))
(assert true)
(define-const var198 var10 (getPathSource/866111099 var1172)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource getPathSource()>() 
(assert true)
(define-const var2458 String (getPathIdentifier/1983113487 var198)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var1745 String (append/672562846 var2390 var2458)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2390!1 String)
(assert (= var2390!1 (str.++ var2390 var2458)))
(assert true)
(define-const var2858 String (append/672562846 var1745 "] cannot be dereferenced")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be dereferenced") 
(declare-const var1745!1 String)
(assert (= var1745!1 (str.++ var1745 "] cannot be dereferenced")))
(assert true)
(define-const var275 String (toString/-2075883882 var2858)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2996 var275)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var2996!1 var1890)
(declare-const var275!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {canBeDereferenced/-1049673769=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath], boolean), var1890-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPathSource/866111099=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath], org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource), getPathIdentifier/1983113487=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1543=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath, var1172=r0, var218=r10, var1232=null_type, var33=$z0, var1890=java.lang.IllegalArgumentException, var2996=$r2, var3203=$r3, var2390=$r6, var10=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource, var198=$r4, var2458=$r5, var1745=$r7, var2858=$r8, var275=$r9}
; {org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath=var1543, r0=var1172, r10=var218, null_type=var1232, $z0=var33, java.lang.IllegalArgumentException=var1890, $r2=var2996, $r3=var3203, $r6=var2390, org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource=var10, $r4=var198, $r5=var2458, $r7=var1745, $r8=var2858, $r9=var275}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath;	r10 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: boolean canBeDereferenced()>();	if $z0 != 0 goto $r1 = new java.lang.UnsupportedOperationException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Map key [");	$r4 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyPath: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource getPathSource()>();	$r5 = virtualinvoke $r4.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeySource: java.lang.String getPathIdentifier()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be dereferenced");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2