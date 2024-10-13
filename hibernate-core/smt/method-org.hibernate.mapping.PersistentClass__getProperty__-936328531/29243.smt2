(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var296 0)
(declare-sort var2037 0)
(declare-sort var3523 0)
(declare-sort var472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3523-init () var3523)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/-2043384209 (var296) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3523 String) void)
(declare-fun cast-from-var3523-to-var472 (var3523) var472)
(declare-const null-var296 var296)
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var2234 var296) ; Statement: r6 := @this: org.hibernate.mapping.PersistentClass 
(assert (not (= var2234 null-var296)))
(declare-const var3365 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3365 null-String)))
(declare-const var1556 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var1556 null-Iterator)))
(define-const var1172 Bool (Iterator_hasNext/-1669924200 var1556)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r17 = new org.hibernate.MappingException 
(assert (= (ite var1172 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2587 var3523 var3523-init) ; Statement: $r17 = new org.hibernate.MappingException 
(define-const var2971 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2971)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2971!1 String)
(assert (= var2971!1 ""))
(assert true)
(define-const var438 String (append/672562846 var2971!1 "property [")) ; Statement: $r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property [") 
(declare-const var2971!2 String)
(assert (= var2971!2 (str.++ var2971!1 "property [")))
(assert true)
(define-const var3979 String (append/672562846 var438 var3365)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var438!1 String)
(assert (= var438!1 (str.++ var438 var3365)))
(assert true)
(define-const var1987 String (append/672562846 var3979 "] not found on entity [")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not found on entity [") 
(declare-const var3979!1 String)
(assert (= var3979!1 (str.++ var3979 "] not found on entity [")))
(assert true)
(define-const var982 String (getEntityName/-2043384209 var2234)) ; Statement: $r7 = virtualinvoke r6.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(assert true)
(define-const var180 String (append/672562846 var1987 var982)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1987!1 String)
(assert (= var1987!1 (str.++ var1987 var982)))
(assert true)
(define-const var3605 String (append/672562846 var180 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var180!1 String)
(assert (= var180!1 (str.++ var180 "]")))
(assert true)
(define-const var1677 String (toString/-2075883882 var3605)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2587 var1677)) ; Statement: specialinvoke $r17.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11) 

(declare-const var2587!1 var3523)
(declare-const var1677!1 String)
(define-const var43 var472 (cast-from-var3523-to-var472 var2587!1)) ; Statement: $r18 = (java.lang.Throwable) $r17 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3523-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3523-to-var472=([org.hibernate.MappingException], java.lang.Throwable)}
; {var296=org.hibernate.mapping.PersistentClass, var2234=r6, var3365=r3, var2037=null_type, var1556=r0, var1172=$z0, var3523=org.hibernate.MappingException, var2587=$r17, var2971=$r16, var438=$r4, var3979=$r5, var1987=$r8, var982=$r7, var180=$r9, var3605=$r10, var1677=$r11, var472=java.lang.Throwable, var43=$r18}
; {org.hibernate.mapping.PersistentClass=var296, r6=var2234, r3=var3365, null_type=var2037, r0=var1556, $z0=var1172, org.hibernate.MappingException=var3523, $r17=var2587, $r16=var2971, $r4=var438, $r5=var3979, $r8=var1987, $r7=var982, $r9=var180, $r10=var3605, $r11=var1677, java.lang.Throwable=var472, $r18=var43}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.mapping.PersistentClass;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r17 = new org.hibernate.MappingException;	$r17 = new org.hibernate.MappingException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property [");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not found on entity [");	$r7 = virtualinvoke r6.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11);	$r18 = (java.lang.Throwable) $r17;	throw $r18
;block_num 2