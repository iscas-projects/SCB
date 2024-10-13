(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3145 0)
(declare-sort var1514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun propertyToColumnName/-751558801 (var3145 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun tableName/1815912011 (var3145 String) String)
(declare-const null-var3145 var3145)
(declare-const null-String String)
(declare-const var2062 var3145) ; Statement: r0 := @this: org.hibernate.cfg.ImprovedNamingStrategy 
(assert (not (= var2062 null-var3145)))
(declare-const var3826 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var3826 null-String)))
(declare-const var3941 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3941 null-String)))
(declare-const var1903 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var1903 null-String)))
(declare-const var2152 String) ; Statement: r12 := @parameter3: java.lang.String 
(assert (not (= var2152 null-String)))
(declare-const var865 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var865 null-String)))
(define-const var2212 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2212)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2212!1 String)
(assert (= var2212!1 ""))
(assert true)
(define-const var3546 String (append/672562846 var2212!1 var3941)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2212!2 String)
(assert (= var2212!2 (str.++ var2212!1 var3941)))
(assert true)
(define-const var3837 String (append/-1166366385 var3546 95)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var3546!1 String)
(assert (str.prefixof var3546 var3546!1))
(assert true)
(define-const var3763 String (propertyToColumnName/-751558801 var2062 var865)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.cfg.ImprovedNamingStrategy: java.lang.String propertyToColumnName(java.lang.String)>(r4) 
(assert true)
(define-const var1656 String (append/672562846 var3837 var3763)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3837!1 String)
(assert (= var3837!1 (str.++ var3837 var3763)))
(assert true)
(define-const var607 String (toString/-2075883882 var1656)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1771 String (tableName/1815912011 var2062 var607)) ; Statement: $r9 = virtualinvoke r0.<org.hibernate.cfg.ImprovedNamingStrategy: java.lang.String tableName(java.lang.String)>($r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), propertyToColumnName/-751558801=([org.hibernate.cfg.ImprovedNamingStrategy, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), tableName/1815912011=([org.hibernate.cfg.ImprovedNamingStrategy, java.lang.String], java.lang.String)}
; {var3145=org.hibernate.cfg.ImprovedNamingStrategy, var2062=r0, var3826=r10, var1514=null_type, var3941=r2, var1903=r11, var2152=r12, var865=r4, var2212=$r1, var3546=$r3, var3837=$r6, var3763=$r5, var1656=$r7, var607=$r8, var1771=$r9}
; {org.hibernate.cfg.ImprovedNamingStrategy=var3145, r0=var2062, r10=var3826, null_type=var1514, r2=var3941, r11=var1903, r12=var2152, r4=var865, $r1=var2212, $r3=var3546, $r6=var3837, $r5=var3763, $r7=var1656, $r8=var607, $r9=var1771}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.ImprovedNamingStrategy;	r10 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r11 := @parameter2: java.lang.String;	r12 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r5 = virtualinvoke r0.<org.hibernate.cfg.ImprovedNamingStrategy: java.lang.String propertyToColumnName(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r0.<org.hibernate.cfg.ImprovedNamingStrategy: java.lang.String tableName(java.lang.String)>($r8);	return $r9
;block_num 1