(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2946 0)
(declare-sort var1622 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun Int_valueOf/1372619556 (String) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun generate/-610656782 (var2946 Int Int) (Array Int Int))
(declare-const null-var2946 var2946)
(declare-const null-String String)
(declare-const var2329 var2946) ; Statement: r6 := @this: jdk.nashorn.internal.codegen.ObjectClassGenerator 
(assert (not (= var2329 null-var2946)))
(declare-const var2380 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2380 null-String)))
(assert true)
(define-const var137 (Array Int String) (split/-636890950 var2380 "P")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("P") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2380 "P") i) (re.++ (re.* re.all) (str.to_re "P") (re.* re.all))))))
(define-const var2746 String (select var137 0)) ; Statement: $r2 = r1[0] 
(define-const var3795 Int (Int_valueOf/1372619556 var2746)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String)>($r2) 
(assert true)
(define-const var3215 Int (intValue/-1815674922 var3795)) ; Statement: i0 = virtualinvoke $r3.<java.lang.Integer: int intValue()>() 
(define-const var3963 Int (getLength-Arr-String-1 var137)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 != 1 goto $r4 = r1[1] 
(assert (not (= var3963 1))) ; Cond: $i1 != 1 
(define-const var2773 String (select var137 1)) ; Statement: $r4 = r1[1] 
(define-const var3996 Int (Int_valueOf/1372619556 var2773)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String)>($r4) 
(assert true)
(define-const var2882 Int (intValue/-1815674922 var3996)) ; Statement: i2 = virtualinvoke $r5.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var1818 (Array Int Int) (generate/-610656782 var2329 var3215 var2882)) ; Statement: $r7 = virtualinvoke r6.<jdk.nashorn.internal.codegen.ObjectClassGenerator: byte[] generate(int,int)>(i0, i2) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), Int_valueOf/1372619556=([java.lang.String], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), getLength-Arr-String-1=([java.lang.String[]], int), generate/-610656782=([jdk.nashorn.internal.codegen.ObjectClassGenerator, int, int], byte[])}
; {var2946=jdk.nashorn.internal.codegen.ObjectClassGenerator, var2329=r6, var2380=r0, var1622=null_type, var137=r1, var2746=$r2, var3795=$r3, var3215=i0, var3963=$i1, var2773=$r4, var3996=$r5, var2882=i2, var1818=$r7}
; {jdk.nashorn.internal.codegen.ObjectClassGenerator=var2946, r6=var2329, r0=var2380, null_type=var1622, r1=var137, $r2=var2746, $r3=var3795, i0=var3215, $i1=var3963, $r4=var2773, $r5=var3996, i2=var2882, $r7=var1818}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @this: jdk.nashorn.internal.codegen.ObjectClassGenerator;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("P");	$r2 = r1[0];	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String)>($r2);	i0 = virtualinvoke $r3.<java.lang.Integer: int intValue()>();	$i1 = lengthof r1;	if $i1 != 1 goto $r4 = r1[1];	$r4 = r1[1];	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String)>($r4);	i2 = virtualinvoke $r5.<java.lang.Integer: int intValue()>();	$r7 = virtualinvoke r6.<jdk.nashorn.internal.codegen.ObjectClassGenerator: byte[] generate(int,int)>(i0, i2);	return $r7
;block_num 2