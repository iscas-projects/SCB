(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3276 0)
(declare-sort var1516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun originalMessage/1506974760 (var3276) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun wasSetter/1600969328 (var3276) Bool)
(declare-fun persistentClass/1600969328 (var3276) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun propertyName/1600969328 (var3276) String)
(declare-fun var1516_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3276 var3276)
(declare-const var2885 var3276) ; Statement: r1 := @this: org.hibernate.PropertyAccessException 
(assert (not (= var2885 null-var3276)))
(define-const var1053 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1053)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1053!1 String)
(assert (= var1053!1 ""))
(assert true)
(define-const var1812 String (originalMessage/1506974760 var2885)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.PropertyAccessException: java.lang.String originalMessage()>() 
(assert true)
(define-const var3201 String (append/672562846 var1053!1 var1812)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1053!2 String)
(assert (= var1053!2 (str.++ var1053!1 var1812)))
(define-const var3536 Bool (wasSetter/1600969328 var2885)) ; Statement: $z0 = r1.<org.hibernate.PropertyAccessException: boolean wasSetter> 
 ; Statement: if $z0 == 0 goto $r11 = " getter of " 
(assert (= (ite var3536 1 0) 0)) ; Cond: $z0 == 0 
(define-const var109 String " getter of ") ; Statement: $r11 = " getter of " 
(assert true) ; Non Conditional
(assert true)
(define-const var130 String (append/672562846 var3201 var109)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3201!1 String)
(assert (= var3201!1 (str.++ var3201 var109)))
(define-const var221 ClassObject (persistentClass/1600969328 var2885)) ; Statement: $r4 = r1.<org.hibernate.PropertyAccessException: java.lang.Class persistentClass> 
(assert true)
(define-const var2544 String (getName/-1958580599 var221)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var2533 String (propertyName/1600969328 var2885)) ; Statement: $r5 = r1.<org.hibernate.PropertyAccessException: java.lang.String propertyName> 
(define-const var3995 String (var1516_qualify/-1563731603 var2544 var2533)) ; Statement: $r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r6, $r5) 
(assert true)
(define-const var2662 String (append/672562846 var130 var3995)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var130!1 String)
(assert (= var130!1 (str.++ var130 var3995)))
(assert true)
(define-const var822 String (toString/-2075883882 var2662)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), originalMessage/1506974760=([org.hibernate.PropertyAccessException], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), wasSetter/1600969328=([org.hibernate.PropertyAccessException], boolean), persistentClass/1600969328=([org.hibernate.PropertyAccessException], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), propertyName/1600969328=([org.hibernate.PropertyAccessException], java.lang.String), var1516_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3276=org.hibernate.PropertyAccessException, var2885=r1, var1053=$r0, var1812=$r2, var3201=$r3, var3536=$z0, var109=$r11, var130=$r8, var221=$r4, var2544=$r6, var2533=$r5, var1516=org.hibernate.internal.util.StringHelper, var3995=$r7, var2662=$r9, var822=$r10}
; {org.hibernate.PropertyAccessException=var3276, r1=var2885, $r0=var1053, $r2=var1812, $r3=var3201, $z0=var3536, $r11=var109, $r8=var130, $r4=var221, $r6=var2544, $r5=var2533, org.hibernate.internal.util.StringHelper=var1516, $r7=var3995, $r9=var2662, $r10=var822}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.PropertyAccessException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.PropertyAccessException: java.lang.String originalMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$z0 = r1.<org.hibernate.PropertyAccessException: boolean wasSetter>;	if $z0 == 0 goto $r11 = " getter of ";	$r11 = " getter of ";	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r4 = r1.<org.hibernate.PropertyAccessException: java.lang.Class persistentClass>;	$r6 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r1.<org.hibernate.PropertyAccessException: java.lang.String propertyName>;	$r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r6, $r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3