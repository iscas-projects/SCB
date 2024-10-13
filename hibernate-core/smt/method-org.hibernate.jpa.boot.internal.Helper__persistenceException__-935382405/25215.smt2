(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3777 0)
(declare-sort var317 0)
(declare-sort var1277 0)
(declare-sort var1418 0)
(declare-sort var2297 0)
(declare-sort var2172 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1418-init () var1418)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2297_getExceptionHeader/2135288839 (var3777) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-663296835 (var1418 String var2172) void)
(declare-fun cast-from-var1277-to-var2172 (var1277) var2172)
(declare-const null-var3777 var3777)
(declare-const null-String String)
(declare-const null-var1277 var1277)
(declare-const var1772 var3777) ; Statement: r2 := @parameter0: org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor 
(assert (not (= var1772 null-var3777)))
(declare-const var3511 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3511 null-String)))
(declare-const var210 var1277) ; Statement: r7 := @parameter2: java.lang.Exception 
(assert (not (= var210 null-var1277)))
(define-const var2752 var1418 var1418-init) ; Statement: $r0 = new javax.persistence.PersistenceException 
(define-const var434 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var434)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var434!1 String)
(assert (= var434!1 ""))
(define-const var1588 String (var2297_getExceptionHeader/2135288839 var1772)) ; Statement: $r3 = staticinvoke <org.hibernate.jpa.boot.internal.Helper: java.lang.String getExceptionHeader(org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor)>(r2) 
(assert true)
(define-const var3788 String (append/672562846 var434!1 var1588)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var434!2 String)
(assert (= var434!2 (str.++ var434!1 var1588)))
(assert true)
(define-const var92 String (append/672562846 var3788 var3511)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3788!1 String)
(assert (= var3788!1 (str.++ var3788 var3511)))
(assert true)
(define-const var1756 String (toString/-2075883882 var92)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-663296835 var2752 var1756 (cast-from-var1277-to-var2172 var210))) ; Statement: specialinvoke $r0.<javax.persistence.PersistenceException: void <init>(java.lang.String,java.lang.Throwable)>($r8, r7) 

(declare-const var2752!1 var1418)
(declare-const var1756!1 String)
(declare-const var210!1 var1277)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1418-init=([], javax.persistence.PersistenceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2297_getExceptionHeader/2135288839=([org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-663296835=([javax.persistence.PersistenceException, java.lang.String, java.lang.Throwable], void), cast-from-var1277-to-var2172=([java.lang.Exception], java.lang.Throwable)}
; {var3777=org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor, var1772=r2, var3511=r4, var317=null_type, var1277=java.lang.Exception, var210=r7, var1418=javax.persistence.PersistenceException, var2752=$r0, var434=$r1, var2297=org.hibernate.jpa.boot.internal.Helper, var1588=$r3, var3788=$r5, var92=$r6, var1756=$r8, var2172=java.lang.Throwable}
; {org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor=var3777, r2=var1772, r4=var3511, null_type=var317, java.lang.Exception=var1277, r7=var210, javax.persistence.PersistenceException=var1418, $r0=var2752, $r1=var434, org.hibernate.jpa.boot.internal.Helper=var2297, $r3=var1588, $r5=var3788, $r6=var92, $r8=var1756, java.lang.Throwable=var2172}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor;	r4 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.Exception;	$r0 = new javax.persistence.PersistenceException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <org.hibernate.jpa.boot.internal.Helper: java.lang.String getExceptionHeader(org.hibernate.jpa.boot.spi.PersistenceUnitDescriptor)>(r2);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<javax.persistence.PersistenceException: void <init>(java.lang.String,java.lang.Throwable)>($r8, r7);	return $r0
;block_num 1