(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2913 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2913 null-String)))
(assert true)
(define-const var1970 Int (indexOf/-1037706067 var2913 63)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(63) 
(define-const var3936 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i0 != $i9 goto $r8 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert (not (not (= var1970 var3936)))) ; Negate: Cond: $i0 != $i9  
(assert true)
(define-const var2302 Int (indexOf/-1037706067 var2913 42)) ; Statement: $i4 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(42) 
(define-const var2314 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if $i4 != $i11 goto $r8 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert (not (not (= var2302 var2314)))) ; Negate: Cond: $i4 != $i11  
(define-const var2607 (Array Int String) arr-String-init) ; Statement: $r9 = newarray (java.lang.String)[1] 
(declare-const var2607!1 (Array Int String))
(assert (not (= var2607!1 null-__Array__Int__String__)))
(assert (= (select var2607!1 0) var2913)) ; Statement: $r9[0] = r0 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), arr-String-init=([], java.lang.String[])}
; {var2913=r0, var3027=null_type, var1970=$i0, var3936=$i9, var2302=$i4, var2314=$i11, var2607=$r9}
; {r0=var2913, null_type=var3027, $i0=var1970, $i9=var3936, $i4=var2302, $i11=var2314, $r9=var2607}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(63);	$i9 = (int) -1;	if $i0 != $i9 goto $r8 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$i4 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(42);	$i11 = (int) -1;	if $i4 != $i11 goto $r8 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r9 = newarray (java.lang.String)[1];	$r9[0] = r0;	return $r9
;block_num 3