(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3746 0)
(declare-sort var3132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun quoted/568060284 (var3746) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/568060284 (var3746) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3132_safeInterning/-733881672 (String) String)
(declare-const null-var3746 var3746)
(declare-const var457 var3746) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var457 null-var3746)))
(define-const var2640 Bool (quoted/568060284 var457)) ; Statement: $z0 = r0.<org.hibernate.mapping.Column: boolean quoted> 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert (not (= (ite var2640 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2475 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2475)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2475!1 String)
(assert (= var2475!1 ""))
(assert true)
(define-const var3957 String (append/672562846 var2475!1 "`")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var2475!2 String)
(assert (= var2475!2 (str.++ var2475!1 "`")))
(define-const var1094 String (name/568060284 var457)) ; Statement: $r3 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert true)
(define-const var2895 String (append/672562846 var3957 var1094)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3957!1 String)
(assert (= var3957!1 (str.++ var3957 var1094)))
(assert true)
(define-const var1192 String (append/672562846 var2895 "`")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var2895!1 String)
(assert (= var2895!1 (str.++ var2895 "`")))
(assert true)
(define-const var83 String (toString/-2075883882 var1192)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(define-const var1429 String (var3132_safeInterning/-733881672 var83)) ; Statement: $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r7) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {quoted/568060284=([org.hibernate.mapping.Column], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/568060284=([org.hibernate.mapping.Column], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3132_safeInterning/-733881672=([java.lang.String], java.lang.String)}
; {var3746=org.hibernate.mapping.Column, var457=r0, var2640=$z0, var2475=$r2, var3957=$r4, var1094=$r3, var2895=$r5, var1192=$r6, var83=$r7, var3132=org.hibernate.internal.util.StringHelper, var1429=$r1}
; {org.hibernate.mapping.Column=var3746, r0=var457, $z0=var2640, $r2=var2475, $r4=var3957, $r3=var1094, $r5=var2895, $r6=var1192, $r7=var83, org.hibernate.internal.util.StringHelper=var3132, $r1=var1429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Column;	$z0 = r0.<org.hibernate.mapping.Column: boolean quoted>;	if $z0 == 0 goto $r7 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r3 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r7)];	$r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r7);	return $r1
;block_num 3