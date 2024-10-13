(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2352 0)
(declare-sort var2468 0)
(declare-sort var720 0)
(declare-sort var2778 0)
(declare-sort var1785 0)
(declare-sort var3008 0)
(declare-sort var2043 0)
(declare-sort var3110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1288064515 (var2352 var2468) void)
(declare-fun getAliasLockIterator/-1072175313 (var720) Iterator)
(declare-fun lockOptions/9192316 (var2352) var720)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3008)
(declare-fun cast-from-var3008-to-var2043 (var3008) var2043)
(declare-fun var2043_getValue/381491177 (var2043) var3008)
(declare-fun cast-from-var3008-to-var1785 (var3008) var1785)
(declare-fun lessThan/186053417 (var1785 var1785) Bool)
(declare-fun var2043_getKey/-33423493 (var2043) var3008)
(declare-fun cast-from-var3008-to-String (var3008) String)
(declare-fun forUpdateOfColumns/605792623 (var2468) Bool)
(declare-fun var2778_get/1088891777 (var2778 var3008) var3008)
(declare-fun cast-from-String-to-var3008 (String) var3008)
(declare-fun cast-from-var3008-to-__Array__Int__String__ (var3008) (Array Int String))
(declare-fun var3110-init () var3110)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3110 String) void)
(declare-const null-var2352 var2352)
(declare-const null-var2468 var2468)
(declare-const null-var720 var720)
(declare-const null-var2778 var2778)
(declare-const null-var1785 var1785)
(declare-const var1785-READ var1785)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var475 var2352) ; Statement: r0 := @this: org.hibernate.sql.ForUpdateFragment 
(assert (not (= var475 null-var2352)))
(declare-const var2860 var2468) ; Statement: r1 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var2860 null-var2468)))
(declare-const var28 var720) ; Statement: r2 := @parameter1: org.hibernate.LockOptions 
(assert (not (= var28 null-var720)))
(declare-const var3671 var2778) ; Statement: r12 := @parameter2: java.util.Map 
(assert (not (= var3671 null-var2778)))
(assert true)
;(assert (<init>/-1288064515 var475 var2860)) ; Statement: specialinvoke r0.<org.hibernate.sql.ForUpdateFragment: void <init>(org.hibernate.dialect.Dialect)>(r1) 

(declare-const var475!1 var2352)
(declare-const var2860!1 var2468)
(define-const var151 var1785 null-var1785) ; Statement: r21 = null 
(assert true)
(define-const var3957 Iterator (getAliasLockIterator/-1072175313 var28)) ; Statement: r3 = virtualinvoke r2.<org.hibernate.LockOptions: java.util.Iterator getAliasLockIterator()>() 
(declare-const var475!2 var2352)
(assert (not (= var475!2 null-var2352)))
(assert (= (lockOptions/9192316 var475!2) var28)) ; Statement: r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions> = r2 
(define-const var3408 Bool (Iterator_hasNext/-1669924200 var3957)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $z4 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var3408 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2271 Bool (Iterator_hasNext/-1669924200 var3957)) ; Statement: $z4 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 == 0 goto $r4 = <org.hibernate.LockMode: org.hibernate.LockMode UPGRADE_NOWAIT> 
(assert (not (= (ite var2271 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var2779 var3008 (Iterator_next/-1124697587 var3957)) ; Statement: $r5 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3957!1 Iterator)
(define-const var1201 var2043 (cast-from-var3008-to-var2043 var2779)) ; Statement: r23 = (java.util.Map$Entry) $r5 
(define-const var17 var3008 (var2043_getValue/381491177 var1201)) ; Statement: $r6 = interfaceinvoke r23.<java.util.Map$Entry: java.lang.Object getValue()>() 
(define-const var2571 var1785 (cast-from-var3008-to-var1785 var17)) ; Statement: r7 = (org.hibernate.LockMode) $r6 
(define-const var348 var1785 var1785-READ) ; Statement: $r8 = <org.hibernate.LockMode: org.hibernate.LockMode READ> 
(assert true)
(define-const var21 Bool (lessThan/186053417 var348 var2571)) ; Statement: $z1 = virtualinvoke $r8.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>(r7) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var21 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2456 var3008 (var2043_getKey/-33423493 var1201)) ; Statement: $r9 = interfaceinvoke r23.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1787 String (cast-from-var3008-to-String var2456)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var282 Bool (forUpdateOfColumns/605792623 var2860!1)) ; Statement: $z2 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean forUpdateOfColumns()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.sql.ForUpdateFragment addTableAlias(java.lang.String)>(r10) 
(assert (not (= (ite var282 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var477 var3008 (var2778_get/1088891777 var3671 (cast-from-String-to-var3008 var1787))) ; Statement: $r13 = interfaceinvoke r12.<java.util.Map: java.lang.Object get(java.lang.Object)>(r10) 
(define-const var1308 (Array Int String) (cast-from-var3008-to-__Array__Int__String__ var477)) ; Statement: r24 = (java.lang.String[]) $r13 
 ; Statement: if r24 != null goto r25 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] qualify(java.lang.String,java.lang.String[])>(r10, r24) 
(assert (not (not (= var1308 null-__Array__Int__String__)))) ; Negate: Cond: r24 != null  
(define-const var3675 var3110 var3110-init) ; Statement: $r28 = new java.lang.IllegalArgumentException 
(define-const var2943 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2943)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2943!1 String)
(assert (= var2943!1 ""))
(assert true)
(define-const var1661 String (append/672562846 var2943!1 "alias not found: ")) ; Statement: $r17 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("alias not found: ") 
(declare-const var2943!2 String)
(assert (= var2943!2 (str.++ var2943!1 "alias not found: ")))
(assert true)
(define-const var207 String (append/672562846 var1661 var1787)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1661!1 String)
(assert (= var1661!1 (str.++ var1661 var1787)))
(assert true)
(define-const var3670 String (toString/-2075883882 var207)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3675 var3670)) ; Statement: specialinvoke $r28.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var3675!1 var3110)
(declare-const var3670!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1288064515=([org.hibernate.sql.ForUpdateFragment, org.hibernate.dialect.Dialect], void), getAliasLockIterator/-1072175313=([org.hibernate.LockOptions], java.util.Iterator), lockOptions/9192316=([org.hibernate.sql.ForUpdateFragment], org.hibernate.LockOptions), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3008-to-var2043=([java.lang.Object], java.util.Map$Entry), var2043_getValue/381491177=([java.util.Map$Entry], java.lang.Object), cast-from-var3008-to-var1785=([java.lang.Object], org.hibernate.LockMode), lessThan/186053417=([org.hibernate.LockMode, org.hibernate.LockMode], boolean), var2043_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var3008-to-String=([java.lang.Object], java.lang.String), forUpdateOfColumns/605792623=([org.hibernate.dialect.Dialect], boolean), var2778_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3008=([java.lang.String], java.lang.Object), cast-from-var3008-to-__Array__Int__String__=([java.lang.Object], java.lang.String[]), var3110-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2352=org.hibernate.sql.ForUpdateFragment, var475=r0, var2468=org.hibernate.dialect.Dialect, var2860=r1, var720=org.hibernate.LockOptions, var28=r2, var2778=java.util.Map, var3671=r12, var1785=org.hibernate.LockMode, var151=r21, var3957=r3, var3408=$z0, var2271=$z4, var3008=java.lang.Object, var2779=$r5, var2043=java.util.Map$Entry, var1201=r23, var17=$r6, var2571=r7, var348=$r8, var21=$z1, var2456=$r9, var1787=r10, var282=$z2, var477=$r13, var1308=r24, var3110=java.lang.IllegalArgumentException, var3675=$r28, var2943=$r27, var1661=$r17, var207=$r18, var3670=$r19}
; {org.hibernate.sql.ForUpdateFragment=var2352, r0=var475, org.hibernate.dialect.Dialect=var2468, r1=var2860, org.hibernate.LockOptions=var720, r2=var28, java.util.Map=var2778, r12=var3671, org.hibernate.LockMode=var1785, r21=var151, r3=var3957, $z0=var3408, $z4=var2271, java.lang.Object=var3008, $r5=var2779, java.util.Map$Entry=var2043, r23=var1201, $r6=var17, r7=var2571, $r8=var348, $z1=var21, $r9=var2456, r10=var1787, $z2=var282, $r13=var477, r24=var1308, java.lang.IllegalArgumentException=var3110, $r28=var3675, $r27=var2943, $r17=var1661, $r18=var207, $r19=var3670}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.ForUpdateFragment;	r1 := @parameter0: org.hibernate.dialect.Dialect;	r2 := @parameter1: org.hibernate.LockOptions;	r12 := @parameter2: java.util.Map;	specialinvoke r0.<org.hibernate.sql.ForUpdateFragment: void <init>(org.hibernate.dialect.Dialect)>(r1);	r21 = null;	r3 = virtualinvoke r2.<org.hibernate.LockOptions: java.util.Iterator getAliasLockIterator()>();	r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions> = r2;	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $z4 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	$z4 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z4 == 0 goto $r4 = <org.hibernate.LockMode: org.hibernate.LockMode UPGRADE_NOWAIT>;	$r5 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r23 = (java.util.Map$Entry) $r5;	$r6 = interfaceinvoke r23.<java.util.Map$Entry: java.lang.Object getValue()>();	r7 = (org.hibernate.LockMode) $r6;	$r8 = <org.hibernate.LockMode: org.hibernate.LockMode READ>;	$z1 = virtualinvoke $r8.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>(r7);	if $z1 == 0 goto (branch);	$r9 = interfaceinvoke r23.<java.util.Map$Entry: java.lang.Object getKey()>();	r10 = (java.lang.String) $r9;	$z2 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean forUpdateOfColumns()>();	if $z2 == 0 goto virtualinvoke r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.sql.ForUpdateFragment addTableAlias(java.lang.String)>(r10);	$r13 = interfaceinvoke r12.<java.util.Map: java.lang.Object get(java.lang.Object)>(r10);	r24 = (java.lang.String[]) $r13;	if r24 != null goto r25 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] qualify(java.lang.String,java.lang.String[])>(r10, r24);	$r28 = new java.lang.IllegalArgumentException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("alias not found: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r28
;block_num 6