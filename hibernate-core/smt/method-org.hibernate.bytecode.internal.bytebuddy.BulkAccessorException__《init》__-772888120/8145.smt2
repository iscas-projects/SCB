(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1563 0)
(declare-sort var3572 0)
(declare-sort var3701 0)
(declare-sort var2470 0)
(declare-sort var1712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2470 String var1712) void)
(declare-fun cast-from-var1563-to-var2470 (var1563) var2470)
(declare-fun cast-from-var3701-to-var1712 (var3701) var1712)
(declare-fun index/-389869432 (var1563) Int)
(declare-const null-var1563 var1563)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3701 var3701)
(declare-const var1500 var1563) ; Statement: r0 := @this: org.hibernate.bytecode.internal.bytebuddy.BulkAccessorException 
(assert (not (= var1500 null-var1563)))
(declare-const var892 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var892 null-String)))
(declare-const var3096 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3096 null-Int)))
(declare-const var2095 var3701) ; Statement: r6 := @parameter2: java.lang.Exception 
(assert (not (= var2095 null-var3701)))
(define-const var2533 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2533)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2533!1 String)
(assert (= var2533!1 ""))
(assert true)
(define-const var1873 String (append/672562846 var2533!1 var892)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2533!2 String)
(assert (= var2533!2 (str.++ var2533!1 var892)))
(assert true)
(define-const var457 String (append/672562846 var1873 " : @")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : @") 
(declare-const var1873!1 String)
(assert (= var1873!1 (str.++ var1873 " : @")))
(assert true)
(define-const var1041 String (append/-1001720160 var457 var3096)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var457!1 String)
(assert (str.prefixof var457 var457!1))
(assert true)
(define-const var1232 String (toString/-2075883882 var1041)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 (cast-from-var1563-to-var2470 var1500) var1232 (cast-from-var3701-to-var1712 var2095))) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r7, r6) 

(declare-const var1500!1 var1563)
(declare-const var1232!1 String)
(declare-const var2095!1 var3701)
(declare-const var1500!2 var1563)
(assert (not (= var1500!2 null-var1563)))
(assert (= (index/-389869432 var1500!2) var3096)) ; Statement: r0.<org.hibernate.bytecode.internal.bytebuddy.BulkAccessorException: int index> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var1563-to-var2470=([org.hibernate.bytecode.internal.bytebuddy.BulkAccessorException], org.hibernate.HibernateException), cast-from-var3701-to-var1712=([java.lang.Exception], java.lang.Throwable), index/-389869432=([org.hibernate.bytecode.internal.bytebuddy.BulkAccessorException], int)}
; {var1563=org.hibernate.bytecode.internal.bytebuddy.BulkAccessorException, var1500=r0, var892=r2, var3572=null_type, var3096=i0, var3701=java.lang.Exception, var2095=r6, var2533=$r1, var1873=$r3, var457=$r4, var1041=$r5, var1232=$r7, var2470=org.hibernate.HibernateException, var1712=java.lang.Throwable}
; {org.hibernate.bytecode.internal.bytebuddy.BulkAccessorException=var1563, r0=var1500, r2=var892, null_type=var3572, i0=var3096, java.lang.Exception=var3701, r6=var2095, $r1=var2533, $r3=var1873, $r4=var457, $r5=var1041, $r7=var1232, org.hibernate.HibernateException=var2470, java.lang.Throwable=var1712}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.bytecode.internal.bytebuddy.BulkAccessorException;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r6 := @parameter2: java.lang.Exception;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : @");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r7, r6);	r0.<org.hibernate.bytecode.internal.bytebuddy.BulkAccessorException: int index> = i0;	return
;block_num 1