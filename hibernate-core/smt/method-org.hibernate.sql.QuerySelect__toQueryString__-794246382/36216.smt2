(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1367 0)
(declare-sort var1395 0)
(declare-sort var3392 0)
(declare-sort var2315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-1123813506 (var1367) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun distinct/-1123813506 (var1367) Bool)
(declare-fun joins/-1123813506 (var1367) var3392)
(declare-fun toFromFragmentString/701527262 (var3392) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun select/-1123813506 (var1367) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toWhereFragmentString/-1276368279 (var3392) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun where/-1123813506 (var1367) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun groupBy/-1123813506 (var1367) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun having/-1123813506 (var1367) String)
(declare-fun orderBy/-1123813506 (var1367) String)
(declare-fun dialect/-1123813506 (var1367) var2315)
(declare-fun transformSelectString/323702850 (var2315 String) String)
(declare-const null-var1367 var1367)
(declare-const null-String String)
(declare-const var1061 var1367) ; Statement: r1 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var1061 null-var1367)))
(define-const var3685 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3685 50)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50) 

(declare-const var3685!1 String)
(declare-const var2286 Int)
(define-const var158 String (comment/-1123813506 var1061)) ; Statement: $r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment> 
 ; Statement: if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(assert (= var158 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var3685!1 "select ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3685!2 String)
(assert (= var3685!2 (str.++ var3685!1 "select ")))
(define-const var374 Bool (distinct/-1123813506 var1061)) ; Statement: $z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct> 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert (= (ite var374 1 0) 0)) ; Cond: $z0 == 0 
(define-const var336 var3392 (joins/-1123813506 var1061)) ; Statement: $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var2518 String (toFromFragmentString/701527262 var336)) ; Statement: $r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(define-const var3386 String var2518) ; Statement: r24 = $r19 
(assert true)
(define-const var1357 Bool (startsWith/-1785782452 var2518 ",")) ; Statement: $z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join") 
(assert (= (ite var1357 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var427 Bool (startsWith/-1785782452 var2518 " inner join")) ; Statement: $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join") 
 ; Statement: if $z2 == 0 goto $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(assert (= (ite var427 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3720 String (select/-1123813506 var1061)) ; Statement: $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(assert true)
(define-const var2127 String (toString/-2075883882 var3720)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var533 String (append/672562846 var3685!2 var2127)) ; Statement: $r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3685!3 String)
(assert (= var3685!3 (str.++ var3685!2 var2127)))
(assert true)
(define-const var3973 String (append/672562846 var533 " from")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from") 
(declare-const var533!1 String)
(assert (= var533!1 (str.++ var533 " from")))
(assert true)
;(assert (append/672562846 var3973 var3386)) ; Statement: virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24) 
(declare-const var3973!1 String)
(assert (= var3973!1 (str.++ var3973 var3386)))
(define-const var2011 var3392 (joins/-1123813506 var1061)) ; Statement: $r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var1191 String (toWhereFragmentString/-1276368279 var2011)) ; Statement: $r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var2797 String (trim/-847153721 var1191)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>() 
(define-const var3712 String (where/-1123813506 var1061)) ; Statement: $r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert true)
(define-const var3890 String (toString/-2075883882 var3712)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1187 String (trim/-847153721 var3890)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2685 Int (length/-134980193 var2797)) ; Statement: $i3 = virtualinvoke $r31.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $z5 = 0 
(assert (<= var2685 0)) ; Cond: $i3 <= 0 
(define-const var746 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(define-const var2765 Bool var746) ; Statement: z3 = $z5 
(assert true)
(define-const var2445 Int (length/-134980193 var1187)) ; Statement: $i0 = virtualinvoke $r34.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $z8 = 0 
(assert (not (<= var2445 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3074 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
(define-const var573 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= z4 = $z7] 
(assert true) ; Non Conditional
(define-const var2276 Bool var573) ; Statement: z4 = $z7 
 ; Statement: if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(assert (not (not (= (ite var2765 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert (= (ite var3074 1 0) 0)) ; Cond: $z8 == 0 
(define-const var2942 String (groupBy/-1123813506 var1061)) ; Statement: $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert true)
(define-const var1439 Int (length/-171891354 var2942)) ; Statement: $i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert (<= var1439 0)) ; Cond: $i4 <= 0 
(define-const var1567 String (having/-1123813506 var1061)) ; Statement: $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert true)
(define-const var1348 Int (length/-171891354 var1567)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert (<= var1348 0)) ; Cond: $i1 <= 0 
(define-const var1547 String (orderBy/-1123813506 var1061)) ; Statement: $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert true)
(define-const var870 Int (length/-171891354 var1547)) ; Statement: $i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert (<= var870 0)) ; Cond: $i2 <= 0 
(define-const var2535 var2315 (dialect/-1123813506 var1061)) ; Statement: $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var574 String (toString/-2075883882 var3685!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var314 String (transformSelectString/323702850 var2535 var574)) ; Statement: $r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), distinct/-1123813506=([org.hibernate.sql.QuerySelect], boolean), joins/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.sql.JoinFragment), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), select/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), groupBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), having/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), orderBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), dialect/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.dialect.Dialect), transformSelectString/323702850=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String)}
; {var1367=org.hibernate.sql.QuerySelect, var1061=r1, var3685=$r0, var2286=50, var158=$r2, var1395=null_type, var374=$z0, var3392=org.hibernate.sql.JoinFragment, var336=$r3, var2518=$r19, var3386=r24, var1357=$z1, var427=$z2, var3720=$r25, var2127=$r26, var533=$r27, var3973=$r28, var2011=$r29, var1191=$r30, var2797=$r31, var3712=$r32, var3890=$r33, var1187=$r34, var2685=$i3, var746=$z5, var2765=z3, var2445=$i0, var3074=$z8, var573=$z7, var2276=z4, var2942=$r35, var1439=$i4, var1567=$r4, var1348=$i1, var1547=$r5, var870=$i2, var2315=org.hibernate.dialect.Dialect, var2535=$r6, var574=$r7, var314=$r8}
; {org.hibernate.sql.QuerySelect=var1367, r1=var1061, $r0=var3685, 50=var2286, $r2=var158, null_type=var1395, $z0=var374, org.hibernate.sql.JoinFragment=var3392, $r3=var336, $r19=var2518, r24=var3386, $z1=var1357, $z2=var427, $r25=var3720, $r26=var2127, $r27=var533, $r28=var3973, $r29=var2011, $r30=var1191, $r31=var2797, $r32=var3712, $r33=var3890, $r34=var1187, $i3=var2685, $z5=var746, z3=var2765, $i0=var2445, $z8=var3074, $z7=var573, z4=var2276, $r35=var2942, $i4=var1439, $r4=var1567, $i1=var1348, $r5=var1547, $i2=var870, org.hibernate.dialect.Dialect=var2315, $r6=var2535, $r7=var574, $r8=var314}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: int length()>": 3}
;stmts r1 := @this: org.hibernate.sql.QuerySelect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50);	$r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment>;	if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct>;	if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	r24 = $r19;	$z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",");	if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join");	$z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join");	if $z2 == 0 goto $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from");	virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24);	$r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>();	$r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>();	$i3 = virtualinvoke $r31.<java.lang.String: int length()>();	if $i3 <= 0 goto $z5 = 0;	$z5 = 0;	z3 = $z5;	$i0 = virtualinvoke $r34.<java.lang.String: int length()>();	if $i0 <= 0 goto $z8 = 0;	$z8 = 1;	$z7 = 1;	goto [?= z4 = $z7];	z4 = $z7;	if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>();	if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>();	if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7);	return $r8
;block_num 14