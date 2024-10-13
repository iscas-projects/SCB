(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1661 0)
(declare-sort var1259 0)
(declare-sort var3015 0)
(declare-sort var3981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-1123813506 (var1661) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun distinct/-1123813506 (var1661) Bool)
(declare-fun joins/-1123813506 (var1661) var3015)
(declare-fun toFromFragmentString/701527262 (var3015) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun select/-1123813506 (var1661) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toWhereFragmentString/-1276368279 (var3015) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun where/-1123813506 (var1661) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun groupBy/-1123813506 (var1661) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun having/-1123813506 (var1661) String)
(declare-fun orderBy/-1123813506 (var1661) String)
(declare-fun dialect/-1123813506 (var1661) var3981)
(declare-fun transformSelectString/323702850 (var3981 String) String)
(declare-const null-var1661 var1661)
(declare-const null-String String)
(declare-const var3105 var1661) ; Statement: r1 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var3105 null-var1661)))
(define-const var215 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var215 50)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50) 

(declare-const var215!1 String)
(declare-const var3503 Int)
(define-const var2646 String (comment/-1123813506 var3105)) ; Statement: $r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment> 
 ; Statement: if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(assert (= var2646 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var215!1 "select ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var215!2 String)
(assert (= var215!2 (str.++ var215!1 "select ")))
(define-const var705 Bool (distinct/-1123813506 var3105)) ; Statement: $z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct> 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert (= (ite var705 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2532 var3015 (joins/-1123813506 var3105)) ; Statement: $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var592 String (toFromFragmentString/701527262 var2532)) ; Statement: $r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(define-const var1095 String var592) ; Statement: r24 = $r19 
(assert true)
(define-const var1299 Bool (startsWith/-1785782452 var592 ",")) ; Statement: $z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join") 
(assert (= (ite var1299 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var358 Bool (startsWith/-1785782452 var592 " inner join")) ; Statement: $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join") 
 ; Statement: if $z2 == 0 goto $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(assert (= (ite var358 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2301 String (select/-1123813506 var3105)) ; Statement: $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(assert true)
(define-const var2265 String (toString/-2075883882 var2301)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var190 String (append/672562846 var215!2 var2265)) ; Statement: $r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var215!3 String)
(assert (= var215!3 (str.++ var215!2 var2265)))
(assert true)
(define-const var2456 String (append/672562846 var190 " from")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from") 
(declare-const var190!1 String)
(assert (= var190!1 (str.++ var190 " from")))
(assert true)
;(assert (append/672562846 var2456 var1095)) ; Statement: virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24) 
(declare-const var2456!1 String)
(assert (= var2456!1 (str.++ var2456 var1095)))
(define-const var541 var3015 (joins/-1123813506 var3105)) ; Statement: $r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var2471 String (toWhereFragmentString/-1276368279 var541)) ; Statement: $r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var3331 String (trim/-847153721 var2471)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>() 
(define-const var26 String (where/-1123813506 var3105)) ; Statement: $r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert true)
(define-const var3972 String (toString/-2075883882 var26)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var357 String (trim/-847153721 var3972)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2945 Int (length/-134980193 var3331)) ; Statement: $i3 = virtualinvoke $r31.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $z5 = 0 
(assert (not (<= var2945 0))) ; Negate: Cond: $i3 <= 0  
(define-const var2670 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= z3 = $z5] 
(assert true) ; Non Conditional
(define-const var3041 Bool var2670) ; Statement: z3 = $z5 
(assert true)
(define-const var3238 Int (length/-134980193 var357)) ; Statement: $i0 = virtualinvoke $r34.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $z8 = 0 
(assert (not (<= var3238 0))) ; Negate: Cond: $i0 <= 0  
(define-const var2733 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
(define-const var1729 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= z4 = $z7] 
(assert true) ; Non Conditional
(define-const var2722 Bool var1729) ; Statement: z4 = $z7 
 ; Statement: if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(assert (not (not (= (ite var3041 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert (= (ite var2733 1 0) 0)) ; Cond: $z8 == 0 
(define-const var3939 String (groupBy/-1123813506 var3105)) ; Statement: $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert true)
(define-const var3167 Int (length/-171891354 var3939)) ; Statement: $i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert (<= var3167 0)) ; Cond: $i4 <= 0 
(define-const var2416 String (having/-1123813506 var3105)) ; Statement: $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert true)
(define-const var1032 Int (length/-171891354 var2416)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert (<= var1032 0)) ; Cond: $i1 <= 0 
(define-const var3668 String (orderBy/-1123813506 var3105)) ; Statement: $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert true)
(define-const var3512 Int (length/-171891354 var3668)) ; Statement: $i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert (<= var3512 0)) ; Cond: $i2 <= 0 
(define-const var2237 var3981 (dialect/-1123813506 var3105)) ; Statement: $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var1707 String (toString/-2075883882 var215!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1161 String (transformSelectString/323702850 var2237 var1707)) ; Statement: $r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), distinct/-1123813506=([org.hibernate.sql.QuerySelect], boolean), joins/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.sql.JoinFragment), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), select/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), groupBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), having/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), orderBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), dialect/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.dialect.Dialect), transformSelectString/323702850=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String)}
; {var1661=org.hibernate.sql.QuerySelect, var3105=r1, var215=$r0, var3503=50, var2646=$r2, var1259=null_type, var705=$z0, var3015=org.hibernate.sql.JoinFragment, var2532=$r3, var592=$r19, var1095=r24, var1299=$z1, var358=$z2, var2301=$r25, var2265=$r26, var190=$r27, var2456=$r28, var541=$r29, var2471=$r30, var3331=$r31, var26=$r32, var3972=$r33, var357=$r34, var2945=$i3, var2670=$z5, var3041=z3, var3238=$i0, var2733=$z8, var1729=$z7, var2722=z4, var3939=$r35, var3167=$i4, var2416=$r4, var1032=$i1, var3668=$r5, var3512=$i2, var3981=org.hibernate.dialect.Dialect, var2237=$r6, var1707=$r7, var1161=$r8}
; {org.hibernate.sql.QuerySelect=var1661, r1=var3105, $r0=var215, 50=var3503, $r2=var2646, null_type=var1259, $z0=var705, org.hibernate.sql.JoinFragment=var3015, $r3=var2532, $r19=var592, r24=var1095, $z1=var1299, $z2=var358, $r25=var2301, $r26=var2265, $r27=var190, $r28=var2456, $r29=var541, $r30=var2471, $r31=var3331, $r32=var26, $r33=var3972, $r34=var357, $i3=var2945, $z5=var2670, z3=var3041, $i0=var3238, $z8=var2733, $z7=var1729, z4=var2722, $r35=var3939, $i4=var3167, $r4=var2416, $i1=var1032, $r5=var3668, $i2=var3512, org.hibernate.dialect.Dialect=var3981, $r6=var2237, $r7=var1707, $r8=var1161}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: int length()>": 3}
;stmts r1 := @this: org.hibernate.sql.QuerySelect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50);	$r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment>;	if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct>;	if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	r24 = $r19;	$z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",");	if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join");	$z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join");	if $z2 == 0 goto $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from");	virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24);	$r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>();	$r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>();	$i3 = virtualinvoke $r31.<java.lang.String: int length()>();	if $i3 <= 0 goto $z5 = 0;	$z5 = 1;	goto [?= z3 = $z5];	z3 = $z5;	$i0 = virtualinvoke $r34.<java.lang.String: int length()>();	if $i0 <= 0 goto $z8 = 0;	$z8 = 1;	$z7 = 1;	goto [?= z4 = $z7];	z4 = $z7;	if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>();	if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>();	if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7);	return $r8
;block_num 14