(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var783 0)
(declare-sort var3550 0)
(declare-sort var1257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun subselect/310692072 (var783) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var783 var783)
(declare-const null-var3550 var3550)
(declare-const null-String String)
(declare-const var516 var783) ; Statement: r0 := @this: org.hibernate.mapping.Table 
(assert (not (= var516 null-var783)))
(declare-const var2099 var3550) ; Statement: r2 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var2099 null-var3550)))
(define-const var2394 String (subselect/310692072 var516)) ; Statement: $r1 = r0.<org.hibernate.mapping.Table: java.lang.String subselect> 
 ; Statement: if $r1 == null goto $r3 = new org.hibernate.boot.model.relational.QualifiedTableName 
(assert (not (= var2394 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3207 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3207)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3207!1 String)
(assert (= var3207!1 ""))
(assert true)
(define-const var1263 String (append/672562846 var3207!1 "( ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ") 
(declare-const var3207!2 String)
(assert (= var3207!2 (str.++ var3207!1 "( ")))
(define-const var127 String (subselect/310692072 var516)) ; Statement: $r9 = r0.<org.hibernate.mapping.Table: java.lang.String subselect> 
(assert true)
(define-const var555 String (append/672562846 var1263 var127)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1263!1 String)
(assert (= var1263!1 (str.++ var1263 var127)))
(assert true)
(define-const var2008 String (append/672562846 var555 " )")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var555!1 String)
(assert (= var555!1 (str.++ var555 " )")))
(assert true)
(define-const var2072 String (toString/-2075883882 var2008)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {subselect/310692072=([org.hibernate.mapping.Table], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var783=org.hibernate.mapping.Table, var516=r0, var3550=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2099=r2, var2394=$r1, var1257=null_type, var3207=$r8, var1263=$r10, var127=$r9, var555=$r11, var2008=$r12, var2072=$r13}
; {org.hibernate.mapping.Table=var783, r0=var516, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3550, r2=var2099, $r1=var2394, null_type=var1257, $r8=var3207, $r10=var1263, $r9=var127, $r11=var555, $r12=var2008, $r13=var2072}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Table;	r2 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r1 = r0.<org.hibernate.mapping.Table: java.lang.String subselect>;	if $r1 == null goto $r3 = new org.hibernate.boot.model.relational.QualifiedTableName;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ");	$r9 = r0.<org.hibernate.mapping.Table: java.lang.String subselect>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2