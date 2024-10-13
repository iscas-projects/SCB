(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3331 0)
(declare-sort var1483 0)
(declare-sort var1951 0)
(declare-sort var2764 0)
(declare-sort var210 0)
(declare-sort var2995 0)
(declare-sort var745 0)
(declare-sort var572 0)
(declare-sort var832 0)
(declare-sort var3394 0)
(declare-sort var3594 0)
(declare-sort var1709 0)
(declare-sort var2106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var210-init () var210)
(declare-fun getCatalog/-1531610639 (var1483) String)
(declare-fun isCatalogQuoted/1330188784 (var1483) Bool)
(declare-fun var2995_toIdentifier/807223652 (String Bool) var2995)
(declare-fun getSchema/281261871 (var1483) String)
(declare-fun isSchemaQuoted/1314969792 (var1483) Bool)
(declare-fun getNameIdentifier/1639380429 (var1483) var2995)
(declare-fun <init>/280629704 (var210 var2995 var2995 var2995) void)
(declare-fun var2764_format/543602932 (var2764 var745) String)
(declare-fun cast-from-var210-to-var745 (var210) var745)
(declare-fun String-init () String)
(declare-fun hasPrimaryKey/-659896560 (var1483) Bool)
(declare-fun tableCreateString/-1580650955 (var3331 Bool) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getColumnIterator/1853955427 (var1483) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun dialect/1825021694 (var3331) var832)
(declare-fun getUniqueDelegate/218751566 (var832) var3394)
(declare-fun var3394_getTableCreationUniqueConstraintsFragment/573425459 (var3394 var1483 var2764) String)
(declare-fun applyTableCheck/-247795077 (var3331 var1483 String) void)
(declare-fun getComment/1478229483 (var1483) String)
(declare-fun applyTableTypeString/1649532794 (var3331 String) void)
(declare-fun var3594-init () var3594)
(declare-fun <init>/-325640736 (var3594) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1709_add/328494887 (var1709 var2106) Bool)
(declare-fun cast-from-var3594-to-var1709 (var3594) var1709)
(declare-fun cast-from-String-to-var2106 (String) var2106)
(declare-fun applyComments/-546113308 (var3331 var1483 String var1709) void)
(declare-fun applyInitCommands/-1594830379 (var3331 var1483 var1709 var2764) void)
(declare-fun var1709_size/-959786421 (var1709) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1709_toArray/-775711681 (var1709 (Array Int var2106)) (Array Int var2106))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2106__ ((Array Int String)) (Array Int var2106))
(declare-fun cast-from-__Array__Int__var2106__-to-__Array__Int__String__ ((Array Int var2106)) (Array Int String))
(declare-const null-var3331 var3331)
(declare-const null-var1483 var1483)
(declare-const null-var1951 var1951)
(declare-const null-var2764 var2764)
(declare-const null-String String)
(declare-const var2979 var3331) ; Statement: r10 := @this: org.hibernate.tool.schema.internal.StandardTableExporter 
(assert (not (= var2979 null-var3331)))
(declare-const var2642 var1483) ; Statement: r1 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var2642 null-var1483)))
(declare-const var108 var1951) ; Statement: r34 := @parameter1: org.hibernate.boot.Metadata 
(assert (not (= var108 null-var1951)))
(declare-const var3140 var2764) ; Statement: r7 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var3140 null-var2764)))
(define-const var1860 var210 var210-init) ; Statement: $r0 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts 
(assert true)
(define-const var2040 String (getCatalog/-1531610639 var2642)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getCatalog()>() 
(assert true)
(define-const var2125 Bool (isCatalogQuoted/1330188784 var2642)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean isCatalogQuoted()>() 
(define-const var2244 var2995 (var2995_toIdentifier/807223652 var2040 var2125)) ; Statement: $r6 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,boolean)>($r2, $z0) 
(assert true)
(define-const var618 String (getSchema/281261871 var2642)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getSchema()>() 
(assert true)
(define-const var3244 Bool (isSchemaQuoted/1314969792 var2642)) ; Statement: $z1 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean isSchemaQuoted()>() 
(define-const var2649 var2995 (var2995_toIdentifier/807223652 var618 var3244)) ; Statement: $r5 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,boolean)>($r3, $z1) 
(assert true)
(define-const var3823 var2995 (getNameIdentifier/1639380429 var2642)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier getNameIdentifier()>() 
(assert true)
;(assert (<init>/280629704 var1860 var2244 var2649 var3823)) ; Statement: specialinvoke $r0.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r6, $r5, $r4) 

(declare-const var1860!1 var210)
(declare-const var2244!1 var2995)
(declare-const var2649!1 var2995)
(declare-const var3823!1 var2995)
(define-const var1799 String (var2764_format/543602932 var3140 (cast-from-var210-to-var745 var1860!1))) ; Statement: r8 = interfaceinvoke r7.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r0) 
(define-const var3790 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
(define-const var2050 Bool (hasPrimaryKey/-659896560 var2642)) ; Statement: $z2 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
(assert true)
(define-const var3569 String (tableCreateString/-1580650955 var2979 var2050)) ; Statement: $r11 = virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: java.lang.String tableCreateString(boolean)>($z2) 
(assert true)
;(assert (<init>/-1061048412 var3790 var3569)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>($r11) 
(declare-const var3790!1 String)
(assert (= var3790!1 var3569))
(assert true)
(define-const var555 String (append/-1166366385 var3790!1 32)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3790!2 String)
(assert (str.prefixof var3790!1 var3790!2))
(assert true)
(define-const var2743 String (append/672562846 var555 var1799)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var555!1 String)
(assert (= var555!1 (str.++ var555 var1799)))
(assert true)
(define-const var1579 String (append/672562846 var2743 " (")) ; Statement: r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2743!1 String)
(assert (= var2743!1 (str.++ var2743 " (")))
(assert true)
(define-const var2353 Bool (hasPrimaryKey/-659896560 var2642)) ; Statement: $z3 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
 ; Statement: if $z3 == 0 goto $z11 = 0 
(assert (= (ite var2353 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2292 Bool (ite (= 1 0) true false)) ; Statement: $z11 = 0 
(assert true) ; Non Conditional
(define-const var9 Bool var2292) ; Statement: z4 = $z11 
(define-const var1245 String null-String) ; Statement: r72 = null 
(assert true)
(define-const var2315 Bool (hasPrimaryKey/-659896560 var2642)) ; Statement: $z12 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
 ; Statement: if $z12 == 0 goto $r67 = virtualinvoke r1.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>() 
(assert (= (ite var2315 1 0) 0)) ; Cond: $z12 == 0 
(assert true)
(define-const var1135 Iterator (getColumnIterator/1853955427 var2642)) ; Statement: $r67 = virtualinvoke r1.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>() 
(define-const var1661 Bool (ite (= 1 1) true false)) ; Statement: z13 = 1 
(assert true) ; Non Conditional
(define-const var2377 Bool (Iterator_hasNext/-1669924200 var1135)) ; Statement: $z14 = interfaceinvoke $r67.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z14 == 0 goto $z5 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
(assert (= (ite var2377 1 0) 0)) ; Cond: $z14 == 0 
(assert true)
(define-const var1902 Bool (hasPrimaryKey/-659896560 var2642)) ; Statement: $z5 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>() 
 ; Statement: if $z5 == 0 goto $r15 = r10.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect> 
(assert (= (ite var1902 1 0) 0)) ; Cond: $z5 == 0 
(define-const var1903 var832 (dialect/1825021694 var2979)) ; Statement: $r15 = r10.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var1901 var3394 (getUniqueDelegate/218751566 var1903)) ; Statement: $r16 = virtualinvoke $r15.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>() 
(define-const var1262 String (var3394_getTableCreationUniqueConstraintsFragment/573425459 var1901 var2642 var3140)) ; Statement: $r17 = interfaceinvoke $r16.<org.hibernate.dialect.unique.UniqueDelegate: java.lang.String getTableCreationUniqueConstraintsFragment(org.hibernate.mapping.Table,org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r1, r7) 
(assert true)
;(assert (append/672562846 var1579 var1262)) ; Statement: virtualinvoke r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1579!1 String)
(assert (= var1579!1 (str.++ var1579 var1262)))
(assert true)
;(assert (applyTableCheck/-247795077 var2979 var2642 var1579!1)) ; Statement: virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyTableCheck(org.hibernate.mapping.Table,java.lang.StringBuilder)>(r1, r14) 

(declare-const var2979!1 var3331)
(declare-const var2642!1 var1483)
(declare-const var1579!2 String)
(assert true)
;(assert (append/-1166366385 var1579!2 41)) ; Statement: virtualinvoke r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1579!3 String)
(assert (str.prefixof var1579!2 var1579!3))
(assert true)
(define-const var936 String (getComment/1478229483 var2642!1)) ; Statement: $r18 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getComment()>() 
 ; Statement: if $r18 == null goto virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyTableTypeString(java.lang.StringBuilder)>(r14) 
(assert (= var936 null-String)) ; Cond: $r18 == null 
(assert true)
;(assert (applyTableTypeString/1649532794 var2979!1 var1579!3)) ; Statement: virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyTableTypeString(java.lang.StringBuilder)>(r14) 

(declare-const var2979!2 var3331)
(declare-const var1579!4 String)
(define-const var186 var3594 var3594-init) ; Statement: $r19 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var186)) ; Statement: specialinvoke $r19.<java.util.ArrayList: void <init>()>() 

(declare-const var186!1 var3594)
(assert true)
(define-const var793 String (toString/-2075883882 var1579!4)) ; Statement: $r20 = virtualinvoke r14.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1709_add/328494887 (cast-from-var3594-to-var1709 var186!1) (cast-from-String-to-var2106 var793))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>($r20) 

(declare-const var186!2 var3594)
(declare-const var793!1 String)
(assert true)
;(assert (applyComments/-546113308 var2979!2 var2642!1 var1799 (cast-from-var3594-to-var1709 var186!2))) ; Statement: virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyComments(org.hibernate.mapping.Table,java.lang.String,java.util.List)>(r1, r8, $r19) 

(declare-const var2979!3 var3331)
(declare-const var2642!2 var1483)
(declare-const var1799!1 String)
(declare-const var186!3 var3594)
(assert true)
;(assert (applyInitCommands/-1594830379 var2979!3 var2642!2 (cast-from-var3594-to-var1709 var186!3) var3140)) ; Statement: virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyInitCommands(org.hibernate.mapping.Table,java.util.List,org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r1, $r19, r7) 

(declare-const var2979!4 var3331)
(declare-const var2642!3 var1483)
(declare-const var186!4 var3594)
(declare-const var3140!1 var2764)
(define-const var1258 Int (var1709_size/-959786421 (cast-from-var3594-to-var1709 var186!4))) ; Statement: $i0 = interfaceinvoke $r19.<java.util.List: int size()>() 
(define-const var3226 (Array Int String) arr-String-init) ; Statement: $r21 = newarray (java.lang.String)[$i0] 
(define-const var1230 (Array Int var2106) (var1709_toArray/-775711681 (cast-from-var3594-to-var1709 var186!4) (cast-from-__Array__Int__String__-to-__Array__Int__var2106__ var3226))) ; Statement: $r22 = interfaceinvoke $r19.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r21) 
(define-const var2812 (Array Int String) (cast-from-__Array__Int__var2106__-to-__Array__Int__String__ var1230)) ; Statement: $r23 = (java.lang.String[]) $r22 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var210-init=([], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getCatalog/-1531610639=([org.hibernate.mapping.Table], java.lang.String), isCatalogQuoted/1330188784=([org.hibernate.mapping.Table], boolean), var2995_toIdentifier/807223652=([java.lang.String, boolean], org.hibernate.boot.model.naming.Identifier), getSchema/281261871=([org.hibernate.mapping.Table], java.lang.String), isSchemaQuoted/1314969792=([org.hibernate.mapping.Table], boolean), getNameIdentifier/1639380429=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), <init>/280629704=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void), var2764_format/543602932=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedName], java.lang.String), cast-from-var210-to-var745=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.relational.QualifiedName), String-init=([], java.lang.StringBuilder), hasPrimaryKey/-659896560=([org.hibernate.mapping.Table], boolean), tableCreateString/-1580650955=([org.hibernate.tool.schema.internal.StandardTableExporter, boolean], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getColumnIterator/1853955427=([org.hibernate.mapping.Table], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), dialect/1825021694=([org.hibernate.tool.schema.internal.StandardTableExporter], org.hibernate.dialect.Dialect), getUniqueDelegate/218751566=([org.hibernate.dialect.Dialect], org.hibernate.dialect.unique.UniqueDelegate), var3394_getTableCreationUniqueConstraintsFragment/573425459=([org.hibernate.dialect.unique.UniqueDelegate, org.hibernate.mapping.Table, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), applyTableCheck/-247795077=([org.hibernate.tool.schema.internal.StandardTableExporter, org.hibernate.mapping.Table, java.lang.StringBuilder], void), getComment/1478229483=([org.hibernate.mapping.Table], java.lang.String), applyTableTypeString/1649532794=([org.hibernate.tool.schema.internal.StandardTableExporter, java.lang.StringBuilder], void), var3594-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1709_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3594-to-var1709=([java.util.ArrayList], java.util.List), cast-from-String-to-var2106=([java.lang.String], java.lang.Object), applyComments/-546113308=([org.hibernate.tool.schema.internal.StandardTableExporter, org.hibernate.mapping.Table, java.lang.String, java.util.List], void), applyInitCommands/-1594830379=([org.hibernate.tool.schema.internal.StandardTableExporter, org.hibernate.mapping.Table, java.util.List, org.hibernate.boot.model.relational.SqlStringGenerationContext], void), var1709_size/-959786421=([java.util.List], int), arr-String-init=([], java.lang.String[]), var1709_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var2106__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var2106__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var3331=org.hibernate.tool.schema.internal.StandardTableExporter, var2979=r10, var1483=org.hibernate.mapping.Table, var2642=r1, var1951=org.hibernate.boot.Metadata, var108=r34, var2764=org.hibernate.boot.model.relational.SqlStringGenerationContext, var3140=r7, var210=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var1860=$r0, var2040=$r2, var2125=$z0, var2995=org.hibernate.boot.model.naming.Identifier, var2244=$r6, var618=$r3, var3244=$z1, var2649=$r5, var3823=$r4, var745=org.hibernate.boot.model.relational.QualifiedName, var1799=r8, var3790=$r9, var2050=$z2, var3569=$r11, var555=$r12, var2743=$r13, var1579=r14, var2353=$z3, var2292=$z11, var9=z4, var572=null_type, var1245=r72, var2315=$z12, var1135=$r67, var1661=z13, var2377=$z14, var1902=$z5, var832=org.hibernate.dialect.Dialect, var1903=$r15, var3394=org.hibernate.dialect.unique.UniqueDelegate, var1901=$r16, var1262=$r17, var936=$r18, var3594=java.util.ArrayList, var186=$r19, var793=$r20, var1709=java.util.List, var2106=java.lang.Object, var1258=$i0, var3226=$r21, var1230=$r22, var2812=$r23}
; {org.hibernate.tool.schema.internal.StandardTableExporter=var3331, r10=var2979, org.hibernate.mapping.Table=var1483, r1=var2642, org.hibernate.boot.Metadata=var1951, r34=var108, org.hibernate.boot.model.relational.SqlStringGenerationContext=var2764, r7=var3140, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var210, $r0=var1860, $r2=var2040, $z0=var2125, org.hibernate.boot.model.naming.Identifier=var2995, $r6=var2244, $r3=var618, $z1=var3244, $r5=var2649, $r4=var3823, org.hibernate.boot.model.relational.QualifiedName=var745, r8=var1799, $r9=var3790, $z2=var2050, $r11=var3569, $r12=var555, $r13=var2743, r14=var1579, $z3=var2353, $z11=var2292, z4=var9, null_type=var572, r72=var1245, $z12=var2315, $r67=var1135, z13=var1661, $z14=var2377, $z5=var1902, org.hibernate.dialect.Dialect=var832, $r15=var1903, org.hibernate.dialect.unique.UniqueDelegate=var3394, $r16=var1901, $r17=var1262, $r18=var936, java.util.ArrayList=var3594, $r19=var186, $r20=var793, java.util.List=var1709, java.lang.Object=var2106, $i0=var1258, $r21=var3226, $r22=var1230, $r23=var2812}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.tool.schema.internal.StandardTableExporter;	r1 := @parameter0: org.hibernate.mapping.Table;	r34 := @parameter1: org.hibernate.boot.Metadata;	r7 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r0 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts;	$r2 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getCatalog()>();	$z0 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean isCatalogQuoted()>();	$r6 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,boolean)>($r2, $z0);	$r3 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getSchema()>();	$z1 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean isSchemaQuoted()>();	$r5 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,boolean)>($r3, $z1);	$r4 = virtualinvoke r1.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier getNameIdentifier()>();	specialinvoke $r0.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r6, $r5, $r4);	r8 = interfaceinvoke r7.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r0);	$r9 = new java.lang.StringBuilder;	$z2 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	$r11 = virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: java.lang.String tableCreateString(boolean)>($z2);	specialinvoke $r9.<java.lang.StringBuilder: void <init>(java.lang.String)>($r11);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$z3 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	if $z3 == 0 goto $z11 = 0;	$z11 = 0;	z4 = $z11;	r72 = null;	$z12 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	if $z12 == 0 goto $r67 = virtualinvoke r1.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>();	$r67 = virtualinvoke r1.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>();	z13 = 1;	$z14 = interfaceinvoke $r67.<java.util.Iterator: boolean hasNext()>();	if $z14 == 0 goto $z5 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	$z5 = virtualinvoke r1.<org.hibernate.mapping.Table: boolean hasPrimaryKey()>();	if $z5 == 0 goto $r15 = r10.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect>;	$r15 = r10.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect>;	$r16 = virtualinvoke $r15.<org.hibernate.dialect.Dialect: org.hibernate.dialect.unique.UniqueDelegate getUniqueDelegate()>();	$r17 = interfaceinvoke $r16.<org.hibernate.dialect.unique.UniqueDelegate: java.lang.String getTableCreationUniqueConstraintsFragment(org.hibernate.mapping.Table,org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r1, r7);	virtualinvoke r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyTableCheck(org.hibernate.mapping.Table,java.lang.StringBuilder)>(r1, r14);	virtualinvoke r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r18 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getComment()>();	if $r18 == null goto virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyTableTypeString(java.lang.StringBuilder)>(r14);	virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyTableTypeString(java.lang.StringBuilder)>(r14);	$r19 = new java.util.ArrayList;	specialinvoke $r19.<java.util.ArrayList: void <init>()>();	$r20 = virtualinvoke r14.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>($r20);	virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyComments(org.hibernate.mapping.Table,java.lang.String,java.util.List)>(r1, r8, $r19);	virtualinvoke r10.<org.hibernate.tool.schema.internal.StandardTableExporter: void applyInitCommands(org.hibernate.mapping.Table,java.util.List,org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r1, $r19, r7);	$i0 = interfaceinvoke $r19.<java.util.List: int size()>();	$r21 = newarray (java.lang.String)[$i0];	$r22 = interfaceinvoke $r19.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r21);	$r23 = (java.lang.String[]) $r22;	return $r23
;block_num 8