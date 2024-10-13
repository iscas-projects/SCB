(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1859 0)
(declare-sort var941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun tableName/-691103487 (var1859 String) String)
(declare-const null-var1859 var1859)
(declare-const null-String String)
(declare-const var3479 var1859) ; Statement: r0 := @this: org.hibernate.cfg.EJB3NamingStrategy 
(assert (not (= var3479 null-var1859)))
(declare-const var2135 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2135 null-String)))
(declare-const var3919 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3919 null-String)))
(declare-const var2382 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2382 null-String)))
(declare-const var697 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var697 null-String)))
(declare-const var1236 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var1236 null-String)))
(define-const var2560 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2560 var3919)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r2) 
(declare-const var2560!1 String)
(assert (= var2560!1 var3919))
(assert true)
(define-const var3037 String (append/672562846 var2560!1 "_")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2560!2 String)
(assert (= var2560!2 (str.++ var2560!1 "_")))
 ; Statement: if r3 == null goto $r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r4) 
(assert (not (= var697 null-String))) ; Negate: Cond: r3 == null  
(define-const var1857 String var697) ; Statement: $r11 = r3 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var607 String (append/672562846 var3037 var1857)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3037!1 String)
(assert (= var3037!1 (str.++ var3037 var1857)))
(assert true)
(define-const var3369 String (toString/-2075883882 var607)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var492 String (tableName/-691103487 var3479 var3369)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.cfg.EJB3NamingStrategy: java.lang.String tableName(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), tableName/-691103487=([org.hibernate.cfg.EJB3NamingStrategy, java.lang.String], java.lang.String)}
; {var1859=org.hibernate.cfg.EJB3NamingStrategy, var3479=r0, var2135=r9, var941=null_type, var3919=r2, var2382=r10, var697=r3, var1236=r4, var2560=$r1, var3037=$r5, var1857=$r11, var607=$r6, var3369=$r7, var492=$r8}
; {org.hibernate.cfg.EJB3NamingStrategy=var1859, r0=var3479, r9=var2135, null_type=var941, r2=var3919, r10=var2382, r3=var697, r4=var1236, $r1=var2560, $r5=var3037, $r11=var1857, $r6=var607, $r7=var3369, $r8=var492}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.EJB3NamingStrategy;	r9 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r2);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	if r3 == null goto $r11 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r4);	$r11 = r3;	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r0.<org.hibernate.cfg.EJB3NamingStrategy: java.lang.String tableName(java.lang.String)>($r7);	return $r8
;block_num 3