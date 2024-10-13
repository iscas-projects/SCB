(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3220 0)
(declare-sort var1745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var1745) String)
(declare-fun cast-from-var3220-to-var1745 (var3220) var1745)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/-1257717567 (var3220) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3220 var3220)
(declare-const var1765 var3220) ; Statement: r1 := @this: org.hibernate.cfg.ClassPropertyHolder 
(assert (not (= var1765 null-var3220)))
(define-const var1272 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1272)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1272!1 String)
(assert (= var1272!1 ""))
(assert true)
(define-const var1501 String (toString/-522406933 (cast-from-var3220-to-var1745 var1765))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1906 String (append/672562846 var1272!1 var1501)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1272!2 String)
(assert (= var1272!2 (str.++ var1272!1 var1501)))
(assert true)
(define-const var739 String (append/672562846 var1906 "(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1906!1 String)
(assert (= var1906!1 (str.++ var1906 "(")))
(assert true)
(define-const var3339 String (getEntityName/-1257717567 var1765)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.cfg.ClassPropertyHolder: java.lang.String getEntityName()>() 
(assert true)
(define-const var1715 String (append/672562846 var739 var3339)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var739!1 String)
(assert (= var739!1 (str.++ var739 var3339)))
(assert true)
(define-const var2996 String (append/672562846 var1715 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1715!1 String)
(assert (= var1715!1 (str.++ var1715 ")")))
(assert true)
(define-const var3542 String (toString/-2075883882 var2996)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3220-to-var1745=([org.hibernate.cfg.ClassPropertyHolder], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/-1257717567=([org.hibernate.cfg.ClassPropertyHolder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3220=org.hibernate.cfg.ClassPropertyHolder, var1765=r1, var1272=$r0, var1745=java.lang.Object, var1501=$r2, var1906=$r3, var739=$r5, var3339=$r4, var1715=$r6, var2996=$r7, var3542=$r8}
; {org.hibernate.cfg.ClassPropertyHolder=var3220, r1=var1765, $r0=var1272, java.lang.Object=var1745, $r2=var1501, $r3=var1906, $r5=var739, $r4=var3339, $r6=var1715, $r7=var2996, $r8=var3542}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.ClassPropertyHolder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = virtualinvoke r1.<org.hibernate.cfg.ClassPropertyHolder: java.lang.String getEntityName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1