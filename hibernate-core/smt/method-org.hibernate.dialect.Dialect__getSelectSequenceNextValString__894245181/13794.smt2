(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var48 0)
(declare-sort var3767 0)
(declare-sort var1127 0)
(declare-sort var1460 0)
(declare-sort var2159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1127-init () var1127)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1460) ClassObject)
(declare-fun cast-from-var48-to-var1460 (var48) var1460)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1127 String) void)
(declare-fun cast-from-var1127-to-var2159 (var1127) var2159)
(declare-const null-var48 var48)
(declare-const null-String String)
(declare-const var2258 var48) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var2258 null-var48)))
(declare-const var66 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var66 null-String)))
(define-const var268 var1127 var1127-init) ; Statement: $r10 = new org.hibernate.MappingException 
(define-const var1313 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1313)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1313!1 String)
(assert (= var1313!1 ""))
(assert true)
(define-const var468 ClassObject (getClass/1258963082 (cast-from-var48-to-var1460 var2258))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3692 String (getName/-1958580599 var468)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var403 String (append/672562846 var1313!1 var3692)) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1313!2 String)
(assert (= var1313!2 (str.++ var1313!1 var3692)))
(assert true)
(define-const var3162 String (append/672562846 var403 " does not support sequences")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support sequences") 
(declare-const var403!1 String)
(assert (= var403!1 (str.++ var403 " does not support sequences")))
(assert true)
(define-const var1301 String (toString/-2075883882 var3162)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var268 var1301)) ; Statement: specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7) 

(declare-const var268!1 var1127)
(declare-const var1301!1 String)
(define-const var2335 var2159 (cast-from-var1127-to-var2159 var268!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1127-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var48-to-var1460=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1127-to-var2159=([org.hibernate.MappingException], java.lang.Throwable)}
; {var48=org.hibernate.dialect.Dialect, var2258=r2, var66=r8, var3767=null_type, var1127=org.hibernate.MappingException, var268=$r10, var1313=$r9, var1460=java.lang.Object, var468=$r3, var3692=$r4, var403=$r5, var3162=$r6, var1301=$r7, var2159=java.lang.Throwable, var2335=$r11}
; {org.hibernate.dialect.Dialect=var48, r2=var2258, r8=var66, null_type=var3767, org.hibernate.MappingException=var1127, $r10=var268, $r9=var1313, java.lang.Object=var1460, $r3=var468, $r4=var3692, $r5=var403, $r6=var3162, $r7=var1301, java.lang.Throwable=var2159, $r11=var2335}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.lang.String;	$r10 = new org.hibernate.MappingException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support sequences");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 1