(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var917 0)
(declare-sort var2422 0)
(declare-sort var999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun applyCurrentNamespace/296309646 (var917 String Bool) String)
(declare-const null-var917 var917)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var999 var999)
(declare-const var1311 var917) ; Statement: r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant 
(assert (not (= var1311 null-var917)))
(declare-const var2171 String) ; Statement: r17 := @parameter0: java.lang.String 
(assert (not (= var2171 null-String)))
(declare-const var832 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var832 null-ClassObject)))
(declare-const var2349 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2349 null-String)))
(assert true)
(define-const var1687 String (applyCurrentNamespace/296309646 var1311 var2171 (ite (= 1 1) true false))) ; Statement: r18 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r17, 1) 
(define-const var3871 var999 null-var999) ; Statement: r19 = null 
 ; Statement: if r18 == null goto (branch) 
(assert (= var1687 null-String)) ; Cond: r18 == null 
 ; Statement: if r1 == null goto return r19 
(assert (= var832 null-ClassObject)) ; Cond: r1 == null 
 ; Statement: return r19 
(check-sat)
(get-model)
(get-unsat-core)
; {applyCurrentNamespace/296309646=([org.apache.ibatis.builder.MapperBuilderAssistant, java.lang.String, boolean], java.lang.String)}
; {var917=org.apache.ibatis.builder.MapperBuilderAssistant, var1311=r0, var2171=r17, var2422=null_type, var832=r1, var2349=r6, var1687=r18, var999=org.apache.ibatis.mapping.ParameterMap, var3871=r19}
; {org.apache.ibatis.builder.MapperBuilderAssistant=var917, r0=var1311, r17=var2171, null_type=var2422, r1=var832, r6=var2349, r18=var1687, org.apache.ibatis.mapping.ParameterMap=var999, r19=var3871}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.builder.MapperBuilderAssistant;	r17 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Class;	r6 := @parameter2: java.lang.String;	r18 = virtualinvoke r0.<org.apache.ibatis.builder.MapperBuilderAssistant: java.lang.String applyCurrentNamespace(java.lang.String,boolean)>(r17, 1);	r19 = null;	if r18 == null goto (branch);	if r1 == null goto return r19;	return r19
;block_num 3