(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var785 0)
(declare-sort var1141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLogicalColumnName/-952276084 (var1141) String)
(declare-fun cast-from-var785-to-var1141 (var785) var1141)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun discriminatorTypeName/-1926262036 (var785) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var785 var785)
(declare-const var2939 var785) ; Statement: r1 := @this: org.hibernate.cfg.Ejb3DiscriminatorColumn 
(assert (not (= var2939 null-var785)))
(define-const var1554 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1554)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1554!1 String)
(assert (= var1554!1 ""))
(assert true)
;(assert (append/672562846 var1554!1 "Ejb3DiscriminatorColumn")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ejb3DiscriminatorColumn") 
(declare-const var1554!2 String)
(assert (= var1554!2 (str.++ var1554!1 "Ejb3DiscriminatorColumn")))
(assert true)
(define-const var1847 String (append/672562846 var1554!2 "{logicalColumnName\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{logicalColumnName\'") 
(declare-const var1554!3 String)
(assert (= var1554!3 (str.++ var1554!2 "{logicalColumnName\u0027")))
(assert true)
(define-const var3063 String (getLogicalColumnName/-952276084 (cast-from-var785-to-var1141 var2939))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.cfg.Ejb3DiscriminatorColumn: java.lang.String getLogicalColumnName()>() 
(assert true)
(define-const var226 String (append/672562846 var1847 var3063)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1847!1 String)
(assert (= var1847!1 (str.++ var1847 var3063)))
(assert true)
;(assert (append/-1166366385 var226 39)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var226!1 String)
(assert (str.prefixof var226 var226!1))
(assert true)
(define-const var659 String (append/672562846 var1554!3 ", discriminatorTypeName=\u0027")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", discriminatorTypeName=\'") 
(declare-const var1554!4 String)
(assert (= var1554!4 (str.++ var1554!3 ", discriminatorTypeName=\u0027")))
(define-const var2559 String (discriminatorTypeName/-1926262036 var2939)) ; Statement: $r5 = r1.<org.hibernate.cfg.Ejb3DiscriminatorColumn: java.lang.String discriminatorTypeName> 
(assert true)
(define-const var1207 String (append/672562846 var659 var2559)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var659!1 String)
(assert (= var659!1 (str.++ var659 var2559)))
(assert true)
;(assert (append/-1166366385 var1207 39)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var1207!1 String)
(assert (str.prefixof var1207 var1207!1))
(assert true)
;(assert (append/-1166366385 var1554!4 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var1554!5 String)
(assert (str.prefixof var1554!4 var1554!5))
(assert true)
(define-const var2150 String (toString/-2075883882 var1554!5)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLogicalColumnName/-952276084=([org.hibernate.cfg.Ejb3Column], java.lang.String), cast-from-var785-to-var1141=([org.hibernate.cfg.Ejb3DiscriminatorColumn], org.hibernate.cfg.Ejb3Column), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), discriminatorTypeName/-1926262036=([org.hibernate.cfg.Ejb3DiscriminatorColumn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var785=org.hibernate.cfg.Ejb3DiscriminatorColumn, var2939=r1, var1554=$r0, var1847=$r3, var1141=org.hibernate.cfg.Ejb3Column, var3063=$r2, var226=$r4, var659=$r6, var2559=$r5, var1207=$r7, var2150=$r8}
; {org.hibernate.cfg.Ejb3DiscriminatorColumn=var785, r1=var2939, $r0=var1554, $r3=var1847, org.hibernate.cfg.Ejb3Column=var1141, $r2=var3063, $r4=var226, $r6=var659, $r5=var2559, $r7=var1207, $r8=var2150}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.Ejb3DiscriminatorColumn;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ejb3DiscriminatorColumn");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{logicalColumnName\'");	$r2 = virtualinvoke r1.<org.hibernate.cfg.Ejb3DiscriminatorColumn: java.lang.String getLogicalColumnName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", discriminatorTypeName=\'");	$r5 = r1.<org.hibernate.cfg.Ejb3DiscriminatorColumn: java.lang.String discriminatorTypeName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1