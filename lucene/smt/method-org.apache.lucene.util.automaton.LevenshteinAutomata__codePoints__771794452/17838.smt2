(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1598 0)
(declare-sort var2165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2165_codePointCount/405300210 (String Int Int) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-String String)
(declare-const var1775 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1775 null-String)))
(assert true)
(define-const var1126 Int (length/-134980193 var1775)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var865 Int (var2165_codePointCount/405300210 (cast-from-String-to-String var1775) 0 var1126)) ; Statement: i1 = staticinvoke <java.lang.Character: int codePointCount(java.lang.CharSequence,int,int)>(r0, 0, $i0) 
(define-const var2720 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[i1] 
(define-const var3602 Int 0) ; Statement: i6 = 0 
(define-const var1358 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var533 Int (length/-134980193 var1775)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i2 goto return r1 
(assert (>= var3602 var533)) ; Cond: i6 >= $i2 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2165_codePointCount/405300210=([java.lang.CharSequence, int, int], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), arr-Int-init=([], int[])}
; {var1775=r0, var1598=null_type, var1126=$i0, var2165=java.lang.Character, var865=i1, var2720=r1, var3602=i6, var1358=i7, var533=$i2}
; {r0=var1775, null_type=var1598, $i0=var1126, java.lang.Character=var2165, i1=var865, r1=var2720, i6=var3602, i7=var1358, $i2=var533}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = staticinvoke <java.lang.Character: int codePointCount(java.lang.CharSequence,int,int)>(r0, 0, $i0);	r1 = newarray (int)[i1];	i6 = 0;	i7 = 0;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i6 >= $i2 goto return r1;	return r1
;block_num 3