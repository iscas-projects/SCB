(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2694 0)
(declare-sort var1766 0)
(declare-sort var1368 0)
(declare-sort var1396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyIndexOrNull/-1370338729 (var2694 String) Int)
(declare-fun var1368-init () var1368)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1368 String) void)
(declare-fun cast-from-var1368-to-var1396 (var1368) var1396)
(declare-const null-var2694 var2694)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3484 var2694) ; Statement: r0 := @this: org.hibernate.tuple.entity.EntityMetamodel 
(assert (not (= var3484 null-var2694)))
(declare-const var2982 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2982 null-String)))
(assert true)
(define-const var3934 Int (getPropertyIndexOrNull/-1370338729 var3484 var2982)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto $i0 = virtualinvoke r2.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var3934 null-Int)))) ; Negate: Cond: r2 != null  
(define-const var1754 var1368 var1368-init) ; Statement: $r9 = new org.hibernate.HibernateException 
(define-const var60 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var60)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var60!1 String)
(assert (= var60!1 ""))
(assert true)
(define-const var3207 String (append/672562846 var60!1 "Unable to resolve property: ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve property: ") 
(declare-const var60!2 String)
(assert (= var60!2 (str.++ var60!1 "Unable to resolve property: ")))
(assert true)
(define-const var1326 String (append/672562846 var3207 var2982)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3207!1 String)
(assert (= var3207!1 (str.++ var3207 var2982)))
(assert true)
(define-const var3724 String (toString/-2075883882 var1326)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1754 var3724)) ; Statement: specialinvoke $r9.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var1754!1 var1368)
(declare-const var3724!1 String)
(define-const var2507 var1396 (cast-from-var1368-to-var1396 var1754!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyIndexOrNull/-1370338729=([org.hibernate.tuple.entity.EntityMetamodel, java.lang.String], java.lang.Integer), var1368-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1368-to-var1396=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2694=org.hibernate.tuple.entity.EntityMetamodel, var3484=r0, var2982=r1, var1766=null_type, var3934=r2, var1368=org.hibernate.HibernateException, var1754=$r9, var60=$r8, var3207=$r5, var1326=$r6, var3724=$r7, var1396=java.lang.Throwable, var2507=$r10}
; {org.hibernate.tuple.entity.EntityMetamodel=var2694, r0=var3484, r1=var2982, null_type=var1766, r2=var3934, org.hibernate.HibernateException=var1368, $r9=var1754, $r8=var60, $r5=var3207, $r6=var1326, $r7=var3724, java.lang.Throwable=var1396, $r10=var2507}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.EntityMetamodel;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r1);	if r2 != null goto $i0 = virtualinvoke r2.<java.lang.Integer: int intValue()>();	$r9 = new org.hibernate.HibernateException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve property: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2