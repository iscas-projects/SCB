(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3212 0)
(declare-sort var1774 0)
(declare-sort var2126 0)
(declare-sort var867 0)
(declare-sort var2596 0)
(declare-sort var773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun procedureParameter/1747700246 (var3212) var2126)
(declare-fun var2596_getMode/726865546 (var2596) var867)
(declare-fun cast-from-var2126-to-var2596 (var2126) var2596)
(declare-fun var773-init () var773)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1774) String)
(declare-fun cast-from-var2126-to-var1774 (var2126) var1774)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var773 String) void)
(declare-const null-var3212 var3212)
(declare-const null-var1774 var1774)
(declare-const var867-IN var867)
(declare-const var867-INOUT var867)
(declare-const var1654 var3212) ; Statement: r0 := @this: org.hibernate.procedure.internal.ParameterBindImpl 
(assert (not (= var1654 null-var3212)))
(declare-const var630 var1774) ; Statement: r6 := @parameter0: java.lang.Object 
(assert (not (= var630 null-var1774)))
(define-const var1736 var2126 (procedureParameter/1747700246 var1654)) ; Statement: $r1 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter> 
(define-const var1297 var867 (var2596_getMode/726865546 (cast-from-var2126-to-var2596 var1736))) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: javax.persistence.ParameterMode getMode()>() 
(define-const var1432 var867 var867-IN) ; Statement: $r2 = <javax.persistence.ParameterMode: javax.persistence.ParameterMode IN> 
 ; Statement: if $r3 == $r2 goto $r4 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter> 
(assert (not (= var1297 var1432))) ; Negate: Cond: $r3 == $r2  
(define-const var2430 var2126 (procedureParameter/1747700246 var1654)) ; Statement: $r42 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter> 
(define-const var2856 var867 (var2596_getMode/726865546 (cast-from-var2126-to-var2596 var2430))) ; Statement: $r44 = interfaceinvoke $r42.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: javax.persistence.ParameterMode getMode()>() 
(define-const var2598 var867 var867-INOUT) ; Statement: $r43 = <javax.persistence.ParameterMode: javax.persistence.ParameterMode INOUT> 
 ; Statement: if $r44 == $r43 goto $r4 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter> 
(assert (not (= var2856 var2598))) ; Negate: Cond: $r44 == $r43  
(define-const var900 var773 var773-init) ; Statement: $r45 = new java.lang.IllegalStateException 
(define-const var1132 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1132)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1132!1 String)
(assert (= var1132!1 ""))
(assert true)
(define-const var937 String (append/672562846 var1132!1 "Can only bind values for IN/INOUT parameters : ")) ; Statement: $r48 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can only bind values for IN/INOUT parameters : ") 
(declare-const var1132!2 String)
(assert (= var1132!2 (str.++ var1132!1 "Can only bind values for IN/INOUT parameters : ")))
(define-const var2174 var2126 (procedureParameter/1747700246 var1654)) ; Statement: $r47 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter> 
(assert true)
(define-const var2988 String (append/-1031950772 var937 (cast-from-var2126-to-var1774 var2174))) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r47) 
(declare-const var937!1 String)
(assert (str.prefixof var937 var937!1))
(assert true)
(define-const var3003 String (toString/-2075883882 var2988)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var900 var3003)) ; Statement: specialinvoke $r45.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r50) 

(declare-const var900!1 var773)
(declare-const var3003!1 String)
 ; Statement: throw $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {procedureParameter/1747700246=([org.hibernate.procedure.internal.ParameterBindImpl], org.hibernate.query.procedure.spi.ProcedureParameterImplementor), var2596_getMode/726865546=([org.hibernate.procedure.ParameterRegistration], javax.persistence.ParameterMode), cast-from-var2126-to-var2596=([org.hibernate.query.procedure.spi.ProcedureParameterImplementor], org.hibernate.procedure.ParameterRegistration), var773-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2126-to-var1774=([org.hibernate.query.procedure.spi.ProcedureParameterImplementor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3212=org.hibernate.procedure.internal.ParameterBindImpl, var1654=r0, var1774=java.lang.Object, var630=r6, var2126=org.hibernate.query.procedure.spi.ProcedureParameterImplementor, var1736=$r1, var867=javax.persistence.ParameterMode, var2596=org.hibernate.procedure.ParameterRegistration, var1297=$r3, var1432=$r2, var2430=$r42, var2856=$r44, var2598=$r43, var773=java.lang.IllegalStateException, var900=$r45, var1132=$r46, var937=$r48, var2174=$r47, var2988=$r49, var3003=$r50}
; {org.hibernate.procedure.internal.ParameterBindImpl=var3212, r0=var1654, java.lang.Object=var1774, r6=var630, org.hibernate.query.procedure.spi.ProcedureParameterImplementor=var2126, $r1=var1736, javax.persistence.ParameterMode=var867, org.hibernate.procedure.ParameterRegistration=var2596, $r3=var1297, $r2=var1432, $r42=var2430, $r44=var2856, $r43=var2598, java.lang.IllegalStateException=var773, $r45=var900, $r46=var1132, $r48=var937, $r47=var2174, $r49=var2988, $r50=var3003}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.procedure.internal.ParameterBindImpl;	r6 := @parameter0: java.lang.Object;	$r1 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter>;	$r3 = interfaceinvoke $r1.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: javax.persistence.ParameterMode getMode()>();	$r2 = <javax.persistence.ParameterMode: javax.persistence.ParameterMode IN>;	if $r3 == $r2 goto $r4 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter>;	$r42 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter>;	$r44 = interfaceinvoke $r42.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: javax.persistence.ParameterMode getMode()>();	$r43 = <javax.persistence.ParameterMode: javax.persistence.ParameterMode INOUT>;	if $r44 == $r43 goto $r4 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter>;	$r45 = new java.lang.IllegalStateException;	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r48 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can only bind values for IN/INOUT parameters : ");	$r47 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter>;	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r47);	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r45.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r50);	throw $r45
;block_num 3