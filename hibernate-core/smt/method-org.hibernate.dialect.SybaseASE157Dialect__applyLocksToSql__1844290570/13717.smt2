(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var701 0)
(declare-sort var2509 0)
(declare-sort var3447 0)
(declare-sort var584 0)
(declare-sort var2408 0)
(declare-sort var450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2408-init () var2408)
(declare-fun <init>/-2108464146 (var2408 var450 var3447 var584) void)
(declare-fun cast-from-var701-to-var450 (var701) var450)
(declare-fun toFragmentString/2119325612 (var2408) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var701 var701)
(declare-const null-String String)
(declare-const null-var3447 var3447)
(declare-const null-var584 var584)
(declare-const var2910 var701) ; Statement: r3 := @this: org.hibernate.dialect.SybaseASE157Dialect 
(assert (not (= var2910 null-var701)))
(declare-const var3442 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3442 null-String)))
(declare-const var2506 var3447) ; Statement: r4 := @parameter1: org.hibernate.LockOptions 
(assert (not (= var2506 null-var3447)))
(declare-const var3934 var584) ; Statement: r5 := @parameter2: java.util.Map 
(assert (not (= var3934 null-var584)))
(define-const var1468 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1468)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1468!1 String)
(assert (= var1468!1 ""))
(assert true)
(define-const var523 String (append/672562846 var1468!1 var3442)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1468!2 String)
(assert (= var1468!2 (str.++ var1468!1 var3442)))
(define-const var3261 var2408 var2408-init) ; Statement: $r2 = new org.hibernate.sql.ForUpdateFragment 
(assert true)
;(assert (<init>/-2108464146 var3261 (cast-from-var701-to-var450 var2910) var2506 var3934)) ; Statement: specialinvoke $r2.<org.hibernate.sql.ForUpdateFragment: void <init>(org.hibernate.dialect.Dialect,org.hibernate.LockOptions,java.util.Map)>(r3, r4, r5) 

(declare-const var3261!1 var2408)
(declare-const var2910!1 var701)
(declare-const var2506!1 var3447)
(declare-const var3934!1 var584)
(assert true)
(define-const var1724 String (toFragmentString/2119325612 var3261!1)) ; Statement: $r6 = virtualinvoke $r2.<org.hibernate.sql.ForUpdateFragment: java.lang.String toFragmentString()>() 
(assert true)
(define-const var424 String (append/672562846 var523 var1724)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var523!1 String)
(assert (= var523!1 (str.++ var523 var1724)))
(assert true)
(define-const var2269 String (toString/-2075883882 var424)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2408-init=([], org.hibernate.sql.ForUpdateFragment), <init>/-2108464146=([org.hibernate.sql.ForUpdateFragment, org.hibernate.dialect.Dialect, org.hibernate.LockOptions, java.util.Map], void), cast-from-var701-to-var450=([org.hibernate.dialect.SybaseASE157Dialect], org.hibernate.dialect.Dialect), toFragmentString/2119325612=([org.hibernate.sql.ForUpdateFragment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var701=org.hibernate.dialect.SybaseASE157Dialect, var2910=r3, var3442=r1, var2509=null_type, var3447=org.hibernate.LockOptions, var2506=r4, var584=java.util.Map, var3934=r5, var1468=$r0, var523=$r7, var2408=org.hibernate.sql.ForUpdateFragment, var3261=$r2, var450=org.hibernate.dialect.Dialect, var1724=$r6, var424=$r8, var2269=$r9}
; {org.hibernate.dialect.SybaseASE157Dialect=var701, r3=var2910, r1=var3442, null_type=var2509, org.hibernate.LockOptions=var3447, r4=var2506, java.util.Map=var584, r5=var3934, $r0=var1468, $r7=var523, org.hibernate.sql.ForUpdateFragment=var2408, $r2=var3261, org.hibernate.dialect.Dialect=var450, $r6=var1724, $r8=var424, $r9=var2269}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.dialect.SybaseASE157Dialect;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: org.hibernate.LockOptions;	r5 := @parameter2: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = new org.hibernate.sql.ForUpdateFragment;	specialinvoke $r2.<org.hibernate.sql.ForUpdateFragment: void <init>(org.hibernate.dialect.Dialect,org.hibernate.LockOptions,java.util.Map)>(r3, r4, r5);	$r6 = virtualinvoke $r2.<org.hibernate.sql.ForUpdateFragment: java.lang.String toFragmentString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1