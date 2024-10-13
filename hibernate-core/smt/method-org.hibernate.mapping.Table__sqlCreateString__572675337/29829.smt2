(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3541 0)
(declare-sort var1999 0)
(declare-sort var3910 0)
(declare-sort var2833 0)
(declare-sort var874 0)
(declare-sort var608 0)
(declare-sort var3510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3910_getDialect/-253498657 (var3910) var874)
(declare-fun String-init () String)
(declare-fun hasPrimaryKey/-659896560 (var3541) Bool)
(declare-fun getCreateMultisetTableString/1225514688 (var874) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getQualifiedName/-1090669273 (var3541 var3910) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun idValue/310692072 (var3541) var608)
(declare-fun getColumnIterator/1853955427 (var3541) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun getUniqueDelegate/218751566 (var874) var3510)
(declare-fun var3510_getTableCreationUniqueConstraintsFragment/573425459 (var3510 var3541 var3910) String)
(declare-fun supportsTableCheck/2025598181 (var874) Bool)
(declare-fun comment/310692072 (var3541) String)
(declare-fun getTableTypeString/-1260720415 (var874) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3541 var3541)
(declare-const null-var1999 var1999)
(declare-const null-var3910 var3910)
(declare-const null-String String)
(declare-const null-var608 var608)
(declare-const var2088 var3541) ; Statement: r3 := @this: org.hibernate.mapping.Table 
(assert (not (= var2088 null-var3541)))
(declare-const var215 var1999) ; Statement: r26 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var215 null-var1999)))
(declare-const var1062 var3910) ; Statement: r0 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var1062 null-var3910)))
(declare-const var2600 String) ; Statement: r52 := @parameter2: java.lang.String 
(assert (not (= var2600 null-String)))
(declare-const var403 String) ; Statement: r53 := @parameter3: java.lang.String 
(assert (not (= var403 null-String)))
(define-const var3302 var874 (var3910_getDialect/-253498657 var1062)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var2671 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var3991 Bool (hasPrimaryKey/-659896560 var2088)) ; Statement: $z0 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
 ; Statement: if $z0 == 0 goto $r54 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCreateMultisetTableString()>() 
(assert (= (ite var3991 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var521 String (getCreateMultisetTableString/1225514688 var3302)) ; Statement: $r54 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCreateMultisetTableString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1061048412 var2671 var521)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r54) 
(declare-const var2671!1 String)
(assert (= var2671!1 var521))
(assert true)
(define-const var3059 String (append/-1166366385 var2671!1 32)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2671!2 String)
(assert (str.prefixof var2671!1 var2671!2))
(assert true)
(define-const var2667 String (getQualifiedName/-1090669273 var2088 var1062)) ; Statement: $r4 = virtualinvoke r3.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0) 
(assert true)
(define-const var202 String (append/672562846 var3059 var2667)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3059!1 String)
(assert (= var3059!1 (str.++ var3059 var2667)))
(assert true)
(define-const var3847 String (append/672562846 var202 " (")) ; Statement: $r51 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var202!1 String)
(assert (= var202!1 (str.++ var202 " (")))
(define-const var2566 var608 (idValue/310692072 var2088)) ; Statement: $r7 = r3.<org.hibernate.mapping.Table: org.hibernate.mapping.KeyValue idValue> 
 ; Statement: if $r7 == null goto $z17 = 0 
(assert (= var2566 null-var608)) ; Cond: $r7 == null 
(define-const var1597 Bool (ite (= 1 0) true false)) ; Statement: $z17 = 0 
(define-const var2431 Bool (ite (= 1 0) true false)) ; Statement: $z16 = 0 
(assert true) ; Non Conditional
(define-const var1180 Bool var1597) ; Statement: z1 = $z17 
(define-const var3862 String null-String) ; Statement: r55 = null 
(assert true)
(define-const var1963 Bool (hasPrimaryKey/-659896560 var2088)) ; Statement: $z13 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
 ; Statement: if $z13 == 0 goto $r56 = virtualinvoke r3.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>() 
(assert (= (ite var1963 1 0) 0)) ; Cond: $z13 == 0 
(assert true)
(define-const var835 Iterator (getColumnIterator/1853955427 var2088)) ; Statement: $r56 = virtualinvoke r3.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>() 
(assert true) ; Non Conditional
(define-const var81 Bool (Iterator_hasNext/-1669924200 var835)) ; Statement: $z14 = interfaceinvoke $r56.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z14 == 0 goto $z2 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
(assert (= (ite var81 1 0) 0)) ; Cond: $z14 == 0 
(assert true)
(define-const var3048 Bool (hasPrimaryKey/-659896560 var2088)) ; Statement: $z2 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
 ; Statement: if $z2 == 0 goto $r8 = virtualinvoke r1.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>() 
(assert (= (ite var3048 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2353 var3510 (getUniqueDelegate/218751566 var3302)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>() 
(define-const var3954 String (var3510_getTableCreationUniqueConstraintsFragment/573425459 var2353 var2088 var1062)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.dialect.unique.UniqueDelegate: java.lang.String getTableCreationUniqueConstraintsFragment(org.hibernate.mapping.Table,org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r3, r0) 
(assert true)
;(assert (append/672562846 var3847 var3954)) ; Statement: virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 var3954)))
(assert true)
(define-const var2337 Bool (supportsTableCheck/2025598181 var3302)) ; Statement: $z3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsTableCheck()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var2337 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/-1166366385 var3847!1 41)) ; Statement: virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3847!2 String)
(assert (str.prefixof var3847!1 var3847!2))
(define-const var441 String (comment/310692072 var2088)) ; Statement: $r10 = r3.<org.hibernate.mapping.Table: java.lang.String comment> 
 ; Statement: if $r10 == null goto $r11 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>() 
(assert (= var441 null-String)) ; Cond: $r10 == null 
(assert true)
(define-const var26 String (getTableTypeString/-1260720415 var3302)) ; Statement: $r11 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>() 
(assert true)
(define-const var1862 String (append/672562846 var3847!2 var26)) ; Statement: $r12 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3847!3 String)
(assert (= var3847!3 (str.++ var3847!2 var26)))
(assert true)
(define-const var2740 String (toString/-2075883882 var1862)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3910_getDialect/-253498657=([org.hibernate.boot.model.relational.SqlStringGenerationContext], org.hibernate.dialect.Dialect), String-init=([], java.lang.StringBuilder), hasPrimaryKey/-659896560=([org.hibernate.mapping.Table], boolean), getCreateMultisetTableString/1225514688=([org.hibernate.dialect.Dialect], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getQualifiedName/-1090669273=([org.hibernate.mapping.Table, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), idValue/310692072=([org.hibernate.mapping.Table], org.hibernate.mapping.KeyValue), getColumnIterator/1853955427=([org.hibernate.mapping.Table], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), getUniqueDelegate/218751566=([org.hibernate.dialect.Dialect], org.hibernate.dialect.unique.UniqueDelegate), var3510_getTableCreationUniqueConstraintsFragment/573425459=([org.hibernate.dialect.unique.UniqueDelegate, org.hibernate.mapping.Table, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), supportsTableCheck/2025598181=([org.hibernate.dialect.Dialect], boolean), comment/310692072=([org.hibernate.mapping.Table], java.lang.String), getTableTypeString/-1260720415=([org.hibernate.dialect.Dialect], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3541=org.hibernate.mapping.Table, var2088=r3, var1999=org.hibernate.engine.spi.Mapping, var215=r26, var3910=org.hibernate.boot.model.relational.SqlStringGenerationContext, var1062=r0, var2600=r52, var2833=null_type, var403=r53, var874=org.hibernate.dialect.Dialect, var3302=r1, var2671=$r2, var3991=$z0, var521=$r54, var3059=$r5, var2667=$r4, var202=$r6, var3847=$r51, var608=org.hibernate.mapping.KeyValue, var2566=$r7, var1597=$z17, var2431=$z16, var1180=z1, var3862=r55, var1963=$z13, var835=$r56, var81=$z14, var3048=$z2, var3510=org.hibernate.dialect.unique.UniqueDelegate, var2353=$r8, var3954=$r9, var2337=$z3, var441=$r10, var26=$r11, var1862=$r12, var2740=$r13}
; {org.hibernate.mapping.Table=var3541, r3=var2088, org.hibernate.engine.spi.Mapping=var1999, r26=var215, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3910, r0=var1062, r52=var2600, null_type=var2833, r53=var403, org.hibernate.dialect.Dialect=var874, r1=var3302, $r2=var2671, $z0=var3991, $r54=var521, $r5=var3059, $r4=var2667, $r6=var202, $r51=var3847, org.hibernate.mapping.KeyValue=var608, $r7=var2566, $z17=var1597, $z16=var2431, z1=var1180, r55=var3862, $z13=var1963, $r56=var835, $z14=var81, $z2=var3048, org.hibernate.dialect.unique.UniqueDelegate=var3510, $r8=var2353, $r9=var3954, $z3=var2337, $r10=var441, $r11=var26, $r12=var1862, $r13=var2740}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.mapping.Table;	r26 := @parameter0: org.hibernate.engine.spi.Mapping;	r0 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext;	r52 := @parameter2: java.lang.String;	r53 := @parameter3: java.lang.String;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>();	$r2 = new java.lang.StringBuilder;	$z0 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	if $z0 == 0 goto $r54 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCreateMultisetTableString()>();	$r54 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCreateMultisetTableString()>();	specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r54);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = virtualinvoke r3.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r51 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r7 = r3.<org.hibernate.mapping.Table: org.hibernate.mapping.KeyValue idValue>;	if $r7 == null goto $z17 = 0;	$z17 = 0;	$z16 = 0;	z1 = $z17;	r55 = null;	$z13 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	if $z13 == 0 goto $r56 = virtualinvoke r3.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>();	$r56 = virtualinvoke r3.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>();	$z14 = interfaceinvoke $r56.<java.util.Iterator: boolean hasNext()>();	if $z14 == 0 goto $z2 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	$z2 = virtualinvoke r3.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	if $z2 == 0 goto $r8 = virtualinvoke r1.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>();	$r8 = virtualinvoke r1.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>();	$r9 = interfaceinvoke $r8.<org.hibernate.dialect.unique.UniqueDelegate: java.lang.String getTableCreationUniqueConstraintsFragment(org.hibernate.mapping.Table,org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r3, r0);	virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$z3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsTableCheck()>();	if $z3 == 0 goto virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = r3.<org.hibernate.mapping.Table: java.lang.String comment>;	if $r10 == null goto $r11 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>();	$r11 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getTableTypeString()>();	$r12 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 11