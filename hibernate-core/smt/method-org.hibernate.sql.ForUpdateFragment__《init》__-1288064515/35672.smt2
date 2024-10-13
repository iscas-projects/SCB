(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3377 0)
(declare-sort var2478 0)
(declare-sort var2473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2473) void)
(declare-fun cast-from-var3377-to-var2473 (var3377) var2473)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun aliases/9192316 (var3377) String)
(declare-fun dialect/9192316 (var3377) var2478)
(declare-const null-var3377 var3377)
(declare-const null-var2478 var2478)
(declare-const var1575 var3377) ; Statement: r0 := @this: org.hibernate.sql.ForUpdateFragment 
(assert (not (= var1575 null-var3377)))
(declare-const var3867 var2478) ; Statement: r2 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var3867 null-var2478)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3377-to-var2473 var1575))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1575!1 var3377)
(define-const var743 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var743)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var743!1 String)
(assert (= var743!1 ""))
(declare-const var1575!2 var3377)
(assert (not (= var1575!2 null-var3377)))
(assert (= (aliases/9192316 var1575!2) var743!1)) ; Statement: r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> = $r1 
(declare-const var1575!3 var3377)
(assert (not (= var1575!3 null-var3377)))
(assert (= (dialect/9192316 var1575!3) var3867)) ; Statement: r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3377-to-var2473=([org.hibernate.sql.ForUpdateFragment], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), aliases/9192316=([org.hibernate.sql.ForUpdateFragment], java.lang.StringBuilder), dialect/9192316=([org.hibernate.sql.ForUpdateFragment], org.hibernate.dialect.Dialect)}
; {var3377=org.hibernate.sql.ForUpdateFragment, var1575=r0, var2478=org.hibernate.dialect.Dialect, var3867=r2, var2473=java.lang.Object, var743=$r1}
; {org.hibernate.sql.ForUpdateFragment=var3377, r0=var1575, org.hibernate.dialect.Dialect=var2478, r2=var3867, java.lang.Object=var2473, $r1=var743}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.sql.ForUpdateFragment;	r2 := @parameter0: org.hibernate.dialect.Dialect;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> = $r1;	r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect> = r2;	return
;block_num 1