(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2476 0)
(declare-sort var390 0)
(declare-sort var2383 0)
(declare-sort var3953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun nature/687862279 (var2476) var390)
(declare-fun getOperator/909501680 (var390) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun conditions/687862279 (var2476) var2383)
(declare-fun var2383_iterator/-912451715 (var2383) Iterator)
(declare-fun var3953_join/-1748220507 (String Iterator) String)
(declare-const null-var2476 var2476)
(declare-const var1827 var2476) ; Statement: r2 := @this: org.hibernate.criterion.Junction 
(assert (not (= var1827 null-var2476)))
(define-const var2906 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2906)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2906!1 String)
(assert (= var2906!1 ""))
(assert true)
(define-const var1859 String (append/-1166366385 var2906!1 40)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2906!2 String)
(assert (str.prefixof var2906!1 var2906!2))
(define-const var2952 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2952)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2952!1 String)
(assert (= var2952!1 ""))
(assert true)
(define-const var1465 String (append/-1166366385 var2952!1 32)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2952!2 String)
(assert (str.prefixof var2952!1 var2952!2))
(define-const var3522 var390 (nature/687862279 var1827)) ; Statement: $r3 = r2.<org.hibernate.criterion.Junction: org.hibernate.criterion.Junction$Nature nature> 
(assert true)
(define-const var2587 String (getOperator/909501680 var3522)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.criterion.Junction$Nature: java.lang.String getOperator()>() 
(assert true)
(define-const var1290 String (append/672562846 var1465 var2587)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1465!1 String)
(assert (= var1465!1 (str.++ var1465 var2587)))
(assert true)
(define-const var2034 String (append/-1166366385 var1290 32)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1290!1 String)
(assert (str.prefixof var1290 var1290!1))
(assert true)
(define-const var3533 String (toString/-2075883882 var2034)) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var934 var2383 (conditions/687862279 var1827)) ; Statement: $r8 = r2.<org.hibernate.criterion.Junction: java.util.List conditions> 
(define-const var2699 Iterator (var2383_iterator/-912451715 var934)) ; Statement: $r9 = interfaceinvoke $r8.<java.util.List: java.util.Iterator iterator()>() 
(define-const var2314 String (var3953_join/-1748220507 var3533 var2699)) ; Statement: $r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String join(java.lang.String,java.util.Iterator)>($r10, $r9) 
(assert true)
(define-const var862 String (append/672562846 var1859 var2314)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1859!1 String)
(assert (= var1859!1 (str.++ var1859 var2314)))
(assert true)
(define-const var1279 String (append/-1166366385 var862 41)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var862!1 String)
(assert (str.prefixof var862 var862!1))
(assert true)
(define-const var290 String (toString/-2075883882 var1279)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), nature/687862279=([org.hibernate.criterion.Junction], org.hibernate.criterion.Junction$Nature), getOperator/909501680=([org.hibernate.criterion.Junction$Nature], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), conditions/687862279=([org.hibernate.criterion.Junction], java.util.List), var2383_iterator/-912451715=([java.util.List], java.util.Iterator), var3953_join/-1748220507=([java.lang.String, java.util.Iterator], java.lang.String)}
; {var2476=org.hibernate.criterion.Junction, var1827=r2, var2906=$r0, var1859=$r12, var2952=$r1, var1465=$r5, var390=org.hibernate.criterion.Junction$Nature, var3522=$r3, var2587=$r4, var1290=$r6, var2034=$r7, var3533=$r10, var2383=java.util.List, var934=$r8, var2699=$r9, var3953=org.hibernate.internal.util.StringHelper, var2314=$r11, var862=$r13, var1279=$r14, var290=$r15}
; {org.hibernate.criterion.Junction=var2476, r2=var1827, $r0=var2906, $r12=var1859, $r1=var2952, $r5=var1465, org.hibernate.criterion.Junction$Nature=var390, $r3=var3522, $r4=var2587, $r6=var1290, $r7=var2034, $r10=var3533, java.util.List=var2383, $r8=var934, $r9=var2699, org.hibernate.internal.util.StringHelper=var3953, $r11=var2314, $r13=var862, $r14=var1279, $r15=var290}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.hibernate.criterion.Junction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r2.<org.hibernate.criterion.Junction: org.hibernate.criterion.Junction$Nature nature>;	$r4 = virtualinvoke $r3.<org.hibernate.criterion.Junction$Nature: java.lang.String getOperator()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r2.<org.hibernate.criterion.Junction: java.util.List conditions>;	$r9 = interfaceinvoke $r8.<java.util.List: java.util.Iterator iterator()>();	$r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String join(java.lang.String,java.util.Iterator)>($r10, $r9);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 1