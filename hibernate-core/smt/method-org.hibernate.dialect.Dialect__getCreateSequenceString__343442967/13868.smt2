(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2602 0)
(declare-sort var882 0)
(declare-sort var3078 0)
(declare-sort var1279 0)
(declare-sort var706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3078-init () var3078)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1279) ClassObject)
(declare-fun cast-from-var2602-to-var1279 (var2602) var1279)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3078 String) void)
(declare-fun cast-from-var3078-to-var706 (var3078) var706)
(declare-const null-var2602 var2602)
(declare-const null-String String)
(declare-const var1165 var2602) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1165 null-var2602)))
(declare-const var2074 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2074 null-String)))
(define-const var3956 var3078 var3078-init) ; Statement: $r10 = new org.hibernate.MappingException 
(define-const var1522 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1522)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1522!1 String)
(assert (= var1522!1 ""))
(assert true)
(define-const var3500 ClassObject (getClass/1258963082 (cast-from-var2602-to-var1279 var1165))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1537 String (getName/-1958580599 var3500)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3548 String (append/672562846 var1522!1 var1537)) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1522!2 String)
(assert (= var1522!2 (str.++ var1522!1 var1537)))
(assert true)
(define-const var1253 String (append/672562846 var3548 " does not support sequences")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support sequences") 
(declare-const var3548!1 String)
(assert (= var3548!1 (str.++ var3548 " does not support sequences")))
(assert true)
(define-const var1877 String (toString/-2075883882 var1253)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3956 var1877)) ; Statement: specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7) 

(declare-const var3956!1 var3078)
(declare-const var1877!1 String)
(define-const var3257 var706 (cast-from-var3078-to-var706 var3956!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3078-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2602-to-var1279=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3078-to-var706=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2602=org.hibernate.dialect.Dialect, var1165=r2, var2074=r8, var882=null_type, var3078=org.hibernate.MappingException, var3956=$r10, var1522=$r9, var1279=java.lang.Object, var3500=$r3, var1537=$r4, var3548=$r5, var1253=$r6, var1877=$r7, var706=java.lang.Throwable, var3257=$r11}
; {org.hibernate.dialect.Dialect=var2602, r2=var1165, r8=var2074, null_type=var882, org.hibernate.MappingException=var3078, $r10=var3956, $r9=var1522, java.lang.Object=var1279, $r3=var3500, $r4=var1537, $r5=var3548, $r6=var1253, $r7=var1877, java.lang.Throwable=var706, $r11=var3257}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.lang.String;	$r10 = new org.hibernate.MappingException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support sequences");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 1