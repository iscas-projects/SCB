(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1786 0)
(declare-sort var417 0)
(declare-sort var3623 0)
(declare-sort var2963 0)
(declare-sort var3311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var417_getDialect/-253498657 (var417) var2963)
(declare-fun String-init () String)
(declare-fun getAddPrimaryKeyConstraintString/723150803 (var2963 String) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getColumnIterator/336238768 (var3311) Iterator)
(declare-fun cast-from-var1786-to-var3311 (var1786) var3311)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1786 var1786)
(declare-const null-var417 var417)
(declare-const null-String String)
(declare-const var2242 var1786) ; Statement: r6 := @this: org.hibernate.mapping.PrimaryKey 
(assert (not (= var2242 null-var1786)))
(declare-const var2906 var417) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var2906 null-var417)))
(declare-const var2224 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2224 null-String)))
(declare-const var2600 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var2600 null-String)))
(declare-const var3544 String) ; Statement: r14 := @parameter3: java.lang.String 
(assert (not (= var3544 null-String)))
(define-const var1422 var2963 (var417_getDialect/-253498657 var2906)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var3507 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var735 String (getAddPrimaryKeyConstraintString/723150803 var1422 var2224)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getAddPrimaryKeyConstraintString(java.lang.String)>(r3) 
(assert true)
;(assert (<init>/-1061048412 var3507 var735)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var3507!1 String)
(assert (= var3507!1 var735))
(assert true)
(define-const var3359 String (append/-1166366385 var3507!1 40)) ; Statement: r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3507!2 String)
(assert (str.prefixof var3507!1 var3507!2))
(assert true)
(define-const var615 Iterator (getColumnIterator/336238768 (cast-from-var1786-to-var3311 var2242))) ; Statement: r7 = virtualinvoke r6.<org.hibernate.mapping.PrimaryKey: java.util.Iterator getColumnIterator()>() 
(assert true) ; Non Conditional
(define-const var2471 Bool (Iterator_hasNext/-1669924200 var615)) ; Statement: $z1 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r8 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var2471 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var600 String (append/-1166366385 var3359 41)) ; Statement: $r8 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3359!1 String)
(assert (str.prefixof var3359 var3359!1))
(assert true)
(define-const var1959 String (toString/-2075883882 var600)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var417_getDialect/-253498657=([org.hibernate.boot.model.relational.SqlStringGenerationContext], org.hibernate.dialect.Dialect), String-init=([], java.lang.StringBuilder), getAddPrimaryKeyConstraintString/723150803=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getColumnIterator/336238768=([org.hibernate.mapping.Constraint], java.util.Iterator), cast-from-var1786-to-var3311=([org.hibernate.mapping.PrimaryKey], org.hibernate.mapping.Constraint), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1786=org.hibernate.mapping.PrimaryKey, var2242=r6, var417=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2906=r0, var2224=r3, var3623=null_type, var2600=r13, var3544=r14, var2963=org.hibernate.dialect.Dialect, var1422=r1, var3507=$r2, var735=$r4, var3359=r5, var3311=org.hibernate.mapping.Constraint, var615=r7, var2471=$z1, var600=$r8, var1959=$r9}
; {org.hibernate.mapping.PrimaryKey=var1786, r6=var2242, org.hibernate.boot.model.relational.SqlStringGenerationContext=var417, r0=var2906, r3=var2224, null_type=var3623, r13=var2600, r14=var3544, org.hibernate.dialect.Dialect=var2963, r1=var1422, $r2=var3507, $r4=var735, r5=var3359, org.hibernate.mapping.Constraint=var3311, r7=var615, $z1=var2471, $r8=var600, $r9=var1959}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.mapping.PrimaryKey;	r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	r3 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.String;	r14 := @parameter3: java.lang.String;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>();	$r2 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getAddPrimaryKeyConstraintString(java.lang.String)>(r3);	specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	r7 = virtualinvoke r6.<org.hibernate.mapping.PrimaryKey: java.util.Iterator getColumnIterator()>();	$z1 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r8 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3