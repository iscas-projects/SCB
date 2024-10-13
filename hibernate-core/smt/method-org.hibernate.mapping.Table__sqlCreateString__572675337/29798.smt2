(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1052 0)
(declare-sort var2704 0)
(declare-sort var3706 0)
(declare-sort var3294 0)
(declare-sort var2405 0)
(declare-sort var3460 0)
(declare-sort var1596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3706_getDialect/-253498657 (var3706) var2405)
(declare-fun String-init () String)
(declare-fun hasPrimaryKey/-659896560 (var1052) Bool)
(declare-fun getCreateTableString/394718935 (var2405) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getQualifiedName/-1090669273 (var1052 var3706) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun idValue/310692072 (var1052) var3460)
(declare-fun getColumnIterator/1853955427 (var1052) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun getUniqueDelegate/218751566 (var2405) var1596)
(declare-fun var1596_getTableCreationUniqueConstraintsFragment/573425459 (var1596 var1052 var3706) String)
(declare-fun supportsTableCheck/2025598181 (var2405) Bool)
(declare-fun comment/310692072 (var1052) String)
(declare-fun getTableTypeString/-1260720415 (var2405) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1052 var1052)
(declare-const null-var2704 var2704)
(declare-const null-var3706 var3706)
(declare-const null-String String)
(declare-const null-var3460 var3460)
(declare-const var2890 var1052) ; Statement: r3 := @this: org.hibernate.mapping.Table 
(assert (not (= var2890 null-var1052)))
(declare-const var2748 var2704) ; Statement: r26 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var2748 null-var2704)))
(declare-const var1717 var3706) ; Statement: r0 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var1717 null-var3706)))
(declare-const var121 String) ; Statement: r52 := @parameter2: java.lang.String 
(assert (not (= var121 null-String)))
(declare-const var828 String) ; Statement: r53 := @parameter3: java.lang.String 
(assert (not (= var828 null-String)))
(define-const var1272 var2405 (var3706_getDialect/-253498657 var1717)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var3755 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var778 Bool (hasPrimaryKey/-659896560 var2890)) ; Statement: $z0 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
 ; Statement: if $z0 == 0 goto $r54 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCreateMultisetTableString()>() 
(assert (not (= (ite var778 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3222 String (getCreateTableString/394718935 var1272)) ; Statement: $r54 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCreateTableString()>() 
 ; Statement: goto [?= specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r54)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1061048412 var3755 var3222)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r54) 
(declare-const var3755!1 String)
(assert (= var3755!1 var3222))
(assert true)
(define-const var1400 String (append/-1166366385 var3755!1 32)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3755!2 String)
(assert (str.prefixof var3755!1 var3755!2))
(assert true)
(define-const var76 String (getQualifiedName/-1090669273 var2890 var1717)) ; Statement: $r4 = virtualinvoke r3.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0) 
(assert true)
(define-const var1555 String (append/672562846 var1400 var76)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1400!1 String)
(assert (= var1400!1 (str.++ var1400 var76)))
(assert true)
(define-const var526 String (append/672562846 var1555 " (")) ; Statement: $r51 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var1555!1 String)
(assert (= var1555!1 (str.++ var1555 " (")))
(define-const var2896 var3460 (idValue/310692072 var2890)) ; Statement: $r7 = r3.<org.hibernate.mapping.Table: org.hibernate.mapping.KeyValue idValue> 
 ; Statement: if $r7 == null goto $z17 = 0 
(assert (= var2896 null-var3460)) ; Cond: $r7 == null 
(define-const var3264 Bool (ite (= 1 0) true false)) ; Statement: $z17 = 0 
(define-const var1858 Bool (ite (= 1 0) true false)) ; Statement: $z16 = 0 
(assert true) ; Non Conditional
(define-const var1936 Bool var3264) ; Statement: z1 = $z17 
(define-const var1954 String null-String) ; Statement: r55 = null 
(assert true)
(define-const var1340 Bool (hasPrimaryKey/-659896560 var2890)) ; Statement: $z13 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
 ; Statement: if $z13 == 0 goto $r56 = virtualinvoke r3.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>() 
(assert (= (ite var1340 1 0) 0)) ; Cond: $z13 == 0 
(assert true)
(define-const var2688 Iterator (getColumnIterator/1853955427 var2890)) ; Statement: $r56 = virtualinvoke r3.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>() 
(assert true) ; Non Conditional
(define-const var2669 Bool (Iterator_hasNext/-1669924200 var2688)) ; Statement: $z14 = interfaceinvoke $r56.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z14 == 0 goto $z2 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
(assert (= (ite var2669 1 0) 0)) ; Cond: $z14 == 0 
(assert true)
(define-const var86 Bool (hasPrimaryKey/-659896560 var2890)) ; Statement: $z2 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
 ; Statement: if $z2 == 0 goto $r8 = virtualinvoke r1.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>() 
(assert (= (ite var86 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1544 var1596 (getUniqueDelegate/218751566 var1272)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>() 
(define-const var3531 String (var1596_getTableCreationUniqueConstraintsFragment/573425459 var1544 var2890 var1717)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.dialect.unique.UniqueDelegate: java.lang.String getTableCreationUniqueConstraintsFragment(org.hibernate.mapping.Table,org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r3, r0) 
(assert true)
;(assert (append/672562846 var526 var3531)) ; Statement: virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var526!1 String)
(assert (= var526!1 (str.++ var526 var3531)))
(assert true)
(define-const var2523 Bool (supportsTableCheck/2025598181 var1272)) ; Statement: $z3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsTableCheck()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var2523 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/-1166366385 var526!1 41)) ; Statement: virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var526!2 String)
(assert (str.prefixof var526!1 var526!2))
(define-const var1220 String (comment/310692072 var2890)) ; Statement: $r10 = r3.<org.hibernate.mapping.Table: java.lang.String comment> 
 ; Statement: if $r10 == null goto $r11 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>() 
(assert (= var1220 null-String)) ; Cond: $r10 == null 
(assert true)
(define-const var1295 String (getTableTypeString/-1260720415 var1272)) ; Statement: $r11 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>() 
(assert true)
(define-const var25 String (append/672562846 var526!2 var1295)) ; Statement: $r12 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var526!3 String)
(assert (= var526!3 (str.++ var526!2 var1295)))
(assert true)
(define-const var1844 String (toString/-2075883882 var25)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3706_getDialect/-253498657=([org.hibernate.boot.model.relational.SqlStringGenerationContext], org.hibernate.dialect.Dialect), String-init=([], java.lang.StringBuilder), hasPrimaryKey/-659896560=([org.hibernate.mapping.Table], boolean), getCreateTableString/394718935=([org.hibernate.dialect.Dialect], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getQualifiedName/-1090669273=([org.hibernate.mapping.Table, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), idValue/310692072=([org.hibernate.mapping.Table], org.hibernate.mapping.KeyValue), getColumnIterator/1853955427=([org.hibernate.mapping.Table], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), getUniqueDelegate/218751566=([org.hibernate.dialect.Dialect], org.hibernate.dialect.unique.UniqueDelegate), var1596_getTableCreationUniqueConstraintsFragment/573425459=([org.hibernate.dialect.unique.UniqueDelegate, org.hibernate.mapping.Table, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), supportsTableCheck/2025598181=([org.hibernate.dialect.Dialect], boolean), comment/310692072=([org.hibernate.mapping.Table], java.lang.String), getTableTypeString/-1260720415=([org.hibernate.dialect.Dialect], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1052=org.hibernate.mapping.Table, var2890=r3, var2704=org.hibernate.engine.spi.Mapping, var2748=r26, var3706=org.hibernate.boot.model.relational.SqlStringGenerationContext, var1717=r0, var121=r52, var3294=null_type, var828=r53, var2405=org.hibernate.dialect.Dialect, var1272=r1, var3755=$r2, var778=$z0, var3222=$r54, var1400=$r5, var76=$r4, var1555=$r6, var526=$r51, var3460=org.hibernate.mapping.KeyValue, var2896=$r7, var3264=$z17, var1858=$z16, var1936=z1, var1954=r55, var1340=$z13, var2688=$r56, var2669=$z14, var86=$z2, var1596=org.hibernate.dialect.unique.UniqueDelegate, var1544=$r8, var3531=$r9, var2523=$z3, var1220=$r10, var1295=$r11, var25=$r12, var1844=$r13}
; {org.hibernate.mapping.Table=var1052, r3=var2890, org.hibernate.engine.spi.Mapping=var2704, r26=var2748, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3706, r0=var1717, r52=var121, null_type=var3294, r53=var828, org.hibernate.dialect.Dialect=var2405, r1=var1272, $r2=var3755, $z0=var778, $r54=var3222, $r5=var1400, $r4=var76, $r6=var1555, $r51=var526, org.hibernate.mapping.KeyValue=var3460, $r7=var2896, $z17=var3264, $z16=var1858, z1=var1936, r55=var1954, $z13=var1340, $r56=var2688, $z14=var2669, $z2=var86, org.hibernate.dialect.unique.UniqueDelegate=var1596, $r8=var1544, $r9=var3531, $z3=var2523, $r10=var1220, $r11=var1295, $r12=var25, $r13=var1844}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.mapping.Table;	r26 := @parameter0: org.hibernate.engine.spi.Mapping;	r0 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext;	r52 := @parameter2: java.lang.String;	r53 := @parameter3: java.lang.String;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>();	$r2 = new java.lang.StringBuilder;	$z0 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	if $z0 == 0 goto $r54 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCreateMultisetTableString()>();	$r54 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCreateTableString()>();	goto [?= specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r54)];	specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r54);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = virtualinvoke r3.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r51 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r7 = r3.<org.hibernate.mapping.Table: org.hibernate.mapping.KeyValue idValue>;	if $r7 == null goto $z17 = 0;	$z17 = 0;	$z16 = 0;	z1 = $z17;	r55 = null;	$z13 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	if $z13 == 0 goto $r56 = virtualinvoke r3.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>();	$r56 = virtualinvoke r3.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>();	$z14 = interfaceinvoke $r56.<java.util.Iterator: boolean hasNext()>();	if $z14 == 0 goto $z2 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	$z2 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	if $z2 == 0 goto $r8 = virtualinvoke r1.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>();	$r8 = virtualinvoke r1.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>();	$r9 = interfaceinvoke $r8.<org.hibernate.dialect.unique.UniqueDelegate: java.lang.String getTableCreationUniqueConstraintsFragment(org.hibernate.mapping.Table,org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r3, r0);	virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$z3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsTableCheck()>();	if $z3 == 0 goto virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = r3.<org.hibernate.mapping.Table: java.lang.String comment>;	if $r10 == null goto $r11 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>();	$r11 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>();	$r12 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 11