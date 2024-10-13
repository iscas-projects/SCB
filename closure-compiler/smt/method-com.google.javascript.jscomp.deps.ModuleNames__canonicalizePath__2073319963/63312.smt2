(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var2684 0)
(declare-sort var1964 0)
(declare-sort var2911 0)
(declare-sort var266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var266_copyOf/-1140654950 ((Array Int var2911) Int) (Array Int var2911))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2911__ ((Array Int String)) (Array Int var2911))
(declare-fun join/623417183 (var2684 (Array Int var2911)) String)
(declare-const null-String String)
(declare-const var1964-MODULE_JOINER var2684)
(declare-const var2776 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2776 null-String)))
(assert true)
(define-const var2961 (Array Int String) (split/-636890950 var2776 "/")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2776 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
(define-const var2181 Int (getLength-Arr-String-1 var2961)) ; Statement: $i0 = lengthof r1 
(define-const var812 (Array Int String) arr-String-init) ; Statement: r2 = newarray (java.lang.String)[$i0] 
(define-const var1696 Int 0) ; Statement: i3 = 0 
(define-const var1326 Int 0) ; Statement: i4 = 0 
(define-const var2500 Int (getLength-Arr-String-1 var2961)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 <= 1 goto $z6 = 0 
(assert (<= var2500 1)) ; Cond: $i1 <= 1 
(define-const var1112 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(define-const var1959 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(define-const var3081 Bool var1959) ; Statement: z0 = $z5 
 ; Statement: if $z6 == 0 goto $i2 = lengthof r1 
(assert (= (ite var1112 1 0) 0)) ; Cond: $z6 == 0 
(define-const var3132 Int (getLength-Arr-String-1 var2961)) ; Statement: $i2 = lengthof r1 
(define-const var3242 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= $i2 goto (branch) 
(assert (>= var3242 var3132)) ; Cond: i5 >= $i2 
 ; Statement: if z0 == 0 goto $r3 = <com.google.javascript.jscomp.deps.ModuleNames: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner MODULE_JOINER> 
(assert (= (ite var3081 1 0) 0)) ; Cond: z0 == 0 
(define-const var1461 var2684 var1964-MODULE_JOINER) ; Statement: $r3 = <com.google.javascript.jscomp.deps.ModuleNames: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner MODULE_JOINER> 
(define-const var2062 (Array Int var2911) (var266_copyOf/-1140654950 (cast-from-__Array__Int__String__-to-__Array__Int__var2911__ var812) var1696)) ; Statement: $r4 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>(r2, i3) 
(assert true)
(define-const var2401 String (join/623417183 var1461 var2062)) ; Statement: $r5 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Object[])>($r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), arr-String-init=([], java.lang.String[]), var266_copyOf/-1140654950=([java.lang.Object[], int], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var2911__=([java.lang.String[]], java.lang.Object[]), join/623417183=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.Object[]], java.lang.String)}
; {var2776=r0, var609=null_type, var2961=r1, var2181=$i0, var812=r2, var1696=i3, var1326=i4, var2500=$i1, var1112=$z6, var1959=$z5, var3081=z0, var3132=$i2, var3242=i5, var2684=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var1964=com.google.javascript.jscomp.deps.ModuleNames, var1461=$r3, var2911=java.lang.Object, var266=java.util.Arrays, var2062=$r4, var2401=$r5}
; {r0=var2776, null_type=var609, r1=var2961, $i0=var2181, r2=var812, i3=var1696, i4=var1326, $i1=var2500, $z6=var1112, $z5=var1959, z0=var3081, $i2=var3132, i5=var3242, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var2684, com.google.javascript.jscomp.deps.ModuleNames=var1964, $r3=var1461, java.lang.Object=var2911, java.util.Arrays=var266, $r4=var2062, $r5=var2401}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	$i0 = lengthof r1;	r2 = newarray (java.lang.String)[$i0];	i3 = 0;	i4 = 0;	$i1 = lengthof r1;	if $i1 <= 1 goto $z6 = 0;	$z6 = 0;	$z5 = 0;	z0 = $z5;	if $z6 == 0 goto $i2 = lengthof r1;	$i2 = lengthof r1;	i5 = 0;	if i5 >= $i2 goto (branch);	if z0 == 0 goto $r3 = <com.google.javascript.jscomp.deps.ModuleNames: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner MODULE_JOINER>;	$r3 = <com.google.javascript.jscomp.deps.ModuleNames: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner MODULE_JOINER>;	$r4 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>(r2, i3);	$r5 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Object[])>($r4);	return $r5
;block_num 7