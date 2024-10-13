(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var165 0)
(declare-sort var812 0)
(declare-sort var2815 0)
(declare-sort var1140 0)
(declare-sort var2462 0)
(declare-sort var2448 0)
(declare-sort var1620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2815-init () var2815)
(declare-fun var1140-init () var1140)
(declare-fun var2448-init () var2448)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2448 String var1620) void)
(declare-fun cast-from-var2462-to-var1620 (var2462) var1620)
(declare-fun cast-from-var2448-to-var1620 (var2448) var1620)
(declare-const null-var165 var165)
(declare-const null-String String)
(declare-const null-var2462 var2462)
(declare-const var3865 var165) ; Statement: r10 := @this: org.hibernate.type.descriptor.java.JdbcTimeTypeDescriptor 
(assert (not (= var3865 null-var165)))
(declare-const var3193 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3193 null-String)))
(define-const var3463 var2815 var2815-init) ; Statement: $r12 = new java.sql.Time 
(define-const var3615 var1140 var1140-init) ; Statement: $r11 = new java.text.SimpleDateFormat 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3187 var2462) ; Statement: $r4 := @caughtexception 
(assert (not (= var3187 null-var2462)))
(define-const var3695 var2448 var2448-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var1955 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1955)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1955!1 String)
(assert (= var1955!1 ""))
(assert true)
(define-const var2278 String (append/672562846 var1955!1 "could not parse time string")) ; Statement: $r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not parse time string") 
(declare-const var1955!2 String)
(assert (= var1955!2 (str.++ var1955!1 "could not parse time string")))
(assert true)
(define-const var2053 String (append/672562846 var2278 var3193)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2278!1 String)
(assert (= var2278!1 (str.++ var2278 var3193)))
(assert true)
(define-const var3281 String (toString/-2075883882 var2053)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var3695 var3281 (cast-from-var2462-to-var1620 var3187))) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r4) 

(declare-const var3695!1 var2448)
(declare-const var3281!1 String)
(declare-const var3187!1 var2462)
(define-const var2075 var1620 (cast-from-var2448-to-var1620 var3695!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2815-init=([], java.sql.Time), var1140-init=([], java.text.SimpleDateFormat), var2448-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2462-to-var1620=([java.text.ParseException], java.lang.Throwable), cast-from-var2448-to-var1620=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var165=org.hibernate.type.descriptor.java.JdbcTimeTypeDescriptor, var3865=r10, var3193=r2, var812=null_type, var2815=java.sql.Time, var3463=$r12, var1140=java.text.SimpleDateFormat, var3615=$r11, var2462=java.text.ParseException, var3187=$r4, var2448=org.hibernate.HibernateException, var3695=$r14, var1955=$r13, var2278=$r7, var2053=$r8, var3281=$r9, var1620=java.lang.Throwable, var2075=$r15}
; {org.hibernate.type.descriptor.java.JdbcTimeTypeDescriptor=var165, r10=var3865, r2=var3193, null_type=var812, java.sql.Time=var2815, $r12=var3463, java.text.SimpleDateFormat=var1140, $r11=var3615, java.text.ParseException=var2462, $r4=var3187, org.hibernate.HibernateException=var2448, $r14=var3695, $r13=var1955, $r7=var2278, $r8=var2053, $r9=var3281, java.lang.Throwable=var1620, $r15=var2075}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.type.descriptor.java.JdbcTimeTypeDescriptor;	r2 := @parameter0: java.lang.String;	$r12 = new java.sql.Time;	$r11 = new java.text.SimpleDateFormat;	$r4 := @caughtexception;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not parse time string");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r4);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2