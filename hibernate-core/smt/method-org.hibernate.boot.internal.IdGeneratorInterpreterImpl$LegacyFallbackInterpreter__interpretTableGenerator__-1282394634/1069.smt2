(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var250 0)
(declare-sort var3450 0)
(declare-sort var2104 0)
(declare-sort var762 0)
(declare-sort var1917 0)
(declare-sort var2196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var762!class ClassObject)
(declare-fun var3450_name/-752309787 (var3450) String)
(declare-fun setName/335762598 (var2104 String) void)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun setStrategy/171545406 (var2104 String) void)
(declare-fun var3450_table/-286479812 (var3450) String)
(declare-fun var1917_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun var3450_catalog/-982419759 (var3450) String)
(declare-fun var3450_schema/1545903695 (var3450) String)
(declare-fun var3450_pkColumnName/1664249972 (var3450) String)
(declare-fun var3450_valueColumnName/-1265358856 (var3450) String)
(declare-fun var3450_pkColumnValue/1097685258 (var3450) String)
(declare-fun var3450_allocationSize/1174694877 (var3450) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun addParam/-1744002218 (var2104 String String) void)
(declare-fun var3450_uniqueConstraints/698221459 (var3450) (Array Int var2196))
(declare-const null-var250 var250)
(declare-const null-var3450 var3450)
(declare-const null-var2104 var2104)
(declare-const null-__Array__Int__var2196__ (Array Int var2196))
(declare-const var2011 var250) ; Statement: r22 := @this: org.hibernate.boot.internal.IdGeneratorInterpreterImpl$LegacyFallbackInterpreter 
(assert (not (= var2011 null-var250)))
(declare-const var3943 var3450) ; Statement: r1 := @parameter0: javax.persistence.TableGenerator 
(assert (not (= var3943 null-var3450)))
(declare-const var3840 var2104) ; Statement: r0 := @parameter1: org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder 
(assert (not (= var3840 null-var2104)))
(define-const var1755 String (var3450_name/-752309787 var3943)) ; Statement: $r2 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String name()>() 
(assert true)
;(assert (setName/335762598 var3840 var1755)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setName(java.lang.String)>($r2) 

(declare-const var3840!1 var2104)
(declare-const var1755!1 String)
(define-const var3827 ClassObject var762!class) ; Statement: $r3 = class "Lorg/hibernate/id/MultipleHiLoPerTableGenerator;" 
(assert true)
(define-const var3901 String (getName/-1958580599 var3827)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (setStrategy/171545406 var3840!1 var3901)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setStrategy(java.lang.String)>($r4) 

(declare-const var3840!2 var2104)
(declare-const var3901!1 String)
(define-const var21 String (var3450_table/-286479812 var3943)) ; Statement: $r5 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String table()>() 
(define-const var3416 Bool (var1917_isEmptyAnnotationValue/1929464449 var21)) ; Statement: $z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r5) 
 ; Statement: if $z0 != 0 goto $r6 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String catalog()>() 
(assert (not (= (ite var3416 1 0) 0))) ; Cond: $z0 != 0 
(define-const var806 String (var3450_catalog/-982419759 var3943)) ; Statement: $r6 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String catalog()>() 
(define-const var2853 Bool (var1917_isEmptyAnnotationValue/1929464449 var806)) ; Statement: $z1 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r6) 
 ; Statement: if $z1 != 0 goto $r7 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String schema()>() 
(assert (not (= (ite var2853 1 0) 0))) ; Cond: $z1 != 0 
(define-const var465 String (var3450_schema/1545903695 var3943)) ; Statement: $r7 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String schema()>() 
(define-const var2865 Bool (var1917_isEmptyAnnotationValue/1929464449 var465)) ; Statement: $z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r7) 
 ; Statement: if $z2 != 0 goto $r8 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnName()>() 
(assert (not (= (ite var2865 1 0) 0))) ; Cond: $z2 != 0 
(define-const var0 String (var3450_pkColumnName/1664249972 var3943)) ; Statement: $r8 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnName()>() 
(define-const var1555 Bool (var1917_isEmptyAnnotationValue/1929464449 var0)) ; Statement: $z3 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r8) 
 ; Statement: if $z3 != 0 goto $r9 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String valueColumnName()>() 
(assert (not (= (ite var1555 1 0) 0))) ; Cond: $z3 != 0 
(define-const var1741 String (var3450_valueColumnName/-1265358856 var3943)) ; Statement: $r9 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String valueColumnName()>() 
(define-const var2631 Bool (var1917_isEmptyAnnotationValue/1929464449 var1741)) ; Statement: $z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r9) 
 ; Statement: if $z4 != 0 goto $r10 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnValue()>() 
(assert (not (= (ite var2631 1 0) 0))) ; Cond: $z4 != 0 
(define-const var2966 String (var3450_pkColumnValue/1097685258 var3943)) ; Statement: $r10 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnValue()>() 
(define-const var3650 Bool (var1917_isEmptyAnnotationValue/1929464449 var2966)) ; Statement: $z5 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r10) 
 ; Statement: if $z5 != 0 goto $i0 = interfaceinvoke r1.<javax.persistence.TableGenerator: int allocationSize()>() 
(assert (not (= (ite var3650 1 0) 0))) ; Cond: $z5 != 0 
(define-const var885 Int (var3450_allocationSize/1174694877 var3943)) ; Statement: $i0 = interfaceinvoke r1.<javax.persistence.TableGenerator: int allocationSize()>() 
(define-const var3305 Int (- var885 1)) ; Statement: $i1 = $i0 - 1 
(define-const var2885 String (String_valueOf/1240665136 var3305)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
(assert true)
;(assert (addParam/-1744002218 var3840!2 "max_lo" var2885)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("max_lo", $r11) 

(declare-const var3840!3 var2104)
(declare-const var3417 String)
(declare-const var2885!1 String)
(define-const var2334 (Array Int var2196) (var3450_uniqueConstraints/698221459 var3943)) ; Statement: $r12 = interfaceinvoke r1.<javax.persistence.TableGenerator: javax.persistence.UniqueConstraint[] uniqueConstraints()>() 
 ; Statement: if $r12 == null goto return 
(assert (= var2334 null-__Array__Int__var2196__)) ; Cond: $r12 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3450_name/-752309787=([javax.persistence.TableGenerator], java.lang.String), setName/335762598=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String], void), getName/-1958580599=([java.lang.Class], java.lang.String), setStrategy/171545406=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String], void), var3450_table/-286479812=([javax.persistence.TableGenerator], java.lang.String), var1917_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), var3450_catalog/-982419759=([javax.persistence.TableGenerator], java.lang.String), var3450_schema/1545903695=([javax.persistence.TableGenerator], java.lang.String), var3450_pkColumnName/1664249972=([javax.persistence.TableGenerator], java.lang.String), var3450_valueColumnName/-1265358856=([javax.persistence.TableGenerator], java.lang.String), var3450_pkColumnValue/1097685258=([javax.persistence.TableGenerator], java.lang.String), var3450_allocationSize/1174694877=([javax.persistence.TableGenerator], int), String_valueOf/1240665136=([int], java.lang.String), addParam/-1744002218=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String, java.lang.String], void), var3450_uniqueConstraints/698221459=([javax.persistence.TableGenerator], javax.persistence.UniqueConstraint[])}
; {var250=org.hibernate.boot.internal.IdGeneratorInterpreterImpl$LegacyFallbackInterpreter, var2011=r22, var3450=javax.persistence.TableGenerator, var3943=r1, var2104=org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, var3840=r0, var1755=$r2, var762=org.hibernate.id.MultipleHiLoPerTableGenerator, var3827=$r3, var3901=$r4, var21=$r5, var1917=org.hibernate.cfg.BinderHelper, var3416=$z0, var806=$r6, var2853=$z1, var465=$r7, var2865=$z2, var0=$r8, var1555=$z3, var1741=$r9, var2631=$z4, var2966=$r10, var3650=$z5, var885=$i0, var3305=$i1, var2885=$r11, var3417="max_lo", var2196=javax.persistence.UniqueConstraint, var2334=$r12}
; {org.hibernate.boot.internal.IdGeneratorInterpreterImpl$LegacyFallbackInterpreter=var250, r22=var2011, javax.persistence.TableGenerator=var3450, r1=var3943, org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder=var2104, r0=var3840, $r2=var1755, org.hibernate.id.MultipleHiLoPerTableGenerator=var762, $r3=var3827, $r4=var3901, $r5=var21, org.hibernate.cfg.BinderHelper=var1917, $z0=var3416, $r6=var806, $z1=var2853, $r7=var465, $z2=var2865, $r8=var0, $z3=var1555, $r9=var1741, $z4=var2631, $r10=var2966, $z5=var3650, $i0=var885, $i1=var3305, $r11=var2885, "max_lo"=var3417, javax.persistence.UniqueConstraint=var2196, $r12=var2334}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r22 := @this: org.hibernate.boot.internal.IdGeneratorInterpreterImpl$LegacyFallbackInterpreter;	r1 := @parameter0: javax.persistence.TableGenerator;	r0 := @parameter1: org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder;	$r2 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String name()>();	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setName(java.lang.String)>($r2);	$r3 = class "Lorg/hibernate/id/MultipleHiLoPerTableGenerator;";	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setStrategy(java.lang.String)>($r4);	$r5 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String table()>();	$z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r5);	if $z0 != 0 goto $r6 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String catalog()>();	$r6 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String catalog()>();	$z1 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r6);	if $z1 != 0 goto $r7 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String schema()>();	$r7 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String schema()>();	$z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r7);	if $z2 != 0 goto $r8 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnName()>();	$r8 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnName()>();	$z3 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r8);	if $z3 != 0 goto $r9 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String valueColumnName()>();	$r9 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String valueColumnName()>();	$z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r9);	if $z4 != 0 goto $r10 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnValue()>();	$r10 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnValue()>();	$z5 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r10);	if $z5 != 0 goto $i0 = interfaceinvoke r1.<javax.persistence.TableGenerator: int allocationSize()>();	$i0 = interfaceinvoke r1.<javax.persistence.TableGenerator: int allocationSize()>();	$i1 = $i0 - 1;	$r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("max_lo", $r11);	$r12 = interfaceinvoke r1.<javax.persistence.TableGenerator: javax.persistence.UniqueConstraint[] uniqueConstraints()>();	if $r12 == null goto return;	return
;block_num 8