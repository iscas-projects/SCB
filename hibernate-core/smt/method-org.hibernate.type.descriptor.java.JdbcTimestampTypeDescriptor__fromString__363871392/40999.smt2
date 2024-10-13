(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3266 0)
(declare-sort var3786 0)
(declare-sort var1110 0)
(declare-sort var3807 0)
(declare-sort var614 0)
(declare-sort var2781 0)
(declare-sort var3944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1110-init () var1110)
(declare-fun var3807-init () var3807)
(declare-fun var2781-init () var2781)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2781 String var3944) void)
(declare-fun cast-from-var614-to-var3944 (var614) var3944)
(declare-fun cast-from-var2781-to-var3944 (var2781) var3944)
(declare-const null-var3266 var3266)
(declare-const null-String String)
(declare-const null-var614 var614)
(declare-const var1440 var3266) ; Statement: r10 := @this: org.hibernate.type.descriptor.java.JdbcTimestampTypeDescriptor 
(assert (not (= var1440 null-var3266)))
(declare-const var2918 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2918 null-String)))
(define-const var3981 var1110 var1110-init) ; Statement: $r12 = new java.sql.Timestamp 
(define-const var16 var3807 var3807-init) ; Statement: $r11 = new java.text.SimpleDateFormat 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3859 var614) ; Statement: $r4 := @caughtexception 
(assert (not (= var3859 null-var614)))
(define-const var3276 var2781 var2781-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var2720 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2720)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2720!1 String)
(assert (= var2720!1 ""))
(assert true)
(define-const var2548 String (append/672562846 var2720!1 "could not parse timestamp string")) ; Statement: $r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not parse timestamp string") 
(declare-const var2720!2 String)
(assert (= var2720!2 (str.++ var2720!1 "could not parse timestamp string")))
(assert true)
(define-const var3279 String (append/672562846 var2548 var2918)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2548!1 String)
(assert (= var2548!1 (str.++ var2548 var2918)))
(assert true)
(define-const var1656 String (toString/-2075883882 var3279)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var3276 var1656 (cast-from-var614-to-var3944 var3859))) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r4) 

(declare-const var3276!1 var2781)
(declare-const var1656!1 String)
(declare-const var3859!1 var614)
(define-const var53 var3944 (cast-from-var2781-to-var3944 var3276!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var1110-init=([], java.sql.Timestamp), var3807-init=([], java.text.SimpleDateFormat), var2781-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var614-to-var3944=([java.text.ParseException], java.lang.Throwable), cast-from-var2781-to-var3944=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3266=org.hibernate.type.descriptor.java.JdbcTimestampTypeDescriptor, var1440=r10, var2918=r2, var3786=null_type, var1110=java.sql.Timestamp, var3981=$r12, var3807=java.text.SimpleDateFormat, var16=$r11, var614=java.text.ParseException, var3859=$r4, var2781=org.hibernate.HibernateException, var3276=$r14, var2720=$r13, var2548=$r7, var3279=$r8, var1656=$r9, var3944=java.lang.Throwable, var53=$r15}
; {org.hibernate.type.descriptor.java.JdbcTimestampTypeDescriptor=var3266, r10=var1440, r2=var2918, null_type=var3786, java.sql.Timestamp=var1110, $r12=var3981, java.text.SimpleDateFormat=var3807, $r11=var16, java.text.ParseException=var614, $r4=var3859, org.hibernate.HibernateException=var2781, $r14=var3276, $r13=var2720, $r7=var2548, $r8=var3279, $r9=var1656, java.lang.Throwable=var3944, $r15=var53}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.type.descriptor.java.JdbcTimestampTypeDescriptor;	r2 := @parameter0: java.lang.String;	$r12 = new java.sql.Timestamp;	$r11 = new java.text.SimpleDateFormat;	$r4 := @caughtexception;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not parse timestamp string");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r4);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2