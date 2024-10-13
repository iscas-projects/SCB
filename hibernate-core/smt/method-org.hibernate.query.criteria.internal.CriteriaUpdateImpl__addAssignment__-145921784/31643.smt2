(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2077 0)
(declare-sort var724 0)
(declare-sort var388 0)
(declare-sort var887 0)
(declare-sort var3320 0)
(declare-sort var3799 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var887!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var3320) Bool)
(declare-fun cast-from-var724-to-var3320 (var724) var3320)
(declare-fun var3799-init () var3799)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3320) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3799 String) void)
(declare-const null-var2077 var2077)
(declare-const null-var724 var724)
(declare-const null-var388 var388)
(declare-const var2642 var2077) ; Statement: r4 := @this: org.hibernate.query.criteria.internal.CriteriaUpdateImpl 
(assert (not (= var2642 null-var2077)))
(declare-const var1181 var724) ; Statement: r0 := @parameter0: javax.persistence.criteria.Path 
(assert (not (= var1181 null-var724)))
(declare-const var2378 var388) ; Statement: r3 := @parameter1: javax.persistence.criteria.Expression 
(assert (not (= var2378 null-var388)))
(define-const var884 ClassObject var887!class) ; Statement: $r1 = class "Lorg/hibernate/query/criteria/internal/PathImplementor;" 
(assert true)
(define-const var1339 Bool (isInstance/451912363 var884 (cast-from-var724-to-var3320 var1181))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = class "Lorg/hibernate/query/criteria/internal/path/SingularAttributePath;" 
(assert (not (not (= (ite var1339 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2925 var3799 var3799-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(define-const var2299 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2299)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2299!1 String)
(assert (= var2299!1 ""))
(assert true)
(define-const var387 String (append/672562846 var2299!1 "Unexpected path implementation type : ")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected path implementation type : ") 
(declare-const var2299!2 String)
(assert (= var2299!2 (str.++ var2299!1 "Unexpected path implementation type : ")))
(assert true)
(define-const var3243 ClassObject (getClass/1258963082 (cast-from-var724-to-var3320 var1181))) ; Statement: $r19 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var933 String (getName/-1958580599 var3243)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1424 String (append/672562846 var387 var933)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var387!1 String)
(assert (= var387!1 (str.++ var387 var933)))
(assert true)
(define-const var2126 String (toString/-2075883882 var1424)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2925 var2126)) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23) 

(declare-const var2925!1 var3799)
(declare-const var2126!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var724-to-var3320=([javax.persistence.criteria.Path], java.lang.Object), var3799-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2077=org.hibernate.query.criteria.internal.CriteriaUpdateImpl, var2642=r4, var724=javax.persistence.criteria.Path, var1181=r0, var388=javax.persistence.criteria.Expression, var2378=r3, var887=org.hibernate.query.criteria.internal.PathImplementor, var884=$r1, var3320=java.lang.Object, var1339=$z0, var3799=java.lang.IllegalArgumentException, var2925=$r17, var2299=$r18, var387=$r21, var3243=$r19, var933=$r20, var1424=$r22, var2126=$r23}
; {org.hibernate.query.criteria.internal.CriteriaUpdateImpl=var2077, r4=var2642, javax.persistence.criteria.Path=var724, r0=var1181, javax.persistence.criteria.Expression=var388, r3=var2378, org.hibernate.query.criteria.internal.PathImplementor=var887, $r1=var884, java.lang.Object=var3320, $z0=var1339, java.lang.IllegalArgumentException=var3799, $r17=var2925, $r18=var2299, $r21=var387, $r19=var3243, $r20=var933, $r22=var1424, $r23=var2126}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.query.criteria.internal.CriteriaUpdateImpl;	r0 := @parameter0: javax.persistence.criteria.Path;	r3 := @parameter1: javax.persistence.criteria.Expression;	$r1 = class "Lorg/hibernate/query/criteria/internal/PathImplementor;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto $r2 = class "Lorg/hibernate/query/criteria/internal/path/SingularAttributePath;";	$r17 = new java.lang.IllegalArgumentException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected path implementation type : ");	$r19 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r20 = virtualinvoke $r19.<java.lang.Class: java.lang.String getName()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r23);	throw $r17
;block_num 2