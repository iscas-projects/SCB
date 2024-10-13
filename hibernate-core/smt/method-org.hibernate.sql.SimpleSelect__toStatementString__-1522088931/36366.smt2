(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2459 0)
(declare-sort var560 0)
(declare-sort var1843 0)
(declare-sort var681 0)
(declare-sort var3274 0)
(declare-sort var2912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun columns/-997014284 (var2459) var560)
(declare-fun var560_size/-959786421 (var560) Int)
(declare-fun tableName/-997014284 (var2459) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun whereTokens/-997014284 (var2459) var560)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-997014284 (var2459) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var681-init () var681)
(declare-fun <init>/451842749 (var681) void)
(declare-fun var560_iterator/-912451715 (var560) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun dialect/-997014284 (var2459) var3274)
(declare-fun lockOptions/-997014284 (var2459) var2912)
(declare-fun appendLockHint/-359167972 (var3274 var2912 String) String)
(declare-fun orderBy/-997014284 (var2459) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun transformSelectString/323702850 (var3274 String) String)
(declare-const null-var2459 var2459)
(declare-const null-String String)
(declare-const null-var2912 var2912)
(declare-const var1858 var2459) ; Statement: r1 := @this: org.hibernate.sql.SimpleSelect 
(assert (not (= var1858 null-var2459)))
(define-const var1278 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2431 var560 (columns/-997014284 var1858)) ; Statement: $r2 = r1.<org.hibernate.sql.SimpleSelect: java.util.List columns> 
(define-const var1508 Int (var560_size/-959786421 var2431)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(define-const var3125 Int (* var1508 10)) ; Statement: $i2 = $i0 * 10 
(define-const var842 String (tableName/-997014284 var1858)) ; Statement: $r3 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String tableName> 
(assert true)
(define-const var2605 Int (length/-134980193 var842)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var2018 Int (+ var3125 var2605)) ; Statement: $i5 = $i2 + $i1 
(define-const var2985 var560 (whereTokens/-997014284 var1858)) ; Statement: $r4 = r1.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens> 
(define-const var164 Int (var560_size/-959786421 var2985)) ; Statement: $i3 = interfaceinvoke $r4.<java.util.List: int size()>() 
(define-const var3927 Int (* var164 10)) ; Statement: $i4 = $i3 * 10 
(define-const var3484 Int (+ var2018 var3927)) ; Statement: $i6 = $i5 + $i4 
(define-const var3958 Int (+ var3484 10)) ; Statement: $i7 = $i6 + 10 
(assert true)
;(assert (<init>/543593434 var1278 var3958)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i7) 

(declare-const var1278!1 String)
(declare-const var3958!1 Int)
(define-const var2988 String var1278!1) ; Statement: r38 = $r0 
(define-const var3370 String (comment/-997014284 var1858)) ; Statement: $r5 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String comment> 
 ; Statement: if $r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(assert (= var3370 null-String)) ; Cond: $r5 == null 
(assert true)
;(assert (append/672562846 var1278!1 "select ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var1278!2 String)
(assert (= var1278!2 (str.++ var1278!1 "select ")))
(define-const var1177 var681 var681-init) ; Statement: $r6 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var1177)) ; Statement: specialinvoke $r6.<java.util.HashSet: void <init>()>() 

(declare-const var1177!1 var681)
(define-const var983 var560 (columns/-997014284 var1858)) ; Statement: $r7 = r1.<org.hibernate.sql.SimpleSelect: java.util.List columns> 
(define-const var2652 Iterator (var560_iterator/-912451715 var983)) ; Statement: $r37 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>() 
(define-const var1049 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true) ; Non Conditional
(define-const var1168 Bool (Iterator_hasNext/-1669924200 var2652)) ; Statement: $z3 = interfaceinvoke $r37.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(assert (= (ite var1168 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var3217 String (append/672562846 var1278!2 " from ")) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var1278!3 String)
(assert (= var1278!3 (str.++ var1278!2 " from ")))
(define-const var1015 var3274 (dialect/-997014284 var1858)) ; Statement: $r10 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.dialect.Dialect dialect> 
(define-const var616 var2912 (lockOptions/-997014284 var1858)) ; Statement: $r9 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.LockOptions lockOptions> 
(define-const var2846 String (tableName/-997014284 var1858)) ; Statement: $r8 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String tableName> 
(assert true)
(define-const var902 String (appendLockHint/-359167972 var1015 var616 var2846)) ; Statement: $r11 = virtualinvoke $r10.<org.hibernate.dialect.Dialect: java.lang.String appendLockHint(org.hibernate.LockOptions,java.lang.String)>($r9, $r8) 
(assert true)
;(assert (append/672562846 var3217 var902)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3217!1 String)
(assert (= var3217!1 (str.++ var3217 var902)))
(define-const var1234 var560 (whereTokens/-997014284 var1858)) ; Statement: $r13 = r1.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens> 
(define-const var3684 Int (var560_size/-959786421 var1234)) ; Statement: $i8 = interfaceinvoke $r13.<java.util.List: int size()>() 
 ; Statement: if $i8 <= 0 goto $r14 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String orderBy> 
(assert (<= var3684 0)) ; Cond: $i8 <= 0 
(define-const var2226 String (orderBy/-997014284 var1858)) ; Statement: $r14 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String orderBy> 
 ; Statement: if $r14 == null goto $r15 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.LockOptions lockOptions> 
(assert (= var2226 null-String)) ; Cond: $r14 == null 
(define-const var3954 var2912 (lockOptions/-997014284 var1858)) ; Statement: $r15 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.LockOptions lockOptions> 
 ; Statement: if $r15 == null goto $r16 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.dialect.Dialect dialect> 
(assert (= var3954 null-var2912)) ; Cond: $r15 == null 
(define-const var202 var3274 (dialect/-997014284 var1858)) ; Statement: $r16 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var583 String (toString/-2075883882 var2988)) ; Statement: $r17 = virtualinvoke r38.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2173 String (transformSelectString/323702850 var202 var583)) ; Statement: $r18 = virtualinvoke $r16.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r17) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), columns/-997014284=([org.hibernate.sql.SimpleSelect], java.util.List), var560_size/-959786421=([java.util.List], int), tableName/-997014284=([org.hibernate.sql.SimpleSelect], java.lang.String), length/-134980193=([java.lang.String], int), whereTokens/-997014284=([org.hibernate.sql.SimpleSelect], java.util.List), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-997014284=([org.hibernate.sql.SimpleSelect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var681-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), var560_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), dialect/-997014284=([org.hibernate.sql.SimpleSelect], org.hibernate.dialect.Dialect), lockOptions/-997014284=([org.hibernate.sql.SimpleSelect], org.hibernate.LockOptions), appendLockHint/-359167972=([org.hibernate.dialect.Dialect, org.hibernate.LockOptions, java.lang.String], java.lang.String), orderBy/-997014284=([org.hibernate.sql.SimpleSelect], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), transformSelectString/323702850=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String)}
; {var2459=org.hibernate.sql.SimpleSelect, var1858=r1, var1278=$r0, var560=java.util.List, var2431=$r2, var1508=$i0, var3125=$i2, var842=$r3, var2605=$i1, var2018=$i5, var2985=$r4, var164=$i3, var3927=$i4, var3484=$i6, var3958=$i7, var2988=r38, var3370=$r5, var1843=null_type, var681=java.util.HashSet, var1177=$r6, var983=$r7, var2652=$r37, var1049=z2, var1168=$z3, var3217=$r12, var3274=org.hibernate.dialect.Dialect, var1015=$r10, var2912=org.hibernate.LockOptions, var616=$r9, var2846=$r8, var902=$r11, var1234=$r13, var3684=$i8, var2226=$r14, var3954=$r15, var202=$r16, var583=$r17, var2173=$r18}
; {org.hibernate.sql.SimpleSelect=var2459, r1=var1858, $r0=var1278, java.util.List=var560, $r2=var2431, $i0=var1508, $i2=var3125, $r3=var842, $i1=var2605, $i5=var2018, $r4=var2985, $i3=var164, $i4=var3927, $i6=var3484, $i7=var3958, r38=var2988, $r5=var3370, null_type=var1843, java.util.HashSet=var681, $r6=var1177, $r7=var983, $r37=var2652, z2=var1049, $z3=var1168, $r12=var3217, org.hibernate.dialect.Dialect=var3274, $r10=var1015, org.hibernate.LockOptions=var2912, $r9=var616, $r8=var2846, $r11=var902, $r13=var1234, $i8=var3684, $r14=var2226, $r15=var3954, $r16=var202, $r17=var583, $r18=var2173}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.SimpleSelect;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.SimpleSelect: java.util.List columns>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	$i2 = $i0 * 10;	$r3 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String tableName>;	$i1 = virtualinvoke $r3.<java.lang.String: int length()>();	$i5 = $i2 + $i1;	$r4 = r1.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens>;	$i3 = interfaceinvoke $r4.<java.util.List: int size()>();	$i4 = $i3 * 10;	$i6 = $i5 + $i4;	$i7 = $i6 + 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i7);	r38 = $r0;	$r5 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String comment>;	if $r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r6 = new java.util.HashSet;	specialinvoke $r6.<java.util.HashSet: void <init>()>();	$r7 = r1.<org.hibernate.sql.SimpleSelect: java.util.List columns>;	$r37 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>();	z2 = 0;	$z3 = interfaceinvoke $r37.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r10 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.dialect.Dialect dialect>;	$r9 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.LockOptions lockOptions>;	$r8 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String tableName>;	$r11 = virtualinvoke $r10.<org.hibernate.dialect.Dialect: java.lang.String appendLockHint(org.hibernate.LockOptions,java.lang.String)>($r9, $r8);	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = r1.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens>;	$i8 = interfaceinvoke $r13.<java.util.List: int size()>();	if $i8 <= 0 goto $r14 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String orderBy>;	$r14 = r1.<org.hibernate.sql.SimpleSelect: java.lang.String orderBy>;	if $r14 == null goto $r15 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.LockOptions lockOptions>;	$r15 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.LockOptions lockOptions>;	if $r15 == null goto $r16 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.dialect.Dialect dialect>;	$r16 = r1.<org.hibernate.sql.SimpleSelect: org.hibernate.dialect.Dialect dialect>;	$r17 = virtualinvoke r38.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke $r16.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r17);	return $r18
;block_num 7