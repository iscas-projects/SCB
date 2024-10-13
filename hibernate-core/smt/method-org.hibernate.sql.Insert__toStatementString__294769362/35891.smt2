(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var267 0)
(declare-sort var1021 0)
(declare-sort var475 0)
(declare-sort var3264 0)
(declare-sort var3750 0)
(declare-sort var366 0)
(declare-sort var1142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun columns/-1044056353 (var267) var1021)
(declare-fun var1021_size/-1594421051 (var1021) Int)
(declare-fun tableName/-1044056353 (var267) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-1044056353 (var267) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun dialect/-1044056353 (var267) var3264)
(declare-fun supportsNoColumnsInsert/2002724390 (var3264) Bool)
(declare-fun var3750-init () var3750)
(declare-fun arr-var366-init () (Array Int var366))
(declare-fun cast-from-String-to-var366 (String) var366)
(declare-fun cast-from-var3264-to-var366 (var3264) var366)
(declare-fun String_format/1339386452 (String (Array Int var366)) String)
(declare-fun <init>/-1350304819 (var3750 String) void)
(declare-fun cast-from-var3750-to-var1142 (var3750) var1142)
(declare-const null-var267 var267)
(declare-const null-String String)
(declare-const null-__Array__Int__var366__ (Array Int var366))
(declare-const var1343 var267) ; Statement: r1 := @this: org.hibernate.sql.Insert 
(assert (not (= var1343 null-var267)))
(define-const var2236 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(define-const var2596 var1021 (columns/-1044056353 var1343)) ; Statement: $r2 = r1.<org.hibernate.sql.Insert: java.util.Map columns> 
(define-const var126 Int (var1021_size/-1594421051 var2596)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.Map: int size()>() 
(define-const var2498 Int (* var126 15)) ; Statement: $i2 = $i0 * 15 
(define-const var3689 String (tableName/-1044056353 var1343)) ; Statement: $r3 = r1.<org.hibernate.sql.Insert: java.lang.String tableName> 
(assert true)
(define-const var295 Int (length/-134980193 var3689)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var1259 Int (+ var2498 var295)) ; Statement: $i3 = $i2 + $i1 
(define-const var962 Int (+ var1259 10)) ; Statement: $i4 = $i3 + 10 
(assert true)
;(assert (<init>/543593434 var2236 var962)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var2236!1 String)
(declare-const var962!1 Int)
(define-const var707 String (comment/-1044056353 var1343)) ; Statement: $r4 = r1.<org.hibernate.sql.Insert: java.lang.String comment> 
 ; Statement: if $r4 == null goto $r6 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ") 
(assert (= var707 null-String)) ; Cond: $r4 == null 
(assert true)
(define-const var1263 String (append/672562846 var2236!1 "insert into ")) ; Statement: $r6 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ") 
(declare-const var2236!2 String)
(assert (= var2236!2 (str.++ var2236!1 "insert into ")))
(define-const var379 String (tableName/-1044056353 var1343)) ; Statement: $r5 = r1.<org.hibernate.sql.Insert: java.lang.String tableName> 
(assert true)
;(assert (append/672562846 var1263 var379)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1263!1 String)
(assert (= var1263!1 (str.++ var1263 var379)))
(define-const var1321 var1021 (columns/-1044056353 var1343)) ; Statement: $r7 = r1.<org.hibernate.sql.Insert: java.util.Map columns> 
(define-const var1191 Int (var1021_size/-1594421051 var1321)) ; Statement: $i5 = interfaceinvoke $r7.<java.util.Map: int size()>() 
 ; Statement: if $i5 != 0 goto virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(assert (not (not (= var1191 0)))) ; Negate: Cond: $i5 != 0  
(define-const var949 var3264 (dialect/-1044056353 var1343)) ; Statement: $r17 = r1.<org.hibernate.sql.Insert: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var2989 Bool (supportsNoColumnsInsert/2002724390 var949)) ; Statement: $z2 = virtualinvoke $r17.<org.hibernate.dialect.Dialect: boolean supportsNoColumnsInsert()>() 
 ; Statement: if $z2 == 0 goto $r33 = new org.hibernate.MappingException 
(assert (= (ite var2989 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1222 var3750 var3750-init) ; Statement: $r33 = new org.hibernate.MappingException 
(define-const var96 (Array Int var366) arr-var366-init) ; Statement: $r19 = newarray (java.lang.Object)[2] 
(define-const var3586 String (tableName/-1044056353 var1343)) ; Statement: $r20 = r1.<org.hibernate.sql.Insert: java.lang.String tableName> 
(declare-const var96!1 (Array Int var366))
(assert (not (= var96!1 null-__Array__Int__var366__)))
(assert (= (select var96!1 0) (cast-from-String-to-var366 var3586))) ; Statement: $r19[0] = $r20 
(define-const var2047 var3264 (dialect/-1044056353 var1343)) ; Statement: $r21 = r1.<org.hibernate.sql.Insert: org.hibernate.dialect.Dialect dialect> 
(declare-const var96!2 (Array Int var366))
(assert (not (= var96!2 null-__Array__Int__var366__)))
(assert (= (select var96!2 1) (cast-from-var3264-to-var366 var2047))) ; Statement: $r19[1] = $r21 
(define-const var852 String (String_format/1339386452 "The INSERT statement for table [%s] contains no column, and this is not supported by [%s]" var96!2)) ; Statement: $r22 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The INSERT statement for table [%s] contains no column, and this is not supported by [%s]", $r19) 
(assert true)
;(assert (<init>/-1350304819 var1222 var852)) ; Statement: specialinvoke $r33.<org.hibernate.MappingException: void <init>(java.lang.String)>($r22) 

(declare-const var1222!1 var3750)
(declare-const var852!1 String)
(define-const var2786 var1142 (cast-from-var3750-to-var1142 var1222!1)) ; Statement: $r34 = (java.lang.Throwable) $r33 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), columns/-1044056353=([org.hibernate.sql.Insert], java.util.Map), var1021_size/-1594421051=([java.util.Map], int), tableName/-1044056353=([org.hibernate.sql.Insert], java.lang.String), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-1044056353=([org.hibernate.sql.Insert], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), dialect/-1044056353=([org.hibernate.sql.Insert], org.hibernate.dialect.Dialect), supportsNoColumnsInsert/2002724390=([org.hibernate.dialect.Dialect], boolean), var3750-init=([], org.hibernate.MappingException), arr-var366-init=([], java.lang.Object[]), cast-from-String-to-var366=([java.lang.String], java.lang.Object), cast-from-var3264-to-var366=([org.hibernate.dialect.Dialect], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3750-to-var1142=([org.hibernate.MappingException], java.lang.Throwable)}
; {var267=org.hibernate.sql.Insert, var1343=r1, var2236=$r32, var1021=java.util.Map, var2596=$r2, var126=$i0, var2498=$i2, var3689=$r3, var295=$i1, var1259=$i3, var962=$i4, var707=$r4, var475=null_type, var1263=$r6, var379=$r5, var1321=$r7, var1191=$i5, var3264=org.hibernate.dialect.Dialect, var949=$r17, var2989=$z2, var3750=org.hibernate.MappingException, var1222=$r33, var366=java.lang.Object, var96=$r19, var3586=$r20, var2047=$r21, var852=$r22, var1142=java.lang.Throwable, var2786=$r34}
; {org.hibernate.sql.Insert=var267, r1=var1343, $r32=var2236, java.util.Map=var1021, $r2=var2596, $i0=var126, $i2=var2498, $r3=var3689, $i1=var295, $i3=var1259, $i4=var962, $r4=var707, null_type=var475, $r6=var1263, $r5=var379, $r7=var1321, $i5=var1191, org.hibernate.dialect.Dialect=var3264, $r17=var949, $z2=var2989, org.hibernate.MappingException=var3750, $r33=var1222, java.lang.Object=var366, $r19=var96, $r20=var3586, $r21=var2047, $r22=var852, java.lang.Throwable=var1142, $r34=var2786}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.sql.Insert;	$r32 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.Insert: java.util.Map columns>;	$i0 = interfaceinvoke $r2.<java.util.Map: int size()>();	$i2 = $i0 * 15;	$r3 = r1.<org.hibernate.sql.Insert: java.lang.String tableName>;	$i1 = virtualinvoke $r3.<java.lang.String: int length()>();	$i3 = $i2 + $i1;	$i4 = $i3 + 10;	specialinvoke $r32.<java.lang.StringBuilder: void <init>(int)>($i4);	$r4 = r1.<org.hibernate.sql.Insert: java.lang.String comment>;	if $r4 == null goto $r6 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ");	$r6 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ");	$r5 = r1.<org.hibernate.sql.Insert: java.lang.String tableName>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = r1.<org.hibernate.sql.Insert: java.util.Map columns>;	$i5 = interfaceinvoke $r7.<java.util.Map: int size()>();	if $i5 != 0 goto virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r17 = r1.<org.hibernate.sql.Insert: org.hibernate.dialect.Dialect dialect>;	$z2 = virtualinvoke $r17.<org.hibernate.dialect.Dialect: boolean supportsNoColumnsInsert()>();	if $z2 == 0 goto $r33 = new org.hibernate.MappingException;	$r33 = new org.hibernate.MappingException;	$r19 = newarray (java.lang.Object)[2];	$r20 = r1.<org.hibernate.sql.Insert: java.lang.String tableName>;	$r19[0] = $r20;	$r21 = r1.<org.hibernate.sql.Insert: org.hibernate.dialect.Dialect dialect>;	$r19[1] = $r21;	$r22 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("The INSERT statement for table [%s] contains no column, and this is not supported by [%s]", $r19);	specialinvoke $r33.<org.hibernate.MappingException: void <init>(java.lang.String)>($r22);	$r34 = (java.lang.Throwable) $r33;	throw $r34
;block_num 4