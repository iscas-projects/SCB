(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var962 0)
(declare-sort var3992 0)
(declare-sort var1366 0)
(declare-sort var3610 0)
(declare-sort var2359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3610-init () var3610)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getExceptionHeader/-801813485 (var962) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-663296835 (var3610 String var2359) void)
(declare-fun cast-from-var1366-to-var2359 (var1366) var2359)
(declare-const null-var962 var962)
(declare-const null-String String)
(declare-const null-var1366 var1366)
(declare-const var664 var962) ; Statement: r2 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl 
(assert (not (= var664 null-var962)))
(declare-const var3747 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3747 null-String)))
(declare-const var417 var1366) ; Statement: r7 := @parameter1: java.lang.Exception 
(assert (not (= var417 null-var1366)))
(define-const var340 var3610 var3610-init) ; Statement: $r0 = new javax.persistence.PersistenceException 
(define-const var2664 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2664)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2664!1 String)
(assert (= var2664!1 ""))
(assert true)
(define-const var1848 String (getExceptionHeader/-801813485 var664)) ; Statement: $r3 = specialinvoke r2.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: java.lang.String getExceptionHeader()>() 
(assert true)
(define-const var696 String (append/672562846 var2664!1 var1848)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2664!2 String)
(assert (= var2664!2 (str.++ var2664!1 var1848)))
(assert true)
(define-const var625 String (append/672562846 var696 var3747)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var696!1 String)
(assert (= var696!1 (str.++ var696 var3747)))
(assert true)
(define-const var2983 String (toString/-2075883882 var625)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-663296835 var340 var2983 (cast-from-var1366-to-var2359 var417))) ; Statement: specialinvoke $r0.<javax.persistence.PersistenceException: void <init>(java.lang.String,java.lang.Throwable)>($r8, r7) 

(declare-const var340!1 var3610)
(declare-const var2983!1 String)
(declare-const var417!1 var1366)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3610-init=([], javax.persistence.PersistenceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getExceptionHeader/-801813485=([org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-663296835=([javax.persistence.PersistenceException, java.lang.String, java.lang.Throwable], void), cast-from-var1366-to-var2359=([java.lang.Exception], java.lang.Throwable)}
; {var962=org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, var664=r2, var3747=r4, var3992=null_type, var1366=java.lang.Exception, var417=r7, var3610=javax.persistence.PersistenceException, var340=$r0, var2664=$r1, var1848=$r3, var696=$r5, var625=$r6, var2983=$r8, var2359=java.lang.Throwable}
; {org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl=var962, r2=var664, r4=var3747, null_type=var3992, java.lang.Exception=var1366, r7=var417, javax.persistence.PersistenceException=var3610, $r0=var340, $r1=var2664, $r3=var1848, $r5=var696, $r6=var625, $r8=var2983, java.lang.Throwable=var2359}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl;	r4 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.Exception;	$r0 = new javax.persistence.PersistenceException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = specialinvoke r2.<org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl: java.lang.String getExceptionHeader()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<javax.persistence.PersistenceException: void <init>(java.lang.String,java.lang.Throwable)>($r8, r7);	return $r0
;block_num 1