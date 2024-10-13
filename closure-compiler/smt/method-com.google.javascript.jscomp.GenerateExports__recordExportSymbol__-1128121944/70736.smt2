(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3225 0)
(declare-sort var3380 0)
(declare-sort var2086 0)
(declare-sort var82 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun exportedVariables/1460596429 (var3225) var2086)
(declare-fun var2086_add/-1142548109 (var2086 var82) Bool)
(declare-fun cast-from-String-to-var82 (String) var82)
(declare-const null-var3225 var3225)
(declare-const null-String String)
(declare-const var3666 var3225) ; Statement: r1 := @this: com.google.javascript.jscomp.GenerateExports 
(assert (not (= var3666 null-var3225)))
(declare-const var604 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var604 null-String)))
(assert true)
(define-const var844 Int (indexOf/-1037706067 var604 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var33 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = r1.<com.google.javascript.jscomp.GenerateExports: java.util.Set exportedVariables> 
(assert (not (not (= var844 var33)))) ; Negate: Cond: i0 != $i2  
(define-const var2144 var2086 (exportedVariables/1460596429 var3666)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.GenerateExports: java.util.Set exportedVariables> 
;(assert (var2086_add/-1142548109 var2144 (cast-from-String-to-var82 var604))) ; Statement: interfaceinvoke $r4.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var2144!1 var2086)
(declare-const var604!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), exportedVariables/1460596429=([com.google.javascript.jscomp.GenerateExports], java.util.Set), var2086_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var82=([java.lang.String], java.lang.Object)}
; {var3225=com.google.javascript.jscomp.GenerateExports, var3666=r1, var604=r0, var3380=null_type, var844=i0, var33=$i2, var2086=java.util.Set, var2144=$r4, var82=java.lang.Object}
; {com.google.javascript.jscomp.GenerateExports=var3225, r1=var3666, r0=var604, null_type=var3380, i0=var844, $i2=var33, java.util.Set=var2086, $r4=var2144, java.lang.Object=var82}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.GenerateExports;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = r1.<com.google.javascript.jscomp.GenerateExports: java.util.Set exportedVariables>;	$r4 = r1.<com.google.javascript.jscomp.GenerateExports: java.util.Set exportedVariables>;	interfaceinvoke $r4.<java.util.Set: boolean add(java.lang.Object)>(r0);	goto [?= return];	return
;block_num 3