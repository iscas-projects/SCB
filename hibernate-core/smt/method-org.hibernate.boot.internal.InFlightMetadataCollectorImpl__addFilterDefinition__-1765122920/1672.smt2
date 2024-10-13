(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1455 0)
(declare-sort var3262 0)
(declare-sort var3379 0)
(declare-sort var463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3379-init () var3379)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var463) String)
(declare-fun cast-from-var3262-to-var463 (var3262) var463)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3379 String) void)
(declare-const null-var1455 var1455)
(declare-const null-var3262 var3262)
(declare-const var1990 var1455) ; Statement: r7 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var1990 null-var1455)))
(declare-const var1372 var3262) ; Statement: r0 := @parameter0: org.hibernate.engine.spi.FilterDefinition 
(assert (not (= var1372 null-var3262)))
 ; Statement: if r0 == null goto $r1 = new java.lang.IllegalArgumentException 
(assert (= var1372 null-var3262)) ; Cond: r0 == null 
(define-const var797 var3379 var3379-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var1494 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1494)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1494!1 String)
(assert (= var1494!1 ""))
(assert true)
(define-const var3831 String (append/672562846 var1494!1 "Filter definition object or name is null: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Filter definition object or name is null: ") 
(declare-const var1494!2 String)
(assert (= var1494!2 (str.++ var1494!1 "Filter definition object or name is null: ")))
(assert true)
(define-const var2383 String (append/-1031950772 var3831 (cast-from-var3262-to-var463 var1372))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3831!1 String)
(assert (str.prefixof var3831 var3831!1))
(assert true)
(define-const var1895 String (toString/-2075883882 var2383)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var797 var1895)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var797!1 var3379)
(declare-const var1895!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3379-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3262-to-var463=([org.hibernate.engine.spi.FilterDefinition], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1455=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var1990=r7, var3262=org.hibernate.engine.spi.FilterDefinition, var1372=r0, var3379=java.lang.IllegalArgumentException, var797=$r1, var1494=$r2, var3831=$r3, var463=java.lang.Object, var2383=$r4, var1895=$r5}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var1455, r7=var1990, org.hibernate.engine.spi.FilterDefinition=var3262, r0=var1372, java.lang.IllegalArgumentException=var3379, $r1=var797, $r2=var1494, $r3=var3831, java.lang.Object=var463, $r4=var2383, $r5=var1895}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r0 := @parameter0: org.hibernate.engine.spi.FilterDefinition;	if r0 == null goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Filter definition object or name is null: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2