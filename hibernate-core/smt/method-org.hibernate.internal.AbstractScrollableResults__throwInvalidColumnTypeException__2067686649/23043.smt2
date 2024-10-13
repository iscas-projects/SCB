(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var709 0)
(declare-sort var1760 0)
(declare-sort var1718 0)
(declare-sort var2377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1718-init () var1718)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1760_getName/-1292724027 (var1760) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1718 String) void)
(declare-fun cast-from-var1718-to-var2377 (var1718) var2377)
(declare-const null-var709 var709)
(declare-const null-Int Int)
(declare-const null-var1760 var1760)
(declare-const var761 var709) ; Statement: r11 := @this: org.hibernate.internal.AbstractScrollableResults 
(assert (not (= var761 null-var709)))
(declare-const var1995 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1995 null-Int)))
(declare-const var823 var1760) ; Statement: r2 := @parameter1: org.hibernate.type.Type 
(assert (not (= var823 null-var1760)))
(declare-const var2801 var1760) ; Statement: r6 := @parameter2: org.hibernate.type.Type 
(assert (not (= var2801 null-var1760)))
(define-const var1097 var1718 var1718-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var3438 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3438)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3438!1 String)
(assert (= var3438!1 ""))
(assert true)
(define-const var2642 String (append/672562846 var3438!1 "incompatible column types: ")) ; Statement: $r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("incompatible column types: ") 
(declare-const var3438!2 String)
(assert (= var3438!2 (str.++ var3438!1 "incompatible column types: ")))
(define-const var3897 String (var1760_getName/-1292724027 var823)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.type.Type: java.lang.String getName()>() 
(assert true)
(define-const var12 String (append/672562846 var2642 var3897)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2642!1 String)
(assert (= var2642!1 (str.++ var2642 var3897)))
(assert true)
(define-const var2109 String (append/672562846 var12 ", ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var12!1 String)
(assert (= var12!1 (str.++ var12 ", ")))
(define-const var2304 String (var1760_getName/-1292724027 var2801)) ; Statement: $r7 = interfaceinvoke r6.<org.hibernate.type.Type: java.lang.String getName()>() 
(assert true)
(define-const var545 String (append/672562846 var2109 var2304)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2109!1 String)
(assert (= var2109!1 (str.++ var2109 var2304)))
(assert true)
(define-const var3957 String (toString/-2075883882 var545)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1097 var3957)) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10) 

(declare-const var1097!1 var1718)
(declare-const var3957!1 String)
(define-const var2855 var2377 (cast-from-var1718-to-var2377 var1097!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1718-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1760_getName/-1292724027=([org.hibernate.type.Type], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1718-to-var2377=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var709=org.hibernate.internal.AbstractScrollableResults, var761=r11, var1995=i0, var1760=org.hibernate.type.Type, var823=r2, var2801=r6, var1718=org.hibernate.HibernateException, var1097=$r13, var3438=$r12, var2642=$r4, var3897=$r3, var12=$r5, var2109=$r8, var2304=$r7, var545=$r9, var3957=$r10, var2377=java.lang.Throwable, var2855=$r14}
; {org.hibernate.internal.AbstractScrollableResults=var709, r11=var761, i0=var1995, org.hibernate.type.Type=var1760, r2=var823, r6=var2801, org.hibernate.HibernateException=var1718, $r13=var1097, $r12=var3438, $r4=var2642, $r3=var3897, $r5=var12, $r8=var2109, $r7=var2304, $r9=var545, $r10=var3957, java.lang.Throwable=var2377, $r14=var2855}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.internal.AbstractScrollableResults;	i0 := @parameter0: int;	r2 := @parameter1: org.hibernate.type.Type;	r6 := @parameter2: org.hibernate.type.Type;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("incompatible column types: ");	$r3 = interfaceinvoke r2.<org.hibernate.type.Type: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r7 = interfaceinvoke r6.<org.hibernate.type.Type: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 1