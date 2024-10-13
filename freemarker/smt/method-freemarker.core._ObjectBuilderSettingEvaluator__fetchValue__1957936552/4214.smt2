(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1615 0)
(declare-sort var326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-2081171709 (var1615) Int)
(declare-fun src/-2081171709 (var1615) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun fetchNumberLike/-1067458269 (var1615 Bool Bool) var326)
(declare-const null-var1615 var1615)
(declare-const null-Bool Bool)
(declare-const var1615-VOID var326)
(declare-const var2319 var1615) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var2319 null-var1615)))
(declare-const var3089 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3089 null-Bool)))
(declare-const var1069 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var1069 null-Bool)))
(declare-const var755 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var755 null-Bool)))
(declare-const var3362 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var3362 null-Bool)))
(define-const var3054 Int (pos/-2081171709 var2319)) ; Statement: $i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos> 
(define-const var261 String (src/-2081171709 var2319)) ; Statement: $r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src> 
(assert true)
(define-const var87 Int (length/-134980193 var261)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto (branch) 
(assert (not (>= var3054 var87))) ; Negate: Cond: $i0 >= $i1  
(assert true)
(define-const var2251 var326 (fetchNumberLike/-1067458269 var2319 (ite (= 1 1) true false) var755)) ; Statement: r18 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object fetchNumberLike(boolean,boolean)>(1, z1) 
(define-const var595 var326 var1615-VOID) ; Statement: $r5 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID> 
 ; Statement: if r18 == $r5 goto r19 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object fetchStringLiteral(boolean)>(1) 
(assert (not (= var2251 var595))) ; Negate: Cond: r18 == $r5  
 ; Statement: return r18 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], int), src/-2081171709=([freemarker.core._ObjectBuilderSettingEvaluator], java.lang.String), length/-134980193=([java.lang.String], int), fetchNumberLike/-1067458269=([freemarker.core._ObjectBuilderSettingEvaluator, boolean, boolean], java.lang.Object)}
; {var1615=freemarker.core._ObjectBuilderSettingEvaluator, var2319=r0, var3089=z0, var1069=z2, var755=z1, var3362=z3, var3054=$i0, var261=$r1, var87=$i1, var326=java.lang.Object, var2251=r18, var595=$r5}
; {freemarker.core._ObjectBuilderSettingEvaluator=var1615, r0=var2319, z0=var3089, z2=var1069, z1=var755, z3=var3362, $i0=var3054, $r1=var261, $i1=var87, java.lang.Object=var326, r18=var2251, $r5=var595}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	z0 := @parameter0: boolean;	z2 := @parameter1: boolean;	z1 := @parameter2: boolean;	z3 := @parameter3: boolean;	$i0 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: int pos>;	$r1 = r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.String src>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto (branch);	r18 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object fetchNumberLike(boolean,boolean)>(1, z1);	$r5 = <freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object VOID>;	if r18 == $r5 goto r19 = specialinvoke r0.<freemarker.core._ObjectBuilderSettingEvaluator: java.lang.Object fetchStringLiteral(boolean)>(1);	return r18
;block_num 3