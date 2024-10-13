(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var802 0)
(declare-sort var2175 0)
(declare-sort var1532 0)
(declare-sort var3168 0)
(declare-sort var3253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3168!class ClassObject)
(declare-fun var2175_name/-313798164 (var2175) String)
(declare-fun setName/335762598 (var1532 String) void)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun setStrategy/171545406 (var1532 String) void)
(declare-fun var2175_catalog/1721793898 (var2175) String)
(declare-fun var3253_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun var2175_schema/2048778390 (var2175) String)
(declare-fun var2175_sequenceName/63393003 (var2175) String)
(declare-fun var2175_allocationSize/-1640064714 (var2175) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun addParam/-1744002218 (var1532 String String) void)
(declare-fun var2175_initialValue/2114532522 (var2175) Int)
(declare-const null-var802 var802)
(declare-const null-var2175 var2175)
(declare-const null-var1532 var1532)
(declare-const var1289 var802) ; Statement: r13 := @this: org.hibernate.boot.internal.IdGeneratorInterpreterImpl$FallbackInterpreter 
(assert (not (= var1289 null-var802)))
(declare-const var1315 var2175) ; Statement: r1 := @parameter0: javax.persistence.SequenceGenerator 
(assert (not (= var1315 null-var2175)))
(declare-const var1128 var1532) ; Statement: r0 := @parameter1: org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder 
(assert (not (= var1128 null-var1532)))
(define-const var918 String (var2175_name/-313798164 var1315)) ; Statement: $r2 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String name()>() 
(assert true)
;(assert (setName/335762598 var1128 var918)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setName(java.lang.String)>($r2) 

(declare-const var1128!1 var1532)
(declare-const var918!1 String)
(define-const var322 ClassObject var3168!class) ; Statement: $r3 = class "Lorg/hibernate/id/enhanced/SequenceStyleGenerator;" 
(assert true)
(define-const var1921 String (getName/-1958580599 var322)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (setStrategy/171545406 var1128!1 var1921)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setStrategy(java.lang.String)>($r4) 

(declare-const var1128!2 var1532)
(declare-const var1921!1 String)
(define-const var3216 String (var2175_catalog/1721793898 var1315)) ; Statement: $r5 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String catalog()>() 
(define-const var2567 Bool (var3253_isEmptyAnnotationValue/1929464449 var3216)) ; Statement: $z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r5) 
 ; Statement: if $z0 != 0 goto $r6 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String schema()>() 
(assert (not (= (ite var2567 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1443 String (var2175_schema/2048778390 var1315)) ; Statement: $r6 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String schema()>() 
(define-const var1632 Bool (var3253_isEmptyAnnotationValue/1929464449 var1443)) ; Statement: $z1 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r6) 
 ; Statement: if $z1 != 0 goto $r7 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String sequenceName()>() 
(assert (not (= (ite var1632 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3909 String (var2175_sequenceName/63393003 var1315)) ; Statement: $r7 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String sequenceName()>() 
(define-const var409 Bool (var3253_isEmptyAnnotationValue/1929464449 var3909)) ; Statement: $z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r7) 
 ; Statement: if $z2 != 0 goto $i0 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int allocationSize()>() 
(assert (not (= (ite var409 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2919 Int (var2175_allocationSize/-1640064714 var1315)) ; Statement: $i0 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int allocationSize()>() 
(define-const var2041 String (String_valueOf/1240665136 var2919)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (addParam/-1744002218 var1128!2 "increment_size" var2041)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("increment_size", $r8) 

(declare-const var1128!3 var1532)
(declare-const var3263 String)
(declare-const var2041!1 String)
(define-const var2876 Int (var2175_initialValue/2114532522 var1315)) ; Statement: $i1 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int initialValue()>() 
(define-const var238 String (String_valueOf/1240665136 var2876)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
(assert true)
;(assert (addParam/-1744002218 var1128!3 "initial_value" var238)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("initial_value", $r9) 

(declare-const var1128!4 var1532)
(declare-const var3059 String)
(declare-const var238!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2175_name/-313798164=([javax.persistence.SequenceGenerator], java.lang.String), setName/335762598=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String], void), getName/-1958580599=([java.lang.Class], java.lang.String), setStrategy/171545406=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String], void), var2175_catalog/1721793898=([javax.persistence.SequenceGenerator], java.lang.String), var3253_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), var2175_schema/2048778390=([javax.persistence.SequenceGenerator], java.lang.String), var2175_sequenceName/63393003=([javax.persistence.SequenceGenerator], java.lang.String), var2175_allocationSize/-1640064714=([javax.persistence.SequenceGenerator], int), String_valueOf/1240665136=([int], java.lang.String), addParam/-1744002218=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String, java.lang.String], void), var2175_initialValue/2114532522=([javax.persistence.SequenceGenerator], int)}
; {var802=org.hibernate.boot.internal.IdGeneratorInterpreterImpl$FallbackInterpreter, var1289=r13, var2175=javax.persistence.SequenceGenerator, var1315=r1, var1532=org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, var1128=r0, var918=$r2, var3168=org.hibernate.id.enhanced.SequenceStyleGenerator, var322=$r3, var1921=$r4, var3216=$r5, var3253=org.hibernate.cfg.BinderHelper, var2567=$z0, var1443=$r6, var1632=$z1, var3909=$r7, var409=$z2, var2919=$i0, var2041=$r8, var3263="increment_size", var2876=$i1, var238=$r9, var3059="initial_value"}
; {org.hibernate.boot.internal.IdGeneratorInterpreterImpl$FallbackInterpreter=var802, r13=var1289, javax.persistence.SequenceGenerator=var2175, r1=var1315, org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder=var1532, r0=var1128, $r2=var918, org.hibernate.id.enhanced.SequenceStyleGenerator=var3168, $r3=var322, $r4=var1921, $r5=var3216, org.hibernate.cfg.BinderHelper=var3253, $z0=var2567, $r6=var1443, $z1=var1632, $r7=var3909, $z2=var409, $i0=var2919, $r8=var2041, "increment_size"=var3263, $i1=var2876, $r9=var238, "initial_value"=var3059}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 2}
;stmts r13 := @this: org.hibernate.boot.internal.IdGeneratorInterpreterImpl$FallbackInterpreter;	r1 := @parameter0: javax.persistence.SequenceGenerator;	r0 := @parameter1: org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder;	$r2 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String name()>();	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setName(java.lang.String)>($r2);	$r3 = class "Lorg/hibernate/id/enhanced/SequenceStyleGenerator;";	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setStrategy(java.lang.String)>($r4);	$r5 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String catalog()>();	$z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r5);	if $z0 != 0 goto $r6 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String schema()>();	$r6 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String schema()>();	$z1 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r6);	if $z1 != 0 goto $r7 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String sequenceName()>();	$r7 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String sequenceName()>();	$z2 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r7);	if $z2 != 0 goto $i0 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int allocationSize()>();	$i0 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int allocationSize()>();	$r8 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("increment_size", $r8);	$i1 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int initialValue()>();	$r9 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("initial_value", $r9);	return
;block_num 4