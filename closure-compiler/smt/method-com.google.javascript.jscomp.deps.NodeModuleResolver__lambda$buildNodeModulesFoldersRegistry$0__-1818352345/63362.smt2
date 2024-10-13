(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-const null-String String)
(declare-const var2221 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2221 null-String)))
(declare-const var651 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var651 null-String)))
(assert true)
(define-const var1894 Int (length/-134980193 var651)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1307 Int (length/-134980193 var2221)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2322 Int (Int_compare/-152067297 var1894 var1307)) ; Statement: i2 = staticinvoke <java.lang.Integer: int compare(int,int)>($i1, $i0) 
 ; Statement: if i2 == 0 goto $i3 = virtualinvoke r1.<java.lang.String: int compareTo(java.lang.String)>(r0) 
(assert (not (= var2322 0))) ; Negate: Cond: i2 == 0  
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), Int_compare/-152067297=([int, int], int)}
; {var2221=r1, var2353=null_type, var651=r0, var1894=$i1, var1307=$i0, var2322=i2}
; {r1=var2221, null_type=var2353, r0=var651, $i1=var1894, $i0=var1307, i2=var2322}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	i2 = staticinvoke <java.lang.Integer: int compare(int,int)>($i1, $i0);	if i2 == 0 goto $i3 = virtualinvoke r1.<java.lang.String: int compareTo(java.lang.String)>(r0);	return i2
;block_num 2