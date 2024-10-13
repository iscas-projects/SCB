(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var405 0)
(declare-sort var2068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun columnName/410591817 (var405 String) String)
(declare-const null-var405 var405)
(declare-const null-String String)
(declare-const var669 var405) ; Statement: r2 := @this: org.hibernate.cfg.EJB3NamingStrategy 
(assert (not (= var669 null-var405)))
(declare-const var944 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var944 null-String)))
(declare-const var3017 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var3017 null-String)))
(declare-const var3054 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3054 null-String)))
(declare-const var2492 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var2492 null-String)))
 ; Statement: if r0 == null goto $r12 = r1 
(assert (= var944 null-String)) ; Cond: r0 == null 
(define-const var1269 String var3054) ; Statement: $r12 = r1 
(assert true) ; Non Conditional
 ; Statement: if $r12 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var1269 null-String))) ; Cond: $r12 != null 
(define-const var1797 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1797)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1797!1 String)
(assert (= var1797!1 ""))
(assert true)
(define-const var312 String (append/672562846 var1797!1 var1269)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1797!2 String)
(assert (= var1797!2 (str.++ var1797!1 var1269)))
(assert true)
(define-const var1301 String (append/672562846 var312 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var312!1 String)
(assert (= var312!1 (str.++ var312 "_")))
(assert true)
(define-const var984 String (append/672562846 var1301 var2492)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1301!1 String)
(assert (= var1301!1 (str.++ var1301 var2492)))
(assert true)
(define-const var654 String (toString/-2075883882 var984)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2735 String (columnName/410591817 var669 var654)) ; Statement: $r9 = virtualinvoke r2.<org.hibernate.cfg.EJB3NamingStrategy: java.lang.String columnName(java.lang.String)>($r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), columnName/410591817=([org.hibernate.cfg.EJB3NamingStrategy, java.lang.String], java.lang.String)}
; {var405=org.hibernate.cfg.EJB3NamingStrategy, var669=r2, var944=r0, var2068=null_type, var3017=r11, var3054=r1, var2492=r5, var1269=$r12, var1797=$r3, var312=$r4, var1301=$r6, var984=$r7, var654=$r8, var2735=$r9}
; {org.hibernate.cfg.EJB3NamingStrategy=var405, r2=var669, r0=var944, null_type=var2068, r11=var3017, r1=var3054, r5=var2492, $r12=var1269, $r3=var1797, $r4=var312, $r6=var1301, $r7=var984, $r8=var654, $r9=var2735}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.cfg.EJB3NamingStrategy;	r0 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	if r0 == null goto $r12 = r1;	$r12 = r1;	if $r12 != null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r2.<org.hibernate.cfg.EJB3NamingStrategy: java.lang.String columnName(java.lang.String)>($r8);	return $r9
;block_num 4