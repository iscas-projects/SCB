(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3509 0)
(declare-sort var3790 0)
(declare-sort var1819 0)
(declare-sort var2536 0)
(declare-sort var3556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3790!class ClassObject)
(declare-fun var2536-init () var2536)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2536 String var3556) void)
(declare-fun cast-from-var1819-to-var3556 (var1819) var3556)
(declare-fun cast-from-var2536-to-var3556 (var2536) var3556)
(declare-const null-String String)
(declare-const null-var1819 var1819)
(declare-const var3057 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3057 null-String)))
(define-const var2568 ClassObject var3790!class) ; Statement: $r1 = class "Lorg/hibernate/resource/beans/container/internal/CdiBeanContainerBuilder;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3486 var1819) ; Statement: $r4 := @caughtexception 
(assert (not (= var3486 null-var1819)))
(define-const var2964 var2536 var2536-init) ; Statement: $r11 = new org.hibernate.HibernateException 
(define-const var1350 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1350)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1350!1 String)
(assert (= var1350!1 ""))
(assert true)
(define-const var219 String (append/672562846 var1350!1 "Unable to locate Hibernate class by name via reflection : ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate Hibernate class by name via reflection : ") 
(declare-const var1350!2 String)
(assert (= var1350!2 (str.++ var1350!1 "Unable to locate Hibernate class by name via reflection : ")))
(assert true)
(define-const var458 String (append/672562846 var219 var3057)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var219!1 String)
(assert (= var219!1 (str.++ var219 var3057)))
(assert true)
(define-const var1635 String (toString/-2075883882 var458)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var2964 var1635 (cast-from-var1819-to-var3556 var3486))) ; Statement: specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r4) 

(declare-const var2964!1 var2536)
(declare-const var1635!1 String)
(declare-const var3486!1 var1819)
(define-const var2052 var3556 (cast-from-var2536-to-var3556 var2964!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2536-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var1819-to-var3556=([java.lang.ClassNotFoundException], java.lang.Throwable), cast-from-var2536-to-var3556=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3057=r0, var3509=null_type, var3790=org.hibernate.resource.beans.container.internal.CdiBeanContainerBuilder, var2568=$r1, var1819=java.lang.ClassNotFoundException, var3486=$r4, var2536=org.hibernate.HibernateException, var2964=$r11, var1350=$r10, var219=$r7, var458=$r8, var1635=$r9, var3556=java.lang.Throwable, var2052=$r12}
; {r0=var3057, null_type=var3509, org.hibernate.resource.beans.container.internal.CdiBeanContainerBuilder=var3790, $r1=var2568, java.lang.ClassNotFoundException=var1819, $r4=var3486, org.hibernate.HibernateException=var2536, $r11=var2964, $r10=var1350, $r7=var219, $r8=var458, $r9=var1635, java.lang.Throwable=var3556, $r12=var2052}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = class "Lorg/hibernate/resource/beans/container/internal/CdiBeanContainerBuilder;";	$r4 := @caughtexception;	$r11 = new org.hibernate.HibernateException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate Hibernate class by name via reflection : ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r4);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2