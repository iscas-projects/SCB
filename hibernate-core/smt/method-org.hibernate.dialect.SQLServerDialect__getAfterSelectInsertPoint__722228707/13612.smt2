(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1645 0)
(declare-sort var2384 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2384) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-String String)
(declare-const var2384-ROOT var2384)
(declare-const var2372 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2372 null-String)))
(define-const var880 var2384 var2384-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2953 String (toLowerCase/1946809429 var2372 var880)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var734 Int (indexOf/-1209756239 var2953 "select")) ; Statement: i0 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var2039 var2384 var2384-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3351 String (toLowerCase/1946809429 var2372 var2039)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(assert true)
(define-const var3354 Int (indexOf/-1209756239 var3351 "select distinct")) ; Statement: i1 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String)>("select distinct") 
 ; Statement: if i1 != i0 goto $b3 = 6 
(assert (not (= var3354 var734))) ; Cond: i1 != i0 
(define-const var885 Int 6) ; Statement: $b3 = 6 
(assert true) ; Non Conditional
(define-const var3104 Int (+ var734 var885)) ; Statement: $i2 = i0 + $b3 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var2372=r0, var1645=null_type, var2384=java.util.Locale, var880=$r1, var2953=$r2, var734=i0, var2039=$r3, var3351=$r4, var3354=i1, var885=$b3, var3104=$i2}
; {r0=var2372, null_type=var1645, java.util.Locale=var2384, $r1=var880, $r2=var2953, i0=var734, $r3=var2039, $r4=var3351, i1=var3354, $b3=var885, $i2=var3104}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 2,"<java.lang.String: int indexOf(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	i0 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String)>("select");	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	i1 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String)>("select distinct");	if i1 != i0 goto $b3 = 6;	$b3 = 6;	$i2 = i0 + $b3;	return $i2
;block_num 3