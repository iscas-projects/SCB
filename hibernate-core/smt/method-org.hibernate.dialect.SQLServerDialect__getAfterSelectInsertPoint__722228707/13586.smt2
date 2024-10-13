(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3203 0)
(declare-sort var3791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3791) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-String String)
(declare-const var3791-ROOT var3791)
(declare-const var94 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var94 null-String)))
(define-const var3073 var3791 var3791-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1668 String (toLowerCase/1946809429 var94 var3073)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var2106 Int (indexOf/-1209756239 var1668 "select")) ; Statement: i0 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String)>("select") 
(define-const var3578 var3791 var3791-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3774 String (toLowerCase/1946809429 var94 var3578)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(assert true)
(define-const var3559 Int (indexOf/-1209756239 var3774 "select distinct")) ; Statement: i1 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String)>("select distinct") 
 ; Statement: if i1 != i0 goto $b3 = 6 
(assert (not (not (= var3559 var2106)))) ; Negate: Cond: i1 != i0  
(define-const var59 Int 15) ; Statement: $b3 = 15 
 ; Statement: goto [?= $i2 = i0 + $b3] 
(assert true) ; Non Conditional
(define-const var17 Int (+ var2106 var59)) ; Statement: $i2 = i0 + $b3 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var94=r0, var3203=null_type, var3791=java.util.Locale, var3073=$r1, var1668=$r2, var2106=i0, var3578=$r3, var3774=$r4, var3559=i1, var59=$b3, var17=$i2}
; {r0=var94, null_type=var3203, java.util.Locale=var3791, $r1=var3073, $r2=var1668, i0=var2106, $r3=var3578, $r4=var3774, i1=var3559, $b3=var59, $i2=var17}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 2,"<java.lang.String: int indexOf(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	i0 = virtualinvoke $r2.<java.lang.String: int indexOf(java.lang.String)>("select");	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	i1 = virtualinvoke $r4.<java.lang.String: int indexOf(java.lang.String)>("select distinct");	if i1 != i0 goto $b3 = 6;	$b3 = 15;	goto [?= $i2 = i0 + $b3];	$i2 = i0 + $b3;	return $i2
;block_num 3