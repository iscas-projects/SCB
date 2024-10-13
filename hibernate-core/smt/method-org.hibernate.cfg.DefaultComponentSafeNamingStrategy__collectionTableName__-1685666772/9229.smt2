(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1753 0)
(declare-sort var398 0)
(declare-sort var1234 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun tableName/-691103487 (var1234 String) String)
(declare-fun cast-from-var1753-to-var1234 (var1753) var1234)
(declare-const null-var1753 var1753)
(declare-const null-String String)
(declare-const var3302 var1753) ; Statement: r0 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy 
(assert (not (= var3302 null-var1753)))
(declare-const var3254 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var3254 null-String)))
(declare-const var3094 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3094 null-String)))
(declare-const var3598 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3598 null-String)))
(declare-const var3815 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var3815 null-String)))
(declare-const var1357 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var1357 null-String)))
(define-const var1786 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1786 var3094)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r2) 
(declare-const var1786!1 String)
(assert (= var1786!1 var3094))
(assert true)
(define-const var2336 String (append/672562846 var1786!1 "_")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1786!2 String)
(assert (= var1786!2 (str.++ var1786!1 "_")))
 ; Statement: if r3 == null goto $r11 = staticinvoke <org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String addUnderscores(java.lang.String)>(r4) 
(assert (not (= var3815 null-String))) ; Negate: Cond: r3 == null  
(define-const var111 String var3815) ; Statement: $r11 = r3 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1373 String (append/672562846 var2336 var111)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2336!1 String)
(assert (= var2336!1 (str.++ var2336 var111)))
(assert true)
(define-const var2514 String (toString/-2075883882 var1373)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1340 String (tableName/-691103487 (cast-from-var1753-to-var1234 var3302) var2514)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String tableName(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), tableName/-691103487=([org.hibernate.cfg.EJB3NamingStrategy, java.lang.String], java.lang.String), cast-from-var1753-to-var1234=([org.hibernate.cfg.DefaultComponentSafeNamingStrategy], org.hibernate.cfg.EJB3NamingStrategy)}
; {var1753=org.hibernate.cfg.DefaultComponentSafeNamingStrategy, var3302=r0, var3254=r9, var398=null_type, var3094=r2, var3598=r10, var3815=r3, var1357=r4, var1786=$r1, var2336=$r5, var111=$r11, var1373=$r6, var2514=$r7, var1234=org.hibernate.cfg.EJB3NamingStrategy, var1340=$r8}
; {org.hibernate.cfg.DefaultComponentSafeNamingStrategy=var1753, r0=var3302, r9=var3254, null_type=var398, r2=var3094, r10=var3598, r3=var3815, r4=var1357, $r1=var1786, $r5=var2336, $r11=var111, $r6=var1373, $r7=var2514, org.hibernate.cfg.EJB3NamingStrategy=var1234, $r8=var1340}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy;	r9 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r2);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	if r3 == null goto $r11 = staticinvoke <org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String addUnderscores(java.lang.String)>(r4);	$r11 = r3;	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r0.<org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String tableName(java.lang.String)>($r7);	return $r8
;block_num 3