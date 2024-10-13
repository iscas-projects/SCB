(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3586 0)
(declare-sort var250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun Int_valueOf/1372619556 (String) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun generate/1329674095 (var3586 Int) (Array Int Int))
(declare-const null-var3586 var3586)
(declare-const null-String String)
(declare-const var1817 var3586) ; Statement: r6 := @this: jdk.nashorn.internal.codegen.ObjectClassGenerator 
(assert (not (= var1817 null-var3586)))
(declare-const var1439 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1439 null-String)))
(assert true)
(define-const var2944 (Array Int String) (split/-636890950 var1439 "P")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("P") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1439 "P") i) (re.++ (re.* re.all) (str.to_re "P") (re.* re.all))))))
(define-const var3758 String (select var2944 0)) ; Statement: $r2 = r1[0] 
(define-const var2327 Int (Int_valueOf/1372619556 var3758)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String)>($r2) 
(assert true)
(define-const var1865 Int (intValue/-1815674922 var2327)) ; Statement: i0 = virtualinvoke $r3.<java.lang.Integer: int intValue()>() 
(define-const var2198 Int (getLength-Arr-String-1 var2944)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 != 1 goto $r4 = r1[1] 
(assert (not (not (= var2198 1)))) ; Negate: Cond: $i1 != 1  
(assert true)
(define-const var1626 (Array Int Int) (generate/1329674095 var1817 var1865)) ; Statement: $r8 = virtualinvoke r6.<jdk.nashorn.internal.codegen.ObjectClassGenerator: byte[] generate(int)>(i0) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), Int_valueOf/1372619556=([java.lang.String], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), getLength-Arr-String-1=([java.lang.String[]], int), generate/1329674095=([jdk.nashorn.internal.codegen.ObjectClassGenerator, int], byte[])}
; {var3586=jdk.nashorn.internal.codegen.ObjectClassGenerator, var1817=r6, var1439=r0, var250=null_type, var2944=r1, var3758=$r2, var2327=$r3, var1865=i0, var2198=$i1, var1626=$r8}
; {jdk.nashorn.internal.codegen.ObjectClassGenerator=var3586, r6=var1817, r0=var1439, null_type=var250, r1=var2944, $r2=var3758, $r3=var2327, i0=var1865, $i1=var2198, $r8=var1626}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @this: jdk.nashorn.internal.codegen.ObjectClassGenerator;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("P");	$r2 = r1[0];	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(java.lang.String)>($r2);	i0 = virtualinvoke $r3.<java.lang.Integer: int intValue()>();	$i1 = lengthof r1;	if $i1 != 1 goto $r4 = r1[1];	$r8 = virtualinvoke r6.<jdk.nashorn.internal.codegen.ObjectClassGenerator: byte[] generate(int)>(i0);	return $r8
;block_num 2