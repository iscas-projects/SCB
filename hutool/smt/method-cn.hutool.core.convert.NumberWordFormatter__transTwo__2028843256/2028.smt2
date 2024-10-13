(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1997 0)
(declare-sort var3859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3859_parseFirst/1834896543 (String) String)
(declare-const null-String String)
(declare-const var236 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var236 null-String)))
(assert true)
(define-const var3638 Int (length/-134980193 var236)) ; Statement: $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 2 goto $i1 = virtualinvoke r9.<java.lang.String: int length()>() 
(assert (<= var3638 2)) ; Cond: $i0 <= 2 
(assert true)
(define-const var2274 Int (length/-134980193 var236)) ; Statement: $i1 = virtualinvoke r9.<java.lang.String: int length()>() 
 ; Statement: if $i1 >= 2 goto $z2 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("0") 
(assert (>= var2274 2)) ; Cond: $i1 >= 2 
(assert true)
(define-const var2102 Bool (startsWith/-1785782452 var236 "0")) ; Statement: $z2 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("0") 
 ; Statement: if $z2 == 0 goto $z0 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("1") 
(assert (not (= (ite var2102 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2503 String (var3859_parseFirst/1834896543 var236)) ; Statement: r10 = staticinvoke <cn.hutool.core.convert.NumberWordFormatter: java.lang.String parseFirst(java.lang.String)>(r9) 
 ; Statement: goto [?= return r10] 
(assert true) ; Non Conditional
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3859_parseFirst/1834896543=([java.lang.String], java.lang.String)}
; {var236=r9, var1997=null_type, var3638=$i0, var2274=$i1, var2102=$z2, var3859=cn.hutool.core.convert.NumberWordFormatter, var2503=r10}
; {r9=var236, null_type=var1997, $i0=var3638, $i1=var2274, $z2=var2102, cn.hutool.core.convert.NumberWordFormatter=var3859, r10=var2503}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r9 := @parameter0: java.lang.String;	$i0 = virtualinvoke r9.<java.lang.String: int length()>();	if $i0 <= 2 goto $i1 = virtualinvoke r9.<java.lang.String: int length()>();	$i1 = virtualinvoke r9.<java.lang.String: int length()>();	if $i1 >= 2 goto $z2 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("0");	$z2 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("0");	if $z2 == 0 goto $z0 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("1");	r10 = staticinvoke <cn.hutool.core.convert.NumberWordFormatter: java.lang.String parseFirst(java.lang.String)>(r9);	goto [?= return r10];	return r10
;block_num 5