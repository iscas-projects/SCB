(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1309 0)
(declare-sort var2491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1309_process/379159106 (var2491 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1309 var1309)
(declare-const null-var2491 var2491)
(declare-const var37 var1309) ; Statement: r3 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyComponentPathImpl 
(assert (not (= var37 null-var1309)))
(declare-const var416 var2491) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.spi.AttributePath 
(assert (not (= var416 null-var2491)))
(define-const var24 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var24)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var24!1 String)
(assert (= var24!1 ""))
;(assert (var1309_process/379159106 var416 var24!1)) ; Statement: staticinvoke <org.hibernate.boot.model.naming.ImplicitNamingStrategyComponentPathImpl: void process(org.hibernate.boot.model.source.spi.AttributePath,java.lang.StringBuilder)>(r1, $r0) 

(declare-const var416!1 var2491)
(declare-const var24!2 String)
(assert true)
(define-const var55 String (toString/-2075883882 var24!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1309_process/379159106=([org.hibernate.boot.model.source.spi.AttributePath, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1309=org.hibernate.boot.model.naming.ImplicitNamingStrategyComponentPathImpl, var37=r3, var2491=org.hibernate.boot.model.source.spi.AttributePath, var416=r1, var24=$r0, var55=$r2}
; {org.hibernate.boot.model.naming.ImplicitNamingStrategyComponentPathImpl=var1309, r3=var37, org.hibernate.boot.model.source.spi.AttributePath=var2491, r1=var416, $r0=var24, $r2=var55}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.boot.model.naming.ImplicitNamingStrategyComponentPathImpl;	r1 := @parameter0: org.hibernate.boot.model.source.spi.AttributePath;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	staticinvoke <org.hibernate.boot.model.naming.ImplicitNamingStrategyComponentPathImpl: void process(org.hibernate.boot.model.source.spi.AttributePath,java.lang.StringBuilder)>(r1, $r0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1