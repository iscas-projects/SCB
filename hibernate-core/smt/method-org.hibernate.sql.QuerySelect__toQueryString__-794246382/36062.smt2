(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3902 0)
(declare-sort var291 0)
(declare-sort var2108 0)
(declare-sort var25 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-1123813506 (var3902) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun distinct/-1123813506 (var3902) Bool)
(declare-fun joins/-1123813506 (var3902) var2108)
(declare-fun toFromFragmentString/701527262 (var2108) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun select/-1123813506 (var3902) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toWhereFragmentString/-1276368279 (var2108) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun where/-1123813506 (var3902) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun groupBy/-1123813506 (var3902) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun having/-1123813506 (var3902) String)
(declare-fun orderBy/-1123813506 (var3902) String)
(declare-fun dialect/-1123813506 (var3902) var25)
(declare-fun transformSelectString/323702850 (var25 String) String)
(declare-const null-var3902 var3902)
(declare-const null-String String)
(declare-const var727 var3902) ; Statement: r1 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var727 null-var3902)))
(define-const var1008 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1008 50)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50) 

(declare-const var1008!1 String)
(declare-const var2592 Int)
(define-const var2151 String (comment/-1123813506 var727)) ; Statement: $r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment> 
 ; Statement: if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(assert (= var2151 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var1008!1 "select ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var1008!2 String)
(assert (= var1008!2 (str.++ var1008!1 "select ")))
(define-const var1446 Bool (distinct/-1123813506 var727)) ; Statement: $z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct> 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert (= (ite var1446 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3452 var2108 (joins/-1123813506 var727)) ; Statement: $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var571 String (toFromFragmentString/701527262 var3452)) ; Statement: $r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(define-const var540 String var571) ; Statement: r24 = $r19 
(assert true)
(define-const var3653 Bool (startsWith/-1785782452 var571 ",")) ; Statement: $z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join") 
(assert (not (= (ite var3653 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert (and true (and (>= 1 0) (>= (str.len var571) 1))))
(define-const var540!1 String (substring/850833817 var571 1)) ; Statement: r24 = virtualinvoke $r19.<java.lang.String: java.lang.String substring(int)>(1) 
 ; Statement: goto [?= $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>] 
(assert true) ; Non Conditional
(define-const var3134 String (select/-1123813506 var727)) ; Statement: $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(assert true)
(define-const var2939 String (toString/-2075883882 var3134)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2367 String (append/672562846 var1008!2 var2939)) ; Statement: $r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1008!3 String)
(assert (= var1008!3 (str.++ var1008!2 var2939)))
(assert true)
(define-const var1081 String (append/672562846 var2367 " from")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from") 
(declare-const var2367!1 String)
(assert (= var2367!1 (str.++ var2367 " from")))
(assert true)
;(assert (append/672562846 var1081 var540!1)) ; Statement: virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24) 
(declare-const var1081!1 String)
(assert (= var1081!1 (str.++ var1081 var540!1)))
(define-const var1527 var2108 (joins/-1123813506 var727)) ; Statement: $r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var441 String (toWhereFragmentString/-1276368279 var1527)) ; Statement: $r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var576 String (trim/-847153721 var441)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>() 
(define-const var1230 String (where/-1123813506 var727)) ; Statement: $r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert true)
(define-const var873 String (toString/-2075883882 var1230)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1566 String (trim/-847153721 var873)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1912 Int (length/-134980193 var576)) ; Statement: $i3 = virtualinvoke $r31.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $z5 = 0 
(assert (not (<= var1912 0))) ; Negate: Cond: $i3 <= 0  
(define-const var2348 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= z3 = $z5] 
(assert true) ; Non Conditional
(define-const var3869 Bool var2348) ; Statement: z3 = $z5 
(assert true)
(define-const var745 Int (length/-134980193 var1566)) ; Statement: $i0 = virtualinvoke $r34.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $z8 = 0 
(assert (not (<= var745 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3809 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
(define-const var1372 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= z4 = $z7] 
(assert true) ; Non Conditional
(define-const var2642 Bool var1372) ; Statement: z4 = $z7 
 ; Statement: if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(assert (not (not (= (ite var3869 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert (= (ite var3809 1 0) 0)) ; Cond: $z8 == 0 
(define-const var468 String (groupBy/-1123813506 var727)) ; Statement: $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert true)
(define-const var152 Int (length/-171891354 var468)) ; Statement: $i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert (<= var152 0)) ; Cond: $i4 <= 0 
(define-const var3019 String (having/-1123813506 var727)) ; Statement: $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert true)
(define-const var2995 Int (length/-171891354 var3019)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert (<= var2995 0)) ; Cond: $i1 <= 0 
(define-const var3248 String (orderBy/-1123813506 var727)) ; Statement: $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert true)
(define-const var657 Int (length/-171891354 var3248)) ; Statement: $i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert (<= var657 0)) ; Cond: $i2 <= 0 
(define-const var3441 var25 (dialect/-1123813506 var727)) ; Statement: $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var1244 String (toString/-2075883882 var1008!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3879 String (transformSelectString/323702850 var3441 var1244)) ; Statement: $r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), distinct/-1123813506=([org.hibernate.sql.QuerySelect], boolean), joins/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.sql.JoinFragment), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), select/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), groupBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), having/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), orderBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), dialect/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.dialect.Dialect), transformSelectString/323702850=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String)}
; {var3902=org.hibernate.sql.QuerySelect, var727=r1, var1008=$r0, var2592=50, var2151=$r2, var291=null_type, var1446=$z0, var2108=org.hibernate.sql.JoinFragment, var3452=$r3, var571=$r19, var540=r24, var3653=$z1, var3134=$r25, var2939=$r26, var2367=$r27, var1081=$r28, var1527=$r29, var441=$r30, var576=$r31, var1230=$r32, var873=$r33, var1566=$r34, var1912=$i3, var2348=$z5, var3869=z3, var745=$i0, var3809=$z8, var1372=$z7, var2642=z4, var468=$r35, var152=$i4, var3019=$r4, var2995=$i1, var3248=$r5, var657=$i2, var25=org.hibernate.dialect.Dialect, var3441=$r6, var1244=$r7, var3879=$r8}
; {org.hibernate.sql.QuerySelect=var3902, r1=var727, $r0=var1008, 50=var2592, $r2=var2151, null_type=var291, $z0=var1446, org.hibernate.sql.JoinFragment=var2108, $r3=var3452, $r19=var571, r24=var540, $z1=var3653, $r25=var3134, $r26=var2939, $r27=var2367, $r28=var1081, $r29=var1527, $r30=var441, $r31=var576, $r32=var1230, $r33=var873, $r34=var1566, $i3=var1912, $z5=var2348, z3=var3869, $i0=var745, $z8=var3809, $z7=var1372, z4=var2642, $r35=var468, $i4=var152, $r4=var3019, $i1=var2995, $r5=var3248, $i2=var657, org.hibernate.dialect.Dialect=var25, $r6=var3441, $r7=var1244, $r8=var3879}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: int length()>": 3}
;stmts r1 := @this: org.hibernate.sql.QuerySelect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50);	$r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment>;	if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct>;	if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	r24 = $r19;	$z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",");	if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join");	r24 = virtualinvoke $r19.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>];	$r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from");	virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24);	$r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>();	$r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>();	$i3 = virtualinvoke $r31.<java.lang.String: int length()>();	if $i3 <= 0 goto $z5 = 0;	$z5 = 1;	goto [?= z3 = $z5];	z3 = $z5;	$i0 = virtualinvoke $r34.<java.lang.String: int length()>();	if $i0 <= 0 goto $z8 = 0;	$z8 = 1;	$z7 = 1;	goto [?= z4 = $z7];	z4 = $z7;	if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>();	if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>();	if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7);	return $r8
;block_num 14