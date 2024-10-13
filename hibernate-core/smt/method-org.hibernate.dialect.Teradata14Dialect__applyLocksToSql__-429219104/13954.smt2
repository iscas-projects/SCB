(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1823 0)
(declare-sort var3377 0)
(declare-sort var1765 0)
(declare-sort var3819 0)
(declare-sort var1604 0)
(declare-sort var237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1604-init () var1604)
(declare-fun <init>/-2108464146 (var1604 var237 var1765 var3819) void)
(declare-fun cast-from-var1823-to-var237 (var1823) var237)
(declare-fun toFragmentString/2119325612 (var1604) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1823 var1823)
(declare-const null-String String)
(declare-const null-var1765 var1765)
(declare-const null-var3819 var3819)
(declare-const var3131 var1823) ; Statement: r2 := @this: org.hibernate.dialect.Teradata14Dialect 
(assert (not (= var3131 null-var1823)))
(declare-const var3905 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var3905 null-String)))
(declare-const var385 var1765) ; Statement: r3 := @parameter1: org.hibernate.LockOptions 
(assert (not (= var385 null-var1765)))
(declare-const var2496 var3819) ; Statement: r4 := @parameter2: java.util.Map 
(assert (not (= var2496 null-var3819)))
(define-const var2657 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2657)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2657!1 String)
(assert (= var2657!1 ""))
(define-const var590 var1604 var1604-init) ; Statement: $r1 = new org.hibernate.sql.ForUpdateFragment 
(assert true)
;(assert (<init>/-2108464146 var590 (cast-from-var1823-to-var237 var3131) var385 var2496)) ; Statement: specialinvoke $r1.<org.hibernate.sql.ForUpdateFragment: void <init>(org.hibernate.dialect.Dialect,org.hibernate.LockOptions,java.util.Map)>(r2, r3, r4) 

(declare-const var590!1 var1604)
(declare-const var3131!1 var1823)
(declare-const var385!1 var1765)
(declare-const var2496!1 var3819)
(assert true)
(define-const var2003 String (toFragmentString/2119325612 var590!1)) ; Statement: $r5 = virtualinvoke $r1.<org.hibernate.sql.ForUpdateFragment: java.lang.String toFragmentString()>() 
(assert true)
(define-const var3084 String (append/672562846 var2657!1 var2003)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2657!2 String)
(assert (= var2657!2 (str.++ var2657!1 var2003)))
(assert true)
(define-const var1410 String (append/672562846 var3084 " ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3084!1 String)
(assert (= var3084!1 (str.++ var3084 " ")))
(assert true)
(define-const var3302 String (append/672562846 var1410 var3905)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1410!1 String)
(assert (= var1410!1 (str.++ var1410 var3905)))
(assert true)
(define-const var919 String (toString/-2075883882 var3302)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1604-init=([], org.hibernate.sql.ForUpdateFragment), <init>/-2108464146=([org.hibernate.sql.ForUpdateFragment, org.hibernate.dialect.Dialect, org.hibernate.LockOptions, java.util.Map], void), cast-from-var1823-to-var237=([org.hibernate.dialect.Teradata14Dialect], org.hibernate.dialect.Dialect), toFragmentString/2119325612=([org.hibernate.sql.ForUpdateFragment], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1823=org.hibernate.dialect.Teradata14Dialect, var3131=r2, var3905=r7, var3377=null_type, var1765=org.hibernate.LockOptions, var385=r3, var3819=java.util.Map, var2496=r4, var2657=$r0, var1604=org.hibernate.sql.ForUpdateFragment, var590=$r1, var237=org.hibernate.dialect.Dialect, var2003=$r5, var3084=$r6, var1410=$r8, var3302=$r9, var919=$r10}
; {org.hibernate.dialect.Teradata14Dialect=var1823, r2=var3131, r7=var3905, null_type=var3377, org.hibernate.LockOptions=var1765, r3=var385, java.util.Map=var3819, r4=var2496, $r0=var2657, org.hibernate.sql.ForUpdateFragment=var1604, $r1=var590, org.hibernate.dialect.Dialect=var237, $r5=var2003, $r6=var3084, $r8=var1410, $r9=var3302, $r10=var919}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Teradata14Dialect;	r7 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.LockOptions;	r4 := @parameter2: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new org.hibernate.sql.ForUpdateFragment;	specialinvoke $r1.<org.hibernate.sql.ForUpdateFragment: void <init>(org.hibernate.dialect.Dialect,org.hibernate.LockOptions,java.util.Map)>(r2, r3, r4);	$r5 = virtualinvoke $r1.<org.hibernate.sql.ForUpdateFragment: java.lang.String toFragmentString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1