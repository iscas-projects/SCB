(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2934 0)
(declare-sort var170 0)
(declare-sort var294 0)
(declare-sort var1148 0)
(declare-sort var1730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyPath/-1937907098 (var2934) String)
(declare-fun getPropertyMapping/-1605408675 (var2934) var170)
(declare-fun var170_toType/-7252846 (var170 String) var294)
(declare-fun var1148-init () var1148)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1148 String) void)
(declare-fun cast-from-var1148-to-var1730 (var1148) var1730)
(declare-const null-var2934 var2934)
(declare-const null-var294 var294)
(declare-const var3419 var2934) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var3419 null-var2934)))
(assert true)
(define-const var872 String (getPropertyPath/-1937907098 var3419)) ; Statement: r1 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String getPropertyPath()>() 
(assert true)
(define-const var2870 var170 (getPropertyMapping/-1605408675 var3419)) ; Statement: $r2 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>() 
(define-const var1006 var294 (var170_toType/-7252846 var2870 var872)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.PropertyMapping: org.hibernate.type.Type toType(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1006 null-var294)))) ; Negate: Cond: r3 != null  
(define-const var2439 var1148 var1148-init) ; Statement: $r10 = new org.hibernate.QueryException 
(define-const var1880 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1880)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1880!1 String)
(assert (= var1880!1 ""))
(assert true)
(define-const var3279 String (append/672562846 var1880!1 "could not resolve property type: ")) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not resolve property type: ") 
(declare-const var1880!2 String)
(assert (= var1880!2 (str.++ var1880!1 "could not resolve property type: ")))
(assert true)
(define-const var2406 String (append/672562846 var3279 var872)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3279!1 String)
(assert (= var3279!1 (str.++ var3279 var872)))
(assert true)
(define-const var2515 String (toString/-2075883882 var2406)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2439 var2515)) ; Statement: specialinvoke $r10.<org.hibernate.QueryException: void <init>(java.lang.String)>($r8) 

(declare-const var2439!1 var1148)
(declare-const var2515!1 String)
(define-const var3726 var1730 (cast-from-var1148-to-var1730 var2439!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyPath/-1937907098=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), getPropertyMapping/-1605408675=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.persister.entity.PropertyMapping), var170_toType/-7252846=([org.hibernate.persister.entity.PropertyMapping, java.lang.String], org.hibernate.type.Type), var1148-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1148-to-var1730=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2934=org.hibernate.hql.internal.classic.PathExpressionParser, var3419=r0, var872=r1, var170=org.hibernate.persister.entity.PropertyMapping, var2870=$r2, var294=org.hibernate.type.Type, var1006=r3, var1148=org.hibernate.QueryException, var2439=$r10, var1880=$r9, var3279=$r6, var2406=$r7, var2515=$r8, var1730=java.lang.Throwable, var3726=$r11}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var2934, r0=var3419, r1=var872, org.hibernate.persister.entity.PropertyMapping=var170, $r2=var2870, org.hibernate.type.Type=var294, r3=var1006, org.hibernate.QueryException=var1148, $r10=var2439, $r9=var1880, $r6=var3279, $r7=var2406, $r8=var2515, java.lang.Throwable=var1730, $r11=var3726}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r1 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String getPropertyPath()>();	$r2 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>();	r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.PropertyMapping: org.hibernate.type.Type toType(java.lang.String)>(r1);	if r3 != null goto return r3;	$r10 = new org.hibernate.QueryException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not resolve property type: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.QueryException: void <init>(java.lang.String)>($r8);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 2