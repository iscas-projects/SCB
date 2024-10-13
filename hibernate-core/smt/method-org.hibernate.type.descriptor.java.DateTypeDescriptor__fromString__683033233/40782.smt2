(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var298 0)
(declare-sort var1294 0)
(declare-sort var83 0)
(declare-sort var906 0)
(declare-sort var1753 0)
(declare-sort var3452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var83-init () var83)
(declare-fun var1753-init () var1753)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var1753 String var3452) void)
(declare-fun cast-from-var906-to-var3452 (var906) var3452)
(declare-fun cast-from-var1753-to-var3452 (var1753) var3452)
(declare-const null-var298 var298)
(declare-const null-String String)
(declare-const null-var906 var906)
(declare-const var1239 var298) ; Statement: r9 := @this: org.hibernate.type.descriptor.java.DateTypeDescriptor 
(assert (not (= var1239 null-var298)))
(declare-const var848 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var848 null-String)))
(define-const var3103 var83 var83-init) ; Statement: $r10 = new java.text.SimpleDateFormat 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2034 var906) ; Statement: $r3 := @caughtexception 
(assert (not (= var2034 null-var906)))
(define-const var648 var1753 var1753-init) ; Statement: $r12 = new org.hibernate.HibernateException 
(define-const var518 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var518)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var518!1 String)
(assert (= var518!1 ""))
(assert true)
(define-const var2302 String (append/672562846 var518!1 "could not parse date string")) ; Statement: $r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not parse date string") 
(declare-const var518!2 String)
(assert (= var518!2 (str.++ var518!1 "could not parse date string")))
(assert true)
(define-const var2243 String (append/672562846 var2302 var848)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2302!1 String)
(assert (= var2302!1 (str.++ var2302 var848)))
(assert true)
(define-const var1675 String (toString/-2075883882 var2243)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var648 var1675 (cast-from-var906-to-var3452 var2034))) ; Statement: specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3) 

(declare-const var648!1 var1753)
(declare-const var1675!1 String)
(declare-const var2034!1 var906)
(define-const var1234 var3452 (cast-from-var1753-to-var3452 var648!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var83-init=([], java.text.SimpleDateFormat), var1753-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var906-to-var3452=([java.text.ParseException], java.lang.Throwable), cast-from-var1753-to-var3452=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var298=org.hibernate.type.descriptor.java.DateTypeDescriptor, var1239=r9, var848=r1, var1294=null_type, var83=java.text.SimpleDateFormat, var3103=$r10, var906=java.text.ParseException, var2034=$r3, var1753=org.hibernate.HibernateException, var648=$r12, var518=$r11, var2302=$r6, var2243=$r7, var1675=$r8, var3452=java.lang.Throwable, var1234=$r13}
; {org.hibernate.type.descriptor.java.DateTypeDescriptor=var298, r9=var1239, r1=var848, null_type=var1294, java.text.SimpleDateFormat=var83, $r10=var3103, java.text.ParseException=var906, $r3=var2034, org.hibernate.HibernateException=var1753, $r12=var648, $r11=var518, $r6=var2302, $r7=var2243, $r8=var1675, java.lang.Throwable=var3452, $r13=var1234}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.type.descriptor.java.DateTypeDescriptor;	r1 := @parameter0: java.lang.String;	$r10 = new java.text.SimpleDateFormat;	$r3 := @caughtexception;	$r12 = new org.hibernate.HibernateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not parse date string");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2