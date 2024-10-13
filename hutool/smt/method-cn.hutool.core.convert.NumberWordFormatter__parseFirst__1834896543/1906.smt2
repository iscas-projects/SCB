(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2492 0)
(declare-sort var3683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-String String)
(declare-const var3683-NUMBER (Array Int String))
(declare-const var1620 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1620 null-String)))
(define-const var1431 (Array Int String) var3683-NUMBER) ; Statement: $r1 = <cn.hutool.core.convert.NumberWordFormatter: java.lang.String[] NUMBER> 
(assert true)
(define-const var2718 Int (length/-134980193 var1620)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var726 Int (- var2718 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (>= var726 0) (>= (str.len var1620) var726))))
(define-const var11 String (substring/850833817 var1620 var726)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(define-const var3755 Int (Int_parseInt/1370970945 var11)) ; Statement: $i2 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2) 
(define-const var3146 String (select var1431 var3755)) ; Statement: $r3 = $r1[$i2] 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int)}
; {var1620=r0, var2492=null_type, var3683=cn.hutool.core.convert.NumberWordFormatter, var1431=$r1, var2718=$i0, var726=$i1, var11=$r2, var3755=$i2, var3146=$r3}
; {r0=var1620, null_type=var2492, cn.hutool.core.convert.NumberWordFormatter=var3683, $r1=var1431, $i0=var2718, $i1=var726, $r2=var11, $i2=var3755, $r3=var3146}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <cn.hutool.core.convert.NumberWordFormatter: java.lang.String[] NUMBER>;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$i2 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	$r3 = $r1[$i2];	return $r3
;block_num 1