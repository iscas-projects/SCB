(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var390 0)
(declare-sort var3165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3165) ClassObject)
(declare-fun cast-from-var390-to-var3165 (var390) var3165)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1157832030 (var390) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var390 var390)
(declare-const var2235 var390) ; Statement: r1 := @this: org.hibernate.mapping.PropertyGeneration 
(assert (not (= var2235 null-var390)))
(define-const var9 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var9)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var9!1 String)
(assert (= var9!1 ""))
(assert true)
(define-const var2997 ClassObject (getClass/1258963082 (cast-from-var390-to-var3165 var2235))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var784 String (getName/-1958580599 var2997)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1259 String (append/672562846 var9!1 var784)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var9!2 String)
(assert (= var9!2 (str.++ var9!1 var784)))
(assert true)
(define-const var3954 String (append/672562846 var1259 "(")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1259!1 String)
(assert (= var1259!1 (str.++ var1259 "(")))
(assert true)
(define-const var2418 String (getName/-1157832030 var2235)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.mapping.PropertyGeneration: java.lang.String getName()>() 
(assert true)
(define-const var1861 String (append/672562846 var3954 var2418)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3954!1 String)
(assert (= var3954!1 (str.++ var3954 var2418)))
(assert true)
(define-const var1175 String (append/672562846 var1861 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1861!1 String)
(assert (= var1861!1 (str.++ var1861 ")")))
(assert true)
(define-const var806 String (toString/-2075883882 var1175)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var390-to-var3165=([org.hibernate.mapping.PropertyGeneration], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1157832030=([org.hibernate.mapping.PropertyGeneration], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var390=org.hibernate.mapping.PropertyGeneration, var2235=r1, var9=$r0, var3165=java.lang.Object, var2997=$r2, var784=$r3, var1259=$r4, var3954=$r6, var2418=$r5, var1861=$r7, var1175=$r8, var806=$r9}
; {org.hibernate.mapping.PropertyGeneration=var390, r1=var2235, $r0=var9, java.lang.Object=var3165, $r2=var2997, $r3=var784, $r4=var1259, $r6=var3954, $r5=var2418, $r7=var1861, $r8=var1175, $r9=var806}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.PropertyGeneration;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = virtualinvoke r1.<org.hibernate.mapping.PropertyGeneration: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1