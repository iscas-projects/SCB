(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3395 0)
(declare-sort var755 0)
(declare-sort var2627 0)
(declare-sort var2556 0)
(declare-sort var166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2627-init () var2627)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2556) ClassObject)
(declare-fun cast-from-var3395-to-var2556 (var3395) var2556)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2627 String) void)
(declare-fun cast-from-var2627-to-var166 (var2627) var166)
(declare-const null-var3395 var3395)
(declare-const null-String String)
(declare-const var137 var3395) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var137 null-var3395)))
(declare-const var3664 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3664 null-String)))
(define-const var60 var2627 var2627-init) ; Statement: $r10 = new org.hibernate.MappingException 
(define-const var1871 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1871)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1871!1 String)
(assert (= var1871!1 ""))
(assert true)
(define-const var1543 ClassObject (getClass/1258963082 (cast-from-var3395-to-var2556 var137))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var549 String (getName/-1958580599 var1543)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2942 String (append/672562846 var1871!1 var549)) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1871!2 String)
(assert (= var1871!2 (str.++ var1871!1 var549)))
(assert true)
(define-const var636 String (append/672562846 var2942 " does not support sequences")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support sequences") 
(declare-const var2942!1 String)
(assert (= var2942!1 (str.++ var2942 " does not support sequences")))
(assert true)
(define-const var2375 String (toString/-2075883882 var636)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var60 var2375)) ; Statement: specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7) 

(declare-const var60!1 var2627)
(declare-const var2375!1 String)
(define-const var3865 var166 (cast-from-var2627-to-var166 var60!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2627-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3395-to-var2556=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2627-to-var166=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3395=org.hibernate.dialect.Dialect, var137=r2, var3664=r8, var755=null_type, var2627=org.hibernate.MappingException, var60=$r10, var1871=$r9, var2556=java.lang.Object, var1543=$r3, var549=$r4, var2942=$r5, var636=$r6, var2375=$r7, var166=java.lang.Throwable, var3865=$r11}
; {org.hibernate.dialect.Dialect=var3395, r2=var137, r8=var3664, null_type=var755, org.hibernate.MappingException=var2627, $r10=var60, $r9=var1871, java.lang.Object=var2556, $r3=var1543, $r4=var549, $r5=var2942, $r6=var636, $r7=var2375, java.lang.Throwable=var166, $r11=var3865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.lang.String;	$r10 = new org.hibernate.MappingException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support sequences");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 1