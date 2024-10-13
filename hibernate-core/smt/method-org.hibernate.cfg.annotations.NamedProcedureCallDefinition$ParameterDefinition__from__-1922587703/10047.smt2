(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3152 0)
(declare-sort var1421 0)
(declare-sort var1454 0)
(declare-sort var3751 0)
(declare-sort var821 0)
(declare-sort var2649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1454_get/1088891777 (var1454 var3751) var3751)
(declare-fun cast-from-String-to-var3751 (String) var3751)
(declare-fun var821-init () var821)
(declare-fun var821_interpretBoolean/1454424810 (var3751) var2649)
(declare-fun <init>/-480471677 (var821 Int var1421 var2649) void)
(declare-const null-var3152 var3152)
(declare-const null-var1421 var1421)
(declare-const null-Int Int)
(declare-const null-var1454 var1454)
(declare-const var3152-NAMED var3152)
(declare-const var3870 var3152) ; Statement: r0 := @parameter0: org.hibernate.procedure.spi.ParameterStrategy 
(assert (not (= var3870 null-var3152)))
(declare-const var2352 var1421) ; Statement: r8 := @parameter1: javax.persistence.StoredProcedureParameter 
(assert (not (= var2352 null-var1421)))
(declare-const var3274 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3274 null-Int)))
(declare-const var2359 var1454) ; Statement: r2 := @parameter3: java.util.Map 
(assert (not (= var2359 null-var1454)))
(define-const var1486 var3152 var3152-NAMED) ; Statement: $r1 = <org.hibernate.procedure.spi.ParameterStrategy: org.hibernate.procedure.spi.ParameterStrategy NAMED> 
 ; Statement: if r0 != $r1 goto $r3 = new java.lang.StringBuilder 
(assert (not (= var3870 var1486))) ; Cond: r0 != $r1 
(define-const var662 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var662)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var662!1 String)
(assert (= var662!1 ""))
(assert true)
(define-const var1130 String (append/672562846 var662!1 "hibernate.proc.param_null_passing.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.proc.param_null_passing.") 
(declare-const var662!2 String)
(assert (= var662!2 (str.++ var662!1 "hibernate.proc.param_null_passing.")))
(assert true)
(define-const var3807 String (append/-1001720160 var1130 var3274)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1130!1 String)
(assert (str.prefixof var1130 var1130!1))
(assert true)
(define-const var371 String (toString/-2075883882 var3807)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2298 var3751 (var1454_get/1088891777 var2359 (cast-from-String-to-var3751 var371))) ; Statement: r15 = interfaceinvoke r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r6) 
(assert true) ; Non Conditional
(define-const var3927 var821 var821-init) ; Statement: $r7 = new org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition 
(define-const var695 var2649 (var821_interpretBoolean/1454424810 var2298)) ; Statement: $r9 = staticinvoke <org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition: java.lang.Boolean interpretBoolean(java.lang.Object)>(r15) 
(assert true)
;(assert (<init>/-480471677 var3927 var3274 var2352 var695)) ; Statement: specialinvoke $r7.<org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition: void <init>(int,javax.persistence.StoredProcedureParameter,java.lang.Boolean)>(i0, r8, $r9) 

(declare-const var3927!1 var821)
(declare-const var3274!1 Int)
(declare-const var2352!1 var1421)
(declare-const var695!1 var2649)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1454_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3751=([java.lang.String], java.lang.Object), var821-init=([], org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition), var821_interpretBoolean/1454424810=([java.lang.Object], java.lang.Boolean), <init>/-480471677=([org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition, int, javax.persistence.StoredProcedureParameter, java.lang.Boolean], void)}
; {var3152=org.hibernate.procedure.spi.ParameterStrategy, var3870=r0, var1421=javax.persistence.StoredProcedureParameter, var2352=r8, var3274=i0, var1454=java.util.Map, var2359=r2, var1486=$r1, var662=$r3, var1130=$r4, var3807=$r5, var371=$r6, var3751=java.lang.Object, var2298=r15, var821=org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition, var3927=$r7, var2649=java.lang.Boolean, var695=$r9}
; {org.hibernate.procedure.spi.ParameterStrategy=var3152, r0=var3870, javax.persistence.StoredProcedureParameter=var1421, r8=var2352, i0=var3274, java.util.Map=var1454, r2=var2359, $r1=var1486, $r3=var662, $r4=var1130, $r5=var3807, $r6=var371, java.lang.Object=var3751, r15=var2298, org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition=var821, $r7=var3927, java.lang.Boolean=var2649, $r9=var695}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.procedure.spi.ParameterStrategy;	r8 := @parameter1: javax.persistence.StoredProcedureParameter;	i0 := @parameter2: int;	r2 := @parameter3: java.util.Map;	$r1 = <org.hibernate.procedure.spi.ParameterStrategy: org.hibernate.procedure.spi.ParameterStrategy NAMED>;	if r0 != $r1 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.proc.param_null_passing.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r15 = interfaceinvoke r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r6);	$r7 = new org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition;	$r9 = staticinvoke <org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition: java.lang.Boolean interpretBoolean(java.lang.Object)>(r15);	specialinvoke $r7.<org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition: void <init>(int,javax.persistence.StoredProcedureParameter,java.lang.Boolean)>(i0, r8, $r9);	return $r7
;block_num 3