(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort var1329 0)
(declare-sort var493 0)
(declare-sort var1410 0)
(declare-sort var3824 0)
(declare-sort var1644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1329_name/-1472268903 (var1329) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var493_get/1088891777 (var493 var1410) var1410)
(declare-fun cast-from-String-to-var1410 (String) var1410)
(declare-fun var3824-init () var3824)
(declare-fun var3824_interpretBoolean/1454424810 (var1410) var1644)
(declare-fun <init>/-480471677 (var3824 Int var1329 var1644) void)
(declare-const null-var3520 var3520)
(declare-const null-var1329 var1329)
(declare-const null-Int Int)
(declare-const null-var493 var493)
(declare-const var3520-NAMED var3520)
(declare-const var3406 var3520) ; Statement: r0 := @parameter0: org.hibernate.procedure.spi.ParameterStrategy 
(assert (not (= var3406 null-var3520)))
(declare-const var1720 var1329) ; Statement: r8 := @parameter1: javax.persistence.StoredProcedureParameter 
(assert (not (= var1720 null-var1329)))
(declare-const var3516 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3516 null-Int)))
(declare-const var2591 var493) ; Statement: r2 := @parameter3: java.util.Map 
(assert (not (= var2591 null-var493)))
(define-const var1397 var3520 var3520-NAMED) ; Statement: $r1 = <org.hibernate.procedure.spi.ParameterStrategy: org.hibernate.procedure.spi.ParameterStrategy NAMED> 
 ; Statement: if r0 != $r1 goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= var3406 var1397)))) ; Negate: Cond: r0 != $r1  
(define-const var3338 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3338)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3338!1 String)
(assert (= var3338!1 ""))
(assert true)
(define-const var11 String (append/672562846 var3338!1 "hibernate.proc.param_null_passing.")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.proc.param_null_passing.") 
(declare-const var3338!2 String)
(assert (= var3338!2 (str.++ var3338!1 "hibernate.proc.param_null_passing.")))
(define-const var3190 String (var1329_name/-1472268903 var1720)) ; Statement: $r11 = interfaceinvoke r8.<javax.persistence.StoredProcedureParameter: java.lang.String name()>() 
(assert true)
(define-const var3212 String (append/672562846 var11 var3190)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var11!1 String)
(assert (= var11!1 (str.++ var11 var3190)))
(assert true)
(define-const var2457 String (toString/-2075883882 var3212)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2256 var1410 (var493_get/1088891777 var2591 (cast-from-String-to-var1410 var2457))) ; Statement: r15 = interfaceinvoke r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r14) 
 ; Statement: goto [?= $r7 = new org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition] 
(assert true) ; Non Conditional
(define-const var1686 var3824 var3824-init) ; Statement: $r7 = new org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition 
(define-const var1684 var1644 (var3824_interpretBoolean/1454424810 var2256)) ; Statement: $r9 = staticinvoke <org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition: java.lang.Boolean interpretBoolean(java.lang.Object)>(r15) 
(assert true)
;(assert (<init>/-480471677 var1686 var3516 var1720 var1684)) ; Statement: specialinvoke $r7.<org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition: void <init>(int,javax.persistence.StoredProcedureParameter,java.lang.Boolean)>(i0, r8, $r9) 

(declare-const var1686!1 var3824)
(declare-const var3516!1 Int)
(declare-const var1720!1 var1329)
(declare-const var1684!1 var1644)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1329_name/-1472268903=([javax.persistence.StoredProcedureParameter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var493_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1410=([java.lang.String], java.lang.Object), var3824-init=([], org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition), var3824_interpretBoolean/1454424810=([java.lang.Object], java.lang.Boolean), <init>/-480471677=([org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition, int, javax.persistence.StoredProcedureParameter, java.lang.Boolean], void)}
; {var3520=org.hibernate.procedure.spi.ParameterStrategy, var3406=r0, var1329=javax.persistence.StoredProcedureParameter, var1720=r8, var3516=i0, var493=java.util.Map, var2591=r2, var1397=$r1, var3338=$r10, var11=$r12, var3190=$r11, var3212=$r13, var2457=$r14, var1410=java.lang.Object, var2256=r15, var3824=org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition, var1686=$r7, var1644=java.lang.Boolean, var1684=$r9}
; {org.hibernate.procedure.spi.ParameterStrategy=var3520, r0=var3406, javax.persistence.StoredProcedureParameter=var1329, r8=var1720, i0=var3516, java.util.Map=var493, r2=var2591, $r1=var1397, $r10=var3338, $r12=var11, $r11=var3190, $r13=var3212, $r14=var2457, java.lang.Object=var1410, r15=var2256, org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition=var3824, $r7=var1686, java.lang.Boolean=var1644, $r9=var1684}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.procedure.spi.ParameterStrategy;	r8 := @parameter1: javax.persistence.StoredProcedureParameter;	i0 := @parameter2: int;	r2 := @parameter3: java.util.Map;	$r1 = <org.hibernate.procedure.spi.ParameterStrategy: org.hibernate.procedure.spi.ParameterStrategy NAMED>;	if r0 != $r1 goto $r3 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hibernate.proc.param_null_passing.");	$r11 = interfaceinvoke r8.<javax.persistence.StoredProcedureParameter: java.lang.String name()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	r15 = interfaceinvoke r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r14);	goto [?= $r7 = new org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition];	$r7 = new org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition;	$r9 = staticinvoke <org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition: java.lang.Boolean interpretBoolean(java.lang.Object)>(r15);	specialinvoke $r7.<org.hibernate.cfg.annotations.NamedProcedureCallDefinition$ParameterDefinition: void <init>(int,javax.persistence.StoredProcedureParameter,java.lang.Boolean)>(i0, r8, $r9);	return $r7
;block_num 3