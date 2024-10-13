(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2189 0)
(declare-sort var700 0)
(declare-sort var374 0)
(declare-sort var3155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var700_name/-313798164 (var700) String)
(declare-fun setName/335762598 (var374 String) void)
(declare-fun setStrategy/171545406 (var374 String) void)
(declare-fun var700_sequenceName/63393003 (var700) String)
(declare-fun var3155_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun var700_initialValue/2114532522 (var700) Int)
(declare-fun var700_allocationSize/-1640064714 (var700) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun addParam/-1744002218 (var374 String String) void)
(declare-const null-var2189 var2189)
(declare-const null-var700 var700)
(declare-const null-var374 var374)
(declare-const var811 var2189) ; Statement: r7 := @this: org.hibernate.boot.internal.IdGeneratorInterpreterImpl$LegacyFallbackInterpreter 
(assert (not (= var811 null-var2189)))
(declare-const var1213 var700) ; Statement: r1 := @parameter0: javax.persistence.SequenceGenerator 
(assert (not (= var1213 null-var700)))
(declare-const var1799 var374) ; Statement: r0 := @parameter1: org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder 
(assert (not (= var1799 null-var374)))
(define-const var2808 String (var700_name/-313798164 var1213)) ; Statement: $r2 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String name()>() 
(assert true)
;(assert (setName/335762598 var1799 var2808)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setName(java.lang.String)>($r2) 

(declare-const var1799!1 var374)
(declare-const var2808!1 String)
(assert true)
;(assert (setStrategy/171545406 var1799!1 "seqhilo")) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setStrategy(java.lang.String)>("seqhilo") 

(declare-const var1799!2 var374)
(declare-const var2453 String)
(define-const var1015 String (var700_sequenceName/63393003 var1213)) ; Statement: $r3 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String sequenceName()>() 
(define-const var1583 Bool (var3155_isEmptyAnnotationValue/1929464449 var1015)) ; Statement: $z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r3) 
 ; Statement: if $z0 != 0 goto $i0 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int initialValue()>() 
(assert (not (= (ite var1583 1 0) 0))) ; Cond: $z0 != 0 
(define-const var772 Int (var700_initialValue/2114532522 var1213)) ; Statement: $i0 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int initialValue()>() 
 ; Statement: if $i0 == 1 goto $i1 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int allocationSize()>() 
(assert (= var772 1)) ; Cond: $i0 == 1 
(define-const var354 Int (var700_allocationSize/-1640064714 var1213)) ; Statement: $i1 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int allocationSize()>() 
(define-const var1254 Int (- var354 1)) ; Statement: $i2 = $i1 - 1 
(define-const var1550 String (String_valueOf/1240665136 var1254)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
(assert true)
;(assert (addParam/-1744002218 var1799!2 "max_lo" var1550)) ; Statement: virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("max_lo", $r4) 

(declare-const var1799!3 var374)
(declare-const var1660 String)
(declare-const var1550!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var700_name/-313798164=([javax.persistence.SequenceGenerator], java.lang.String), setName/335762598=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String], void), setStrategy/171545406=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String], void), var700_sequenceName/63393003=([javax.persistence.SequenceGenerator], java.lang.String), var3155_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), var700_initialValue/2114532522=([javax.persistence.SequenceGenerator], int), var700_allocationSize/-1640064714=([javax.persistence.SequenceGenerator], int), String_valueOf/1240665136=([int], java.lang.String), addParam/-1744002218=([org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, java.lang.String, java.lang.String], void)}
; {var2189=org.hibernate.boot.internal.IdGeneratorInterpreterImpl$LegacyFallbackInterpreter, var811=r7, var700=javax.persistence.SequenceGenerator, var1213=r1, var374=org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder, var1799=r0, var2808=$r2, var2453="seqhilo", var1015=$r3, var3155=org.hibernate.cfg.BinderHelper, var1583=$z0, var772=$i0, var354=$i1, var1254=$i2, var1550=$r4, var1660="max_lo"}
; {org.hibernate.boot.internal.IdGeneratorInterpreterImpl$LegacyFallbackInterpreter=var2189, r7=var811, javax.persistence.SequenceGenerator=var700, r1=var1213, org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder=var374, r0=var1799, $r2=var2808, "seqhilo"=var2453, $r3=var1015, org.hibernate.cfg.BinderHelper=var3155, $z0=var1583, $i0=var772, $i1=var354, $i2=var1254, $r4=var1550, "max_lo"=var1660}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r7 := @this: org.hibernate.boot.internal.IdGeneratorInterpreterImpl$LegacyFallbackInterpreter;	r1 := @parameter0: javax.persistence.SequenceGenerator;	r0 := @parameter1: org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder;	$r2 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String name()>();	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setName(java.lang.String)>($r2);	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void setStrategy(java.lang.String)>("seqhilo");	$r3 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: java.lang.String sequenceName()>();	$z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r3);	if $z0 != 0 goto $i0 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int initialValue()>();	$i0 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int initialValue()>();	if $i0 == 1 goto $i1 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int allocationSize()>();	$i1 = interfaceinvoke r1.<javax.persistence.SequenceGenerator: int allocationSize()>();	$i2 = $i1 - 1;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	virtualinvoke r0.<org.hibernate.boot.model.IdentifierGeneratorDefinition$Builder: void addParam(java.lang.String,java.lang.String)>("max_lo", $r4);	return
;block_num 3