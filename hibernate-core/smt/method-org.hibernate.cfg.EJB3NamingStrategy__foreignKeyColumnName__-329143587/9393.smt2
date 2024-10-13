(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2396 0)
(declare-sort var2715 0)
(declare-sort var509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var509_unqualify/-238008441 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun columnName/410591817 (var2396 String) String)
(declare-const null-var2396 var2396)
(declare-const null-String String)
(declare-const var831 var2396) ; Statement: r2 := @this: org.hibernate.cfg.EJB3NamingStrategy 
(assert (not (= var831 null-var2396)))
(declare-const var2273 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2273 null-String)))
(declare-const var184 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var184 null-String)))
(declare-const var3956 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3956 null-String)))
(declare-const var885 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var885 null-String)))
 ; Statement: if r0 == null goto $r12 = r1 
(assert (not (= var2273 null-String))) ; Negate: Cond: r0 == null  
(define-const var793 String (var509_unqualify/-238008441 var2273)) ; Statement: $r12 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r0) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r12 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var793 null-String))) ; Cond: $r12 != null 
(define-const var62 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var62)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var62!1 String)
(assert (= var62!1 ""))
(assert true)
(define-const var2578 String (append/672562846 var62!1 var793)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var62!2 String)
(assert (= var62!2 (str.++ var62!1 var793)))
(assert true)
(define-const var437 String (append/672562846 var2578 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2578!1 String)
(assert (= var2578!1 (str.++ var2578 "_")))
(assert true)
(define-const var2040 String (append/672562846 var437 var885)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var437!1 String)
(assert (= var437!1 (str.++ var437 var885)))
(assert true)
(define-const var2771 String (toString/-2075883882 var2040)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var633 String (columnName/410591817 var831 var2771)) ; Statement: $r9 = virtualinvoke r2.<org.hibernate.cfg.EJB3NamingStrategy: java.lang.String columnName(java.lang.String)>($r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var509_unqualify/-238008441=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), columnName/410591817=([org.hibernate.cfg.EJB3NamingStrategy, java.lang.String], java.lang.String)}
; {var2396=org.hibernate.cfg.EJB3NamingStrategy, var831=r2, var2273=r0, var2715=null_type, var184=r11, var3956=r1, var885=r5, var509=org.hibernate.internal.util.StringHelper, var793=$r12, var62=$r3, var2578=$r4, var437=$r6, var2040=$r7, var2771=$r8, var633=$r9}
; {org.hibernate.cfg.EJB3NamingStrategy=var2396, r2=var831, r0=var2273, null_type=var2715, r11=var184, r1=var3956, r5=var885, org.hibernate.internal.util.StringHelper=var509, $r12=var793, $r3=var62, $r4=var2578, $r6=var437, $r7=var2040, $r8=var2771, $r9=var633}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.cfg.EJB3NamingStrategy;	r0 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	if r0 == null goto $r12 = r1;	$r12 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r0);	goto [?= (branch)];	if $r12 != null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r2.<org.hibernate.cfg.EJB3NamingStrategy: java.lang.String columnName(java.lang.String)>($r8);	return $r9
;block_num 4