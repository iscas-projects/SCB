(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1285 0)
(declare-sort var2712 0)
(declare-sort var1385 0)
(declare-sort var2891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun exportedVariables/1460596429 (var1285) var1385)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1385_add/-1142548109 (var1385 var2891) Bool)
(declare-fun cast-from-String-to-var2891 (String) var2891)
(declare-const null-var1285 var1285)
(declare-const null-String String)
(declare-const var3636 var1285) ; Statement: r1 := @this: com.google.javascript.jscomp.GenerateExports 
(assert (not (= var3636 null-var1285)))
(declare-const var690 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var690 null-String)))
(assert true)
(define-const var1499 Int (indexOf/-1037706067 var690 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var1586 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = r1.<com.google.javascript.jscomp.GenerateExports: java.util.Set exportedVariables> 
(assert (not (= var1499 var1586))) ; Cond: i0 != $i2 
(define-const var660 var1385 (exportedVariables/1460596429 var3636)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.GenerateExports: java.util.Set exportedVariables> 
(assert (not (and true (and (>= 0 0) (>= (str.len var690) var1499) (>= var1499 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), exportedVariables/1460596429=([com.google.javascript.jscomp.GenerateExports], java.util.Set), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1385_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2891=([java.lang.String], java.lang.Object)}
; {var1285=com.google.javascript.jscomp.GenerateExports, var3636=r1, var690=r0, var2712=null_type, var1499=i0, var1586=$i2, var1385=java.util.Set, var660=$r2, var2544=$r3, var2891=java.lang.Object}
; {com.google.javascript.jscomp.GenerateExports=var1285, r1=var3636, r0=var690, null_type=var2712, i0=var1499, $i2=var1586, java.util.Set=var1385, $r2=var660, $r3=var2544, java.lang.Object=var2891}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.GenerateExports;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = r1.<com.google.javascript.jscomp.GenerateExports: java.util.Set exportedVariables>;	$r2 = r1.<com.google.javascript.jscomp.GenerateExports: java.util.Set exportedVariables>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>($r3);	return
;block_num 3