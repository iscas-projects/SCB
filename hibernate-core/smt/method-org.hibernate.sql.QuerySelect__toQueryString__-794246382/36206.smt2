(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2525 0)
(declare-sort var2677 0)
(declare-sort var3631 0)
(declare-sort var1450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-1123813506 (var2525) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun distinct/-1123813506 (var2525) Bool)
(declare-fun joins/-1123813506 (var2525) var3631)
(declare-fun toFromFragmentString/701527262 (var3631) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun select/-1123813506 (var2525) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toWhereFragmentString/-1276368279 (var3631) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun where/-1123813506 (var2525) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun groupBy/-1123813506 (var2525) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun having/-1123813506 (var2525) String)
(declare-fun orderBy/-1123813506 (var2525) String)
(declare-fun dialect/-1123813506 (var2525) var1450)
(declare-fun transformSelectString/323702850 (var1450 String) String)
(declare-const null-var2525 var2525)
(declare-const null-String String)
(declare-const var2512 var2525) ; Statement: r1 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var2512 null-var2525)))
(define-const var1141 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1141 50)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50) 

(declare-const var1141!1 String)
(declare-const var1205 Int)
(define-const var1589 String (comment/-1123813506 var2512)) ; Statement: $r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment> 
 ; Statement: if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(assert (= var1589 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var1141!1 "select ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var1141!2 String)
(assert (= var1141!2 (str.++ var1141!1 "select ")))
(define-const var1444 Bool (distinct/-1123813506 var2512)) ; Statement: $z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct> 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert (= (ite var1444 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1266 var3631 (joins/-1123813506 var2512)) ; Statement: $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var3692 String (toFromFragmentString/701527262 var1266)) ; Statement: $r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(define-const var3390 String var3692) ; Statement: r24 = $r19 
(assert true)
(define-const var137 Bool (startsWith/-1785782452 var3692 ",")) ; Statement: $z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join") 
(assert (= (ite var137 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1344 Bool (startsWith/-1785782452 var3692 " inner join")) ; Statement: $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join") 
 ; Statement: if $z2 == 0 goto $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(assert (= (ite var1344 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1754 String (select/-1123813506 var2512)) ; Statement: $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(assert true)
(define-const var3591 String (toString/-2075883882 var1754)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3288 String (append/672562846 var1141!2 var3591)) ; Statement: $r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1141!3 String)
(assert (= var1141!3 (str.++ var1141!2 var3591)))
(assert true)
(define-const var1859 String (append/672562846 var3288 " from")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from") 
(declare-const var3288!1 String)
(assert (= var3288!1 (str.++ var3288 " from")))
(assert true)
;(assert (append/672562846 var1859 var3390)) ; Statement: virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24) 
(declare-const var1859!1 String)
(assert (= var1859!1 (str.++ var1859 var3390)))
(define-const var1116 var3631 (joins/-1123813506 var2512)) ; Statement: $r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var929 String (toWhereFragmentString/-1276368279 var1116)) ; Statement: $r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var3565 String (trim/-847153721 var929)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>() 
(define-const var156 String (where/-1123813506 var2512)) ; Statement: $r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert true)
(define-const var846 String (toString/-2075883882 var156)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1272 String (trim/-847153721 var846)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1580 Int (length/-134980193 var3565)) ; Statement: $i3 = virtualinvoke $r31.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $z5 = 0 
(assert (not (<= var1580 0))) ; Negate: Cond: $i3 <= 0  
(define-const var3216 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= z3 = $z5] 
(assert true) ; Non Conditional
(define-const var1065 Bool var3216) ; Statement: z3 = $z5 
(assert true)
(define-const var3197 Int (length/-134980193 var1272)) ; Statement: $i0 = virtualinvoke $r34.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $z8 = 0 
(assert (<= var3197 0)) ; Cond: $i0 <= 0 
(define-const var600 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(define-const var1705 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
(define-const var3416 Bool var1705) ; Statement: z4 = $z7 
 ; Statement: if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(assert (not (not (= (ite var1065 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert (= (ite var600 1 0) 0)) ; Cond: $z8 == 0 
(define-const var689 String (groupBy/-1123813506 var2512)) ; Statement: $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert true)
(define-const var3845 Int (length/-171891354 var689)) ; Statement: $i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert (<= var3845 0)) ; Cond: $i4 <= 0 
(define-const var281 String (having/-1123813506 var2512)) ; Statement: $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert true)
(define-const var545 Int (length/-171891354 var281)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert (<= var545 0)) ; Cond: $i1 <= 0 
(define-const var585 String (orderBy/-1123813506 var2512)) ; Statement: $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert true)
(define-const var1517 Int (length/-171891354 var585)) ; Statement: $i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert (<= var1517 0)) ; Cond: $i2 <= 0 
(define-const var2630 var1450 (dialect/-1123813506 var2512)) ; Statement: $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var2113 String (toString/-2075883882 var1141!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var105 String (transformSelectString/323702850 var2630 var2113)) ; Statement: $r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), distinct/-1123813506=([org.hibernate.sql.QuerySelect], boolean), joins/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.sql.JoinFragment), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), select/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), groupBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), having/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), orderBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), dialect/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.dialect.Dialect), transformSelectString/323702850=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String)}
; {var2525=org.hibernate.sql.QuerySelect, var2512=r1, var1141=$r0, var1205=50, var1589=$r2, var2677=null_type, var1444=$z0, var3631=org.hibernate.sql.JoinFragment, var1266=$r3, var3692=$r19, var3390=r24, var137=$z1, var1344=$z2, var1754=$r25, var3591=$r26, var3288=$r27, var1859=$r28, var1116=$r29, var929=$r30, var3565=$r31, var156=$r32, var846=$r33, var1272=$r34, var1580=$i3, var3216=$z5, var1065=z3, var3197=$i0, var600=$z8, var1705=$z7, var3416=z4, var689=$r35, var3845=$i4, var281=$r4, var545=$i1, var585=$r5, var1517=$i2, var1450=org.hibernate.dialect.Dialect, var2630=$r6, var2113=$r7, var105=$r8}
; {org.hibernate.sql.QuerySelect=var2525, r1=var2512, $r0=var1141, 50=var1205, $r2=var1589, null_type=var2677, $z0=var1444, org.hibernate.sql.JoinFragment=var3631, $r3=var1266, $r19=var3692, r24=var3390, $z1=var137, $z2=var1344, $r25=var1754, $r26=var3591, $r27=var3288, $r28=var1859, $r29=var1116, $r30=var929, $r31=var3565, $r32=var156, $r33=var846, $r34=var1272, $i3=var1580, $z5=var3216, z3=var1065, $i0=var3197, $z8=var600, $z7=var1705, z4=var3416, $r35=var689, $i4=var3845, $r4=var281, $i1=var545, $r5=var585, $i2=var1517, org.hibernate.dialect.Dialect=var1450, $r6=var2630, $r7=var2113, $r8=var105}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: int length()>": 3}
;stmts r1 := @this: org.hibernate.sql.QuerySelect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50);	$r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment>;	if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct>;	if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	r24 = $r19;	$z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",");	if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join");	$z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join");	if $z2 == 0 goto $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from");	virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24);	$r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>();	$r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>();	$i3 = virtualinvoke $r31.<java.lang.String: int length()>();	if $i3 <= 0 goto $z5 = 0;	$z5 = 1;	goto [?= z3 = $z5];	z3 = $z5;	$i0 = virtualinvoke $r34.<java.lang.String: int length()>();	if $i0 <= 0 goto $z8 = 0;	$z8 = 0;	$z7 = 0;	z4 = $z7;	if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>();	if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>();	if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7);	return $r8
;block_num 14