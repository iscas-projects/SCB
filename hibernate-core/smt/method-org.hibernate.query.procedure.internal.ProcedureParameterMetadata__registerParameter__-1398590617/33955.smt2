(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var906 0)
(declare-sort var3545 0)
(declare-sort var3635 0)
(declare-sort var1524 0)
(declare-sort var2634 0)
(declare-sort var3154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3635_getName/-1725559444 (var3635) String)
(declare-fun cast-from-var3545-to-var3635 (var3545) var3635)
(declare-fun var3635_getPosition/-1273298209 (var3635) Int)
(declare-fun var2634-init () var2634)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3154) String)
(declare-fun cast-from-var3545-to-var3154 (var3545) var3154)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2634 String) void)
(declare-const null-var906 var906)
(declare-const null-var3545 var3545)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1869 var906) ; Statement: r8 := @this: org.hibernate.query.procedure.internal.ProcedureParameterMetadata 
(assert (not (= var1869 null-var906)))
(declare-const var395 var3545) ; Statement: r0 := @parameter0: org.hibernate.query.procedure.spi.ProcedureParameterImplementor 
(assert (not (= var395 null-var3545)))
(define-const var1801 String (var3635_getName/-1725559444 (cast-from-var3545-to-var3635 var395))) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: java.lang.String getName()>() 
 ; Statement: if $r1 == null goto $r2 = interfaceinvoke r0.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: java.lang.Integer getPosition()>() 
(assert (= var1801 null-String)) ; Cond: $r1 == null 
(define-const var840 Int (var3635_getPosition/-1273298209 (cast-from-var3545-to-var3635 var395))) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: java.lang.Integer getPosition()>() 
 ; Statement: if $r2 == null goto $r3 = new java.lang.IllegalArgumentException 
(assert (= var840 null-Int)) ; Cond: $r2 == null 
(define-const var3806 var2634 var2634-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1741 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1741)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1741!1 String)
(assert (= var1741!1 ""))
(assert true)
(define-const var3412 String (append/672562846 var1741!1 "Unrecognized parameter type : ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized parameter type : ") 
(declare-const var1741!2 String)
(assert (= var1741!2 (str.++ var1741!1 "Unrecognized parameter type : ")))
(assert true)
(define-const var2578 String (append/-1031950772 var3412 (cast-from-var3545-to-var3154 var395))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3412!1 String)
(assert (str.prefixof var3412 var3412!1))
(assert true)
(define-const var8 String (toString/-2075883882 var2578)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3806 var8)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3806!1 var2634)
(declare-const var8!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3635_getName/-1725559444=([org.hibernate.procedure.ParameterRegistration], java.lang.String), cast-from-var3545-to-var3635=([org.hibernate.query.procedure.spi.ProcedureParameterImplementor], org.hibernate.procedure.ParameterRegistration), var3635_getPosition/-1273298209=([org.hibernate.procedure.ParameterRegistration], java.lang.Integer), var2634-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3545-to-var3154=([org.hibernate.query.procedure.spi.ProcedureParameterImplementor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var906=org.hibernate.query.procedure.internal.ProcedureParameterMetadata, var1869=r8, var3545=org.hibernate.query.procedure.spi.ProcedureParameterImplementor, var395=r0, var3635=org.hibernate.procedure.ParameterRegistration, var1801=$r1, var1524=null_type, var840=$r2, var2634=java.lang.IllegalArgumentException, var3806=$r3, var1741=$r4, var3412=$r5, var3154=java.lang.Object, var2578=$r6, var8=$r7}
; {org.hibernate.query.procedure.internal.ProcedureParameterMetadata=var906, r8=var1869, org.hibernate.query.procedure.spi.ProcedureParameterImplementor=var3545, r0=var395, org.hibernate.procedure.ParameterRegistration=var3635, $r1=var1801, null_type=var1524, $r2=var840, java.lang.IllegalArgumentException=var2634, $r3=var3806, $r4=var1741, $r5=var3412, java.lang.Object=var3154, $r6=var2578, $r7=var8}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.query.procedure.internal.ProcedureParameterMetadata;	r0 := @parameter0: org.hibernate.query.procedure.spi.ProcedureParameterImplementor;	$r1 = interfaceinvoke r0.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: java.lang.String getName()>();	if $r1 == null goto $r2 = interfaceinvoke r0.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: java.lang.Integer getPosition()>();	$r2 = interfaceinvoke r0.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: java.lang.Integer getPosition()>();	if $r2 == null goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized parameter type : ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 3