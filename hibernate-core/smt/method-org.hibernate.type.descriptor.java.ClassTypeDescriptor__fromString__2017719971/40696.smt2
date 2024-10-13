(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2039 0)
(declare-sort var1606 0)
(declare-sort var1129 0)
(declare-sort var3604 0)
(declare-sort var2138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3604-init () var3604)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3604 String) void)
(declare-fun cast-from-var3604-to-var2138 (var3604) var2138)
(declare-const null-var2039 var2039)
(declare-const null-String String)
(declare-const null-var1129 var1129)
(declare-const var3285 var2039) ; Statement: r8 := @this: org.hibernate.type.descriptor.java.ClassTypeDescriptor 
(assert (not (= var3285 null-var2039)))
(declare-const var3920 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3920 null-String)))
 ; Statement: if r0 != null goto $r1 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.Class classForName(java.lang.String)>(r0) 
(assert (not (not (= var3920 null-String)))) ; Negate: Cond: r0 != null  
(declare-const var3473 var1129) ; Statement: $r2 := @caughtexception 
(assert (not (= var3473 null-var1129)))
(define-const var1333 var3604 var3604-init) ; Statement: $r10 = new org.hibernate.HibernateException 
(define-const var3429 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3429)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3429!1 String)
(assert (= var3429!1 ""))
(assert true)
(define-const var848 String (append/672562846 var3429!1 "Unable to locate named class ")) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate named class ") 
(declare-const var3429!2 String)
(assert (= var3429!2 (str.++ var3429!1 "Unable to locate named class ")))
(assert true)
(define-const var1170 String (append/672562846 var848 var3920)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var848!1 String)
(assert (= var848!1 (str.++ var848 var3920)))
(assert true)
(define-const var565 String (toString/-2075883882 var1170)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1333 var565)) ; Statement: specialinvoke $r10.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var1333!1 var3604)
(declare-const var565!1 String)
(define-const var3933 var2138 (cast-from-var3604-to-var2138 var1333!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3604-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3604-to-var2138=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2039=org.hibernate.type.descriptor.java.ClassTypeDescriptor, var3285=r8, var3920=r0, var1606=null_type, var1129=java.lang.ClassNotFoundException, var3473=$r2, var3604=org.hibernate.HibernateException, var1333=$r10, var3429=$r9, var848=$r5, var1170=$r6, var565=$r7, var2138=java.lang.Throwable, var3933=$r11}
; {org.hibernate.type.descriptor.java.ClassTypeDescriptor=var2039, r8=var3285, r0=var3920, null_type=var1606, java.lang.ClassNotFoundException=var1129, $r2=var3473, org.hibernate.HibernateException=var3604, $r10=var1333, $r9=var3429, $r5=var848, $r6=var1170, $r7=var565, java.lang.Throwable=var2138, $r11=var3933}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.type.descriptor.java.ClassTypeDescriptor;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.Class classForName(java.lang.String)>(r0);	$r2 := @caughtexception;	$r10 = new org.hibernate.HibernateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate named class ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 2