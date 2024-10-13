(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var253 0)
(declare-sort var1740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun originalMessage/1506974760 (var253) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun wasSetter/1600969328 (var253) Bool)
(declare-fun persistentClass/1600969328 (var253) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun propertyName/1600969328 (var253) String)
(declare-fun var1740_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var253 var253)
(declare-const var1183 var253) ; Statement: r1 := @this: org.hibernate.PropertyAccessException 
(assert (not (= var1183 null-var253)))
(define-const var633 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var633)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var633!1 String)
(assert (= var633!1 ""))
(assert true)
(define-const var421 String (originalMessage/1506974760 var1183)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.PropertyAccessException: java.lang.String originalMessage()>() 
(assert true)
(define-const var1520 String (append/672562846 var633!1 var421)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var633!2 String)
(assert (= var633!2 (str.++ var633!1 var421)))
(define-const var111 Bool (wasSetter/1600969328 var1183)) ; Statement: $z0 = r1.<org.hibernate.PropertyAccessException: boolean wasSetter> 
 ; Statement: if $z0 == 0 goto $r11 = " getter of " 
(assert (not (= (ite var111 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2544 String " setter of ") ; Statement: $r11 = " setter of " 
 ; Statement: goto [?= $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1259 String (append/672562846 var1520 var2544)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1520!1 String)
(assert (= var1520!1 (str.++ var1520 var2544)))
(define-const var1872 ClassObject (persistentClass/1600969328 var1183)) ; Statement: $r4 = r1.<org.hibernate.PropertyAccessException: java.lang.Class persistentClass> 
(assert true)
(define-const var3270 String (getName/-1958580599 var1872)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(define-const var1535 String (propertyName/1600969328 var1183)) ; Statement: $r5 = r1.<org.hibernate.PropertyAccessException: java.lang.String propertyName> 
(define-const var2859 String (var1740_qualify/-1563731603 var3270 var1535)) ; Statement: $r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r6, $r5) 
(assert true)
(define-const var2256 String (append/672562846 var1259 var2859)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1259!1 String)
(assert (= var1259!1 (str.++ var1259 var2859)))
(assert true)
(define-const var1229 String (toString/-2075883882 var2256)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), originalMessage/1506974760=([org.hibernate.PropertyAccessException], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), wasSetter/1600969328=([org.hibernate.PropertyAccessException], boolean), persistentClass/1600969328=([org.hibernate.PropertyAccessException], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), propertyName/1600969328=([org.hibernate.PropertyAccessException], java.lang.String), var1740_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var253=org.hibernate.PropertyAccessException, var1183=r1, var633=$r0, var421=$r2, var1520=$r3, var111=$z0, var2544=$r11, var1259=$r8, var1872=$r4, var3270=$r6, var1535=$r5, var1740=org.hibernate.internal.util.StringHelper, var2859=$r7, var2256=$r9, var1229=$r10}
; {org.hibernate.PropertyAccessException=var253, r1=var1183, $r0=var633, $r2=var421, $r3=var1520, $z0=var111, $r11=var2544, $r8=var1259, $r4=var1872, $r6=var3270, $r5=var1535, org.hibernate.internal.util.StringHelper=var1740, $r7=var2859, $r9=var2256, $r10=var1229}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.PropertyAccessException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.PropertyAccessException: java.lang.String originalMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$z0 = r1.<org.hibernate.PropertyAccessException: boolean wasSetter>;	if $z0 == 0 goto $r11 = " getter of ";	$r11 = " setter of ";	goto [?= $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r4 = r1.<org.hibernate.PropertyAccessException: java.lang.Class persistentClass>;	$r6 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r5 = r1.<org.hibernate.PropertyAccessException: java.lang.String propertyName>;	$r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r6, $r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3