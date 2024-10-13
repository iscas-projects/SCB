(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3373 0)
(declare-sort var946 0)
(declare-sort var219 0)
(declare-sort var2404 0)
(declare-sort var1991 0)
(declare-sort var3979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2404!class ClassObject)
(declare-fun var946_name/-752309787 (var946) String)
(declare-fun setName/335762598 (var219 String) void)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun setStrategy/171545406 (var219 String) void)
(declare-fun addParam/-1744002218 (var219 String String) void)
(declare-fun var946_catalog/-982419759 (var946) String)
(declare-fun var1991_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun var946_schema/1545903695 (var946) String)
(declare-fun var946_table/-286479812 (var946) String)
(declare-fun var946_pkColumnName/1664249972 (var946) String)
(declare-fun var946_pkColumnValue/1097685258 (var946) String)
(declare-fun var946_valueColumnName/-1265358856 (var946) String)
(declare-fun var946_allocationSize/1174694877 (var946) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var946_initialValue/-358513391 (var946) Int)
(declare-fun var946_uniqueConstraints/698221459 (var946) (Array Int var3979))
(declare-const null-var3373 var3373)
(declare-const null-var946 var946)
(declare-const null-var219 var219)
(declare-const null-__Array__Int__var3979__ (Array Int var3979))
(declare-const var1255 var3373) ; Statement: r23 := @this: org.hibernate.boot.internal.IdGeneratorInterpreterImpl$FallbackInterpreter 
(assert (not (= var1255 null-var3373)))
(declare-const var1670 var946) ; Statement: r1 := @parameter0: javax.persistence.TableGenerator 
(assert (not (= var1670 null-var946)))
(declare-const var1161 var219) ; Statement: r0 := @parameter1: org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder 
(assert (not (= var1161 null-var219)))
(define-const var1347 String (var946_name/-752309787 var1670)) ; Statement: $r2 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String name()>() 
(assert true)
;(assert (setName/335762598 var1161 var1347)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setName(java.lang.String)>($r2) 

(declare-const var1161!1 var219)
(declare-const var1347!1 String)
(define-const var2432 ClassObject var2404!class) ; Statement: $r3 = class "Lorg/hibernate/id/enhanced/TableGenerator;" 
(assert true)
(define-const var741 String (getName/-1958580599 var2432)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (setStrategy/171545406 var1161!1 var741)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setStrategy(java.lang.String)>($r4) 

(declare-const var1161!2 var219)
(declare-const var741!1 String)
(assert true)
;(assert (addParam/-1744002218 var1161!2 "prefer_entity_table_as_segment_value" "true")) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("prefer_entity_table_as_segment_value", "true") 

(declare-const var1161!3 var219)
(declare-const var177 String)
(declare-const var125 String)
(define-const var1127 String (var946_catalog/-982419759 var1670)) ; Statement: $r5 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String catalog()>() 
(define-const var1464 Bool (var1991_isEmptyAnnotationValue/1929464449 var1127)) ; Statement: $z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r5) 
 ; Statement: if $z0 != 0 goto $r6 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String schema()>() 
(assert (not (= (ite var1464 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1889 String (var946_schema/1545903695 var1670)) ; Statement: $r6 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String schema()>() 
(define-const var2397 Bool (var1991_isEmptyAnnotationValue/1929464449 var1889)) ; Statement: $z1 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r6) 
 ; Statement: if $z1 != 0 goto $r7 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String table()>() 
(assert (not (= (ite var2397 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3152 String (var946_table/-286479812 var1670)) ; Statement: $r7 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String table()>() 
(define-const var3596 Bool (var1991_isEmptyAnnotationValue/1929464449 var3152)) ; Statement: $z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r7) 
 ; Statement: if $z2 != 0 goto $r8 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnName()>() 
(assert (not (= (ite var3596 1 0) 0))) ; Cond: $z2 != 0 
(define-const var329 String (var946_pkColumnName/1664249972 var1670)) ; Statement: $r8 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnName()>() 
(define-const var3198 Bool (var1991_isEmptyAnnotationValue/1929464449 var329)) ; Statement: $z3 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r8) 
 ; Statement: if $z3 != 0 goto $r9 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnValue()>() 
(assert (not (= (ite var3198 1 0) 0))) ; Cond: $z3 != 0 
(define-const var1079 String (var946_pkColumnValue/1097685258 var1670)) ; Statement: $r9 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnValue()>() 
(define-const var498 Bool (var1991_isEmptyAnnotationValue/1929464449 var1079)) ; Statement: $z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r9) 
 ; Statement: if $z4 != 0 goto $r10 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String valueColumnName()>() 
(assert (not (= (ite var498 1 0) 0))) ; Cond: $z4 != 0 
(define-const var1938 String (var946_valueColumnName/-1265358856 var1670)) ; Statement: $r10 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String valueColumnName()>() 
(define-const var1172 Bool (var1991_isEmptyAnnotationValue/1929464449 var1938)) ; Statement: $z5 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r10) 
 ; Statement: if $z5 != 0 goto $i0 = interfaceinvoke r1.<javax.persistence.TableGenerator: int allocationSize()>() 
(assert (not (= (ite var1172 1 0) 0))) ; Cond: $z5 != 0 
(define-const var3191 Int (var946_allocationSize/1174694877 var1670)) ; Statement: $i0 = interfaceinvoke r1.<javax.persistence.TableGenerator: int allocationSize()>() 
(define-const var929 String (String_valueOf/1240665136 var3191)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (addParam/-1744002218 var1161!3 "increment_size" var929)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("increment_size", $r11) 

(declare-const var1161!4 var219)
(declare-const var2475 String)
(declare-const var929!1 String)
(define-const var1333 Int (var946_initialValue/-358513391 var1670)) ; Statement: $i1 = interfaceinvoke r1.<javax.persistence.TableGenerator: int initialValue()>() 
(define-const var62 Int (+ var1333 1)) ; Statement: $i2 = $i1 + 1 
(define-const var800 String (String_valueOf/1240665136 var62)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
(assert true)
;(assert (addParam/-1744002218 var1161!4 "initial_value" var800)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("initial_value", $r12) 

(declare-const var1161!5 var219)
(declare-const var2442 String)
(declare-const var800!1 String)
(define-const var2227 (Array Int var3979) (var946_uniqueConstraints/698221459 var1670)) ; Statement: $r13 = interfaceinvoke r1.<javax.persistence.TableGenerator: javax.persistence.UniqueConstraint[] uniqueConstraints()>() 
 ; Statement: if $r13 == null goto return 
(assert (= var2227 null-__Array__Int__var3979__)) ; Cond: $r13 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var946_name/-752309787=([javax.persistence.TableGenerator], java.lang.String), setName/335762598=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String], void), getName/-1958580599=([java.lang.Class], java.lang.String), setStrategy/171545406=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String], void), addParam/-1744002218=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String, java.lang.String], void), var946_catalog/-982419759=([javax.persistence.TableGenerator], java.lang.String), var1991_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), var946_schema/1545903695=([javax.persistence.TableGenerator], java.lang.String), var946_table/-286479812=([javax.persistence.TableGenerator], java.lang.String), var946_pkColumnName/1664249972=([javax.persistence.TableGenerator], java.lang.String), var946_pkColumnValue/1097685258=([javax.persistence.TableGenerator], java.lang.String), var946_valueColumnName/-1265358856=([javax.persistence.TableGenerator], java.lang.String), var946_allocationSize/1174694877=([javax.persistence.TableGenerator], int), String_valueOf/1240665136=([int], java.lang.String), var946_initialValue/-358513391=([javax.persistence.TableGenerator], int), var946_uniqueConstraints/698221459=([javax.persistence.TableGenerator], javax.persistence.UniqueConstraint[])}
; {var3373=org.hibernate.boot.internal.IdGeneratorInterpreterImpl$FallbackInterpreter, var1255=r23, var946=javax.persistence.TableGenerator, var1670=r1, var219=org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, var1161=r0, var1347=$r2, var2404=org.hibernate.id.enhanced.TableGenerator, var2432=$r3, var741=$r4, var177="prefer_entity_table_as_segment_value", var125="true", var1127=$r5, var1991=org.hibernate.cfg.BinderHelper, var1464=$z0, var1889=$r6, var2397=$z1, var3152=$r7, var3596=$z2, var329=$r8, var3198=$z3, var1079=$r9, var498=$z4, var1938=$r10, var1172=$z5, var3191=$i0, var929=$r11, var2475="increment_size", var1333=$i1, var62=$i2, var800=$r12, var2442="initial_value", var3979=javax.persistence.UniqueConstraint, var2227=$r13}
; {org.hibernate.boot.internal.IdGeneratorInterpreterImpl$FallbackInterpreter=var3373, r23=var1255, javax.persistence.TableGenerator=var946, r1=var1670, org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder=var219, r0=var1161, $r2=var1347, org.hibernate.id.enhanced.TableGenerator=var2404, $r3=var2432, $r4=var741, "prefer_entity_table_as_segment_value"=var177, "true"=var125, $r5=var1127, org.hibernate.cfg.BinderHelper=var1991, $z0=var1464, $r6=var1889, $z1=var2397, $r7=var3152, $z2=var3596, $r8=var329, $z3=var3198, $r9=var1079, $z4=var498, $r10=var1938, $z5=var1172, $i0=var3191, $r11=var929, "increment_size"=var2475, $i1=var1333, $i2=var62, $r12=var800, "initial_value"=var2442, javax.persistence.UniqueConstraint=var3979, $r13=var2227}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 2}
;stmts r23 := @this: org.hibernate.boot.internal.IdGeneratorInterpreterImpl$FallbackInterpreter;	r1 := @parameter0: javax.persistence.TableGenerator;	r0 := @parameter1: org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder;	$r2 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String name()>();	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setName(java.lang.String)>($r2);	$r3 = class "Lorg/hibernate/id/enhanced/TableGenerator;";	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setStrategy(java.lang.String)>($r4);	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("prefer_entity_table_as_segment_value", "true");	$r5 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String catalog()>();	$z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r5);	if $z0 != 0 goto $r6 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String schema()>();	$r6 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String schema()>();	$z1 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r6);	if $z1 != 0 goto $r7 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String table()>();	$r7 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String table()>();	$z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r7);	if $z2 != 0 goto $r8 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnName()>();	$r8 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnName()>();	$z3 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r8);	if $z3 != 0 goto $r9 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnValue()>();	$r9 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String pkColumnValue()>();	$z4 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r9);	if $z4 != 0 goto $r10 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String valueColumnName()>();	$r10 = interfaceinvoke r1.<javax.persistence.TableGenerator: java.lang.String valueColumnName()>();	$z5 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r10);	if $z5 != 0 goto $i0 = interfaceinvoke r1.<javax.persistence.TableGenerator: int allocationSize()>();	$i0 = interfaceinvoke r1.<javax.persistence.TableGenerator: int allocationSize()>();	$r11 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("increment_size", $r11);	$i1 = interfaceinvoke r1.<javax.persistence.TableGenerator: int initialValue()>();	$i2 = $i1 + 1;	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("initial_value", $r12);	$r13 = interfaceinvoke r1.<javax.persistence.TableGenerator: javax.persistence.UniqueConstraint[] uniqueConstraints()>();	if $r13 == null goto return;	return
;block_num 8