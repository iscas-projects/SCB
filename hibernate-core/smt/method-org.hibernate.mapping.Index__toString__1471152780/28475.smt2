(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var946 0)
(declare-sort var378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var378) ClassObject)
(declare-fun cast-from-var946-to-var378 (var946) var378)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-354198463 (var946) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var946 var946)
(declare-const var854 var946) ; Statement: r1 := @this: org.hibernate.mapping.Index 
(assert (not (= var854 null-var946)))
(define-const var1916 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1916)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1916!1 String)
(assert (= var1916!1 ""))
(assert true)
(define-const var10 ClassObject (getClass/1258963082 (cast-from-var946-to-var378 var854))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3344 String (getName/-1958580599 var10)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3851 String (append/672562846 var1916!1 var3344)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1916!2 String)
(assert (= var1916!2 (str.++ var1916!1 var3344)))
(assert true)
(define-const var3501 String (append/672562846 var3851 "(")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3851!1 String)
(assert (= var3851!1 (str.++ var3851 "(")))
(assert true)
(define-const var2498 String (getName/-354198463 var854)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>() 
(assert true)
(define-const var3229 String (append/672562846 var3501 var2498)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3501!1 String)
(assert (= var3501!1 (str.++ var3501 var2498)))
(assert true)
(define-const var3832 String (append/672562846 var3229 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3229!1 String)
(assert (= var3229!1 (str.++ var3229 ")")))
(assert true)
(define-const var760 String (toString/-2075883882 var3832)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var946-to-var378=([org.hibernate.mapping.Index], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-354198463=([org.hibernate.mapping.Index], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var946=org.hibernate.mapping.Index, var854=r1, var1916=$r0, var378=java.lang.Object, var10=$r2, var3344=$r3, var3851=$r4, var3501=$r6, var2498=$r5, var3229=$r7, var3832=$r8, var760=$r9}
; {org.hibernate.mapping.Index=var946, r1=var854, $r0=var1916, java.lang.Object=var378, $r2=var10, $r3=var3344, $r4=var3851, $r6=var3501, $r5=var2498, $r7=var3229, $r8=var3832, $r9=var760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Index;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1