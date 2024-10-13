(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3484 0)
(declare-sort var3120 0)
(declare-sort var477 0)
(declare-sort var2664 0)
(declare-sort var3300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3300-init () var3300)
(declare-fun <init>/-2108464146 (var3300 var3484 var477 var2664) void)
(declare-fun toFragmentString/2119325612 (var3300) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3484 var3484)
(declare-const null-String String)
(declare-const null-var477 var477)
(declare-const null-var2664 var2664)
(declare-const var2508 var3484) ; Statement: r3 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var2508 null-var3484)))
(declare-const var1411 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1411 null-String)))
(declare-const var3181 var477) ; Statement: r4 := @parameter1: org.hibernate.LockOptions 
(assert (not (= var3181 null-var477)))
(declare-const var3060 var2664) ; Statement: r5 := @parameter2: java.util.Map 
(assert (not (= var3060 null-var2664)))
(define-const var1354 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1354)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1354!1 String)
(assert (= var1354!1 ""))
(assert true)
(define-const var2465 String (append/672562846 var1354!1 var1411)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1354!2 String)
(assert (= var1354!2 (str.++ var1354!1 var1411)))
(define-const var593 var3300 var3300-init) ; Statement: $r2 = new org.hibernate.sql.ForUpdateFragment 
(assert true)
;(assert (<init>/-2108464146 var593 var2508 var3181 var3060)) ; Statement: specialinvoke $r2.<org.hibernate.sql.ForUpdateFragment: void <init>(org.hibernate.dialect.Dialect,org.hibernate.LockOptions,java.util.Map)>(r3, r4, r5) 

(declare-const var593!1 var3300)
(declare-const var2508!1 var3484)
(declare-const var3181!1 var477)
(declare-const var3060!1 var2664)
(assert true)
(define-const var3127 String (toFragmentString/2119325612 var593!1)) ; Statement: $r6 = virtualinvoke $r2.<org.hibernate.sql.ForUpdateFragment: java.lang.String toFragmentString()>() 
(assert true)
(define-const var2918 String (append/672562846 var2465 var3127)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2465!1 String)
(assert (= var2465!1 (str.++ var2465 var3127)))
(assert true)
(define-const var1987 String (toString/-2075883882 var2918)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3300-init=([], org.hibernate.sql.ForUpdateFragment), <init>/-2108464146=([org.hibernate.sql.ForUpdateFragment, org.hibernate.dialect.Dialect, org.hibernate.LockOptions, java.util.Map], void), toFragmentString/2119325612=([org.hibernate.sql.ForUpdateFragment], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3484=org.hibernate.dialect.Dialect, var2508=r3, var1411=r1, var3120=null_type, var477=org.hibernate.LockOptions, var3181=r4, var2664=java.util.Map, var3060=r5, var1354=$r0, var2465=$r7, var3300=org.hibernate.sql.ForUpdateFragment, var593=$r2, var3127=$r6, var2918=$r8, var1987=$r9}
; {org.hibernate.dialect.Dialect=var3484, r3=var2508, r1=var1411, null_type=var3120, org.hibernate.LockOptions=var477, r4=var3181, java.util.Map=var2664, r5=var3060, $r0=var1354, $r7=var2465, org.hibernate.sql.ForUpdateFragment=var3300, $r2=var593, $r6=var3127, $r8=var2918, $r9=var1987}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.dialect.Dialect;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: org.hibernate.LockOptions;	r5 := @parameter2: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = new org.hibernate.sql.ForUpdateFragment;	specialinvoke $r2.<org.hibernate.sql.ForUpdateFragment: void <init>(org.hibernate.dialect.Dialect,org.hibernate.LockOptions,java.util.Map)>(r3, r4, r5);	$r6 = virtualinvoke $r2.<org.hibernate.sql.ForUpdateFragment: java.lang.String toFragmentString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1