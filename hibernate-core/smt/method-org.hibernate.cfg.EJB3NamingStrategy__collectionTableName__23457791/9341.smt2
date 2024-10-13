(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var603 0)
(declare-sort var2768 0)
(declare-sort var3023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3023_unqualify/-238008441 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun tableName/-691103487 (var603 String) String)
(declare-const null-var603 var603)
(declare-const null-String String)
(declare-const var389 var603) ; Statement: r0 := @this: org.hibernate.cfg.EJB3NamingStrategy 
(assert (not (= var389 null-var603)))
(declare-const var2560 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2560 null-String)))
(declare-const var2083 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2083 null-String)))
(declare-const var1664 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var1664 null-String)))
(declare-const var3968 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var3968 null-String)))
(declare-const var1992 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var1992 null-String)))
(define-const var3058 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3058 var2083)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r2) 
(declare-const var3058!1 String)
(assert (= var3058!1 var2083))
(assert true)
(define-const var1751 String (append/672562846 var3058!1 "_")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3058!2 String)
(assert (= var3058!2 (str.++ var3058!1 "_")))
 ; Statement: if r3 == null goto $r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r4) 
(assert (= var3968 null-String)) ; Cond: r3 == null 
(define-const var2378 String (var3023_unqualify/-238008441 var1992)) ; Statement: $r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r4) 
(assert true) ; Non Conditional
(assert true)
(define-const var872 String (append/672562846 var1751 var2378)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1751!1 String)
(assert (= var1751!1 (str.++ var1751 var2378)))
(assert true)
(define-const var3997 String (toString/-2075883882 var872)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1057 String (tableName/-691103487 var389 var3997)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.cfg.EJB3NamingStrategy: java.lang.String tableName(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3023_unqualify/-238008441=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), tableName/-691103487=([org.hibernate.cfg.EJB3NamingStrategy, java.lang.String], java.lang.String)}
; {var603=org.hibernate.cfg.EJB3NamingStrategy, var389=r0, var2560=r9, var2768=null_type, var2083=r2, var1664=r10, var3968=r3, var1992=r4, var3058=$r1, var1751=$r5, var3023=org.hibernate.internal.util.StringHelper, var2378=$r11, var872=$r6, var3997=$r7, var1057=$r8}
; {org.hibernate.cfg.EJB3NamingStrategy=var603, r0=var389, r9=var2560, null_type=var2768, r2=var2083, r10=var1664, r3=var3968, r4=var1992, $r1=var3058, $r5=var1751, org.hibernate.internal.util.StringHelper=var3023, $r11=var2378, $r6=var872, $r7=var3997, $r8=var1057}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.EJB3NamingStrategy;	r9 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r2);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	if r3 == null goto $r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r4);	$r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r0.<org.hibernate.cfg.EJB3NamingStrategy: java.lang.String tableName(java.lang.String)>($r7);	return $r8
;block_num 3