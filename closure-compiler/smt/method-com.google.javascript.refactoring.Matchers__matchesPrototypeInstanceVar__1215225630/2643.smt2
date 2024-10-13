(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3010 0)
(declare-sort var3447 0)
(declare-sort var3424 0)
(declare-sort var1597 0)
(declare-sort var3908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var3908_getJsType/2037857904 (var3447 String) var1597)
(declare-const null-var3010 var3010)
(declare-const null-var3447 var3447)
(declare-const null-String String)
(declare-const null-var1597 var1597)
(declare-const var2783 var3010) ; Statement: r6 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2783 null-var3010)))
(declare-const var113 var3447) ; Statement: r4 := @parameter1: com.google.javascript.refactoring.NodeMetadata 
(assert (not (= var113 null-var3447)))
(declare-const var1154 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1154 null-String)))
(assert true)
(define-const var385 (Array Int String) (split/-636890950 var1154 ".prototype.")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(".prototype.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1154 ".prototype.") i) (re.++ (re.* re.all) (re.++ re.allchar (str.to_re "prototype") re.allchar) (re.* re.all))))))
(define-const var3827 String (select var385 0)) ; Statement: r2 = r1[0] 
(define-const var1757 String (select var385 1)) ; Statement: r3 = r1[1] 
(define-const var2949 var1597 (var3908_getJsType/2037857904 var113 var3827)) ; Statement: r5 = staticinvoke <com.google.javascript.refactoring.Matchers: com.google.javascript.rhino.jstype.JSType getJsType(com.google.javascript.refactoring.NodeMetadata,java.lang.String)>(r4, r2) 
 ; Statement: if r5 != null goto r10 = null 
(assert (not (not (= var2949 null-var1597)))) ; Negate: Cond: r5 != null  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var3908_getJsType/2037857904=([com.google.javascript.refactoring.NodeMetadata, java.lang.String], com.google.javascript.rhino.jstype.JSType)}
; {var3010=com.google.javascript.rhino.Node, var2783=r6, var3447=com.google.javascript.refactoring.NodeMetadata, var113=r4, var1154=r0, var3424=null_type, var385=r1, var3827=r2, var1757=r3, var1597=com.google.javascript.rhino.jstype.JSType, var3908=com.google.javascript.refactoring.Matchers, var2949=r5}
; {com.google.javascript.rhino.Node=var3010, r6=var2783, com.google.javascript.refactoring.NodeMetadata=var3447, r4=var113, r0=var1154, null_type=var3424, r1=var385, r2=var3827, r3=var1757, com.google.javascript.rhino.jstype.JSType=var1597, com.google.javascript.refactoring.Matchers=var3908, r5=var2949}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @parameter0: com.google.javascript.rhino.Node;	r4 := @parameter1: com.google.javascript.refactoring.NodeMetadata;	r0 := @parameter2: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(".prototype.");	r2 = r1[0];	r3 = r1[1];	r5 = staticinvoke <com.google.javascript.refactoring.Matchers: com.google.javascript.rhino.jstype.JSType getJsType(com.google.javascript.refactoring.NodeMetadata,java.lang.String)>(r4, r2);	if r5 != null goto r10 = null;	return 0
;block_num 2