(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3243 0)
(declare-sort var471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-1674222761 (var471) String)
(declare-fun cast-from-var3243-to-var471 (var3243) var471)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3243 var3243)
(declare-const var3774 var3243) ; Statement: r1 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var3774 null-var3243)))
(define-const var82 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var82)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var82!1 String)
(assert (= var82!1 ""))
(assert true)
(define-const var1960 String (getForUpdateString/-1674222761 (cast-from-var3243-to-var471 var3774))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString()>() 
(assert true)
(define-const var1345 String (append/672562846 var82!1 var1960)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var82!2 String)
(assert (= var82!2 (str.++ var82!1 var1960)))
(assert true)
(define-const var67 String (append/672562846 var1345 " nowait")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait") 
(declare-const var1345!1 String)
(assert (= var1345!1 (str.++ var1345 " nowait")))
(assert true)
(define-const var303 String (toString/-2075883882 var67)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-1674222761=([org.hibernate.dialect.Dialect], java.lang.String), cast-from-var3243-to-var471=([org.hibernate.dialect.AbstractHANADialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3243=org.hibernate.dialect.AbstractHANADialect, var3774=r1, var82=$r0, var471=org.hibernate.dialect.Dialect, var1960=$r2, var1345=$r3, var67=$r4, var303=$r5}
; {org.hibernate.dialect.AbstractHANADialect=var3243, r1=var3774, $r0=var82, org.hibernate.dialect.Dialect=var471, $r2=var1960, $r3=var1345, $r4=var67, $r5=var303}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.AbstractHANADialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1