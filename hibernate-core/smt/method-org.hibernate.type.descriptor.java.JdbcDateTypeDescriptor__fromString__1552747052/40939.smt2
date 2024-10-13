(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1349 0)
(declare-sort var288 0)
(declare-sort var3981 0)
(declare-sort var2742 0)
(declare-sort var3757 0)
(declare-sort var2211 0)
(declare-sort var3886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3981-init () var3981)
(declare-fun var2742-init () var2742)
(declare-fun var2211-init () var2211)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2211 String var3886) void)
(declare-fun cast-from-var3757-to-var3886 (var3757) var3886)
(declare-fun cast-from-var2211-to-var3886 (var2211) var3886)
(declare-const null-var1349 var1349)
(declare-const null-String String)
(declare-const null-var3757 var3757)
(declare-const var2583 var1349) ; Statement: r10 := @this: org.hibernate.type.descriptor.java.JdbcDateTypeDescriptor 
(assert (not (= var2583 null-var1349)))
(declare-const var214 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var214 null-String)))
(define-const var79 var3981 var3981-init) ; Statement: $r12 = new java.util.Date 
(define-const var3904 var2742 var2742-init) ; Statement: $r11 = new java.text.SimpleDateFormat 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2073 var3757) ; Statement: $r4 := @caughtexception 
(assert (not (= var2073 null-var3757)))
(define-const var2975 var2211 var2211-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var2558 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2558)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2558!1 String)
(assert (= var2558!1 ""))
(assert true)
(define-const var3085 String (append/672562846 var2558!1 "could not parse date string")) ; Statement: $r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not parse date string") 
(declare-const var2558!2 String)
(assert (= var2558!2 (str.++ var2558!1 "could not parse date string")))
(assert true)
(define-const var534 String (append/672562846 var3085 var214)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3085!1 String)
(assert (= var3085!1 (str.++ var3085 var214)))
(assert true)
(define-const var1563 String (toString/-2075883882 var534)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var2975 var1563 (cast-from-var3757-to-var3886 var2073))) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r4) 

(declare-const var2975!1 var2211)
(declare-const var1563!1 String)
(declare-const var2073!1 var3757)
(define-const var218 var3886 (cast-from-var2211-to-var3886 var2975!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3981-init=([], java.util.Date), var2742-init=([], java.text.SimpleDateFormat), var2211-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3757-to-var3886=([java.text.ParseException], java.lang.Throwable), cast-from-var2211-to-var3886=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1349=org.hibernate.type.descriptor.java.JdbcDateTypeDescriptor, var2583=r10, var214=r2, var288=null_type, var3981=java.util.Date, var79=$r12, var2742=java.text.SimpleDateFormat, var3904=$r11, var3757=java.text.ParseException, var2073=$r4, var2211=org.hibernate.HibernateException, var2975=$r14, var2558=$r13, var3085=$r7, var534=$r8, var1563=$r9, var3886=java.lang.Throwable, var218=$r15}
; {org.hibernate.type.descriptor.java.JdbcDateTypeDescriptor=var1349, r10=var2583, r2=var214, null_type=var288, java.util.Date=var3981, $r12=var79, java.text.SimpleDateFormat=var2742, $r11=var3904, java.text.ParseException=var3757, $r4=var2073, org.hibernate.HibernateException=var2211, $r14=var2975, $r13=var2558, $r7=var3085, $r8=var534, $r9=var1563, java.lang.Throwable=var3886, $r15=var218}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.type.descriptor.java.JdbcDateTypeDescriptor;	r2 := @parameter0: java.lang.String;	$r12 = new java.util.Date;	$r11 = new java.text.SimpleDateFormat;	$r4 := @caughtexception;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not parse date string");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r4);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2