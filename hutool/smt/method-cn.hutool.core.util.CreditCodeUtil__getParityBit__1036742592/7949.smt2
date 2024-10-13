(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var184 0)
(declare-sort var2657 0)
(declare-sort var2228 0)
(declare-sort var1901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun var2228_valueOf/-1186540555 (Int) var2228)
(declare-fun var184_get/1088891777 (var184 var1901) var1901)
(declare-fun cast-from-var2228-to-var1901 (var2228) var1901)
(declare-fun cast-from-var1901-to-Int (var1901) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2657-CODE_INDEX_MAP var184)
(declare-const null-Int Int)
(declare-const var1019 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1019 null-String)))
(define-const var1448 Int 0) ; Statement: i5 = 0 
(define-const var3864 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= 17 goto $i0 = i5 % 31 
(assert (not (>= var3864 17))) ; Negate: Cond: i6 >= 17  
(define-const var1514 var184 var2657-CODE_INDEX_MAP) ; Statement: $r1 = <cn.hutool.core.util.CreditCodeUtil: java.util.Map CODE_INDEX_MAP> 
(define-const var2141 Int (String_charAt/1466887330 var1019 var3864)) ; Statement: $c1 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i6) 
(define-const var2961 var2228 (var2228_valueOf/-1186540555 var2141)) ; Statement: $r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1) 
(define-const var530 var1901 (var184_get/1088891777 var1514 (cast-from-var2228-to-var1901 var2961))) ; Statement: $r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var1817 Int (cast-from-var1901-to-Int var530)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if null != r4 goto $i3 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (not (= null-Int var1817)))) ; Negate: Cond: null != r4  
(define-const var929 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {String_charAt/1466887330=([java.lang.CharSequence, int], char), var2228_valueOf/-1186540555=([char], java.lang.Character), var184_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2228-to-var1901=([java.lang.Character], java.lang.Object), cast-from-var1901-to-Int=([java.lang.Object], java.lang.Integer), cast-from-Int-to-Int=([int], int)}
; {var1019=r0, var1448=i5, var3864=i6, var184=java.util.Map, var2657=cn.hutool.core.util.CreditCodeUtil, var1514=$r1, var2141=$c1, var2228=java.lang.Character, var2961=$r2, var1901=java.lang.Object, var530=$r3, var1817=r4, var929=$i10}
; {r0=var1019, i5=var1448, i6=var3864, java.util.Map=var184, cn.hutool.core.util.CreditCodeUtil=var2657, $r1=var1514, $c1=var2141, java.lang.Character=var2228, $r2=var2961, java.lang.Object=var1901, $r3=var530, r4=var1817, $i10=var929}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i5 = 0;	i6 = 0;	if i6 >= 17 goto $i0 = i5 % 31;	$r1 = <cn.hutool.core.util.CreditCodeUtil: java.util.Map CODE_INDEX_MAP>;	$c1 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(i6);	$r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1);	$r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (java.lang.Integer) $r3;	if null != r4 goto $i3 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$i10 = (int) -1;	return $i10
;block_num 4