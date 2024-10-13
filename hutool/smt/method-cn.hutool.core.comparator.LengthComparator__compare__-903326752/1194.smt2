(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-const null-var2795 var2795)
(declare-const null-String String)
(declare-const var3126 var2795) ; Statement: r4 := @this: cn.hutool.core.comparator.LengthComparator 
(assert (not (= var3126 null-var2795)))
(declare-const var1214 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1214 null-String)))
(declare-const var946 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var946 null-String)))
(define-const var1866 Int (String_length/-667254855 var1214)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1296 Int (String_length/-667254855 var946)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var1896 Int (Int_compare/-152067297 var1866 var1296)) ; Statement: i2 = staticinvoke <java.lang.Integer: int compare(int,int)>($i1, $i0) 
 ; Statement: if 0 != i2 goto return i2 
(assert (not (= 0 var1896))) ; Cond: 0 != i2 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), Int_compare/-152067297=([int, int], int)}
; {var2795=cn.hutool.core.comparator.LengthComparator, var3126=r4, var1214=r0, var946=r1, var1866=$i1, var1296=$i0, var1896=i2}
; {cn.hutool.core.comparator.LengthComparator=var2795, r4=var3126, r0=var1214, r1=var946, $i1=var1866, $i0=var1296, i2=var1896}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 2}
;stmts r4 := @this: cn.hutool.core.comparator.LengthComparator;	r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	i2 = staticinvoke <java.lang.Integer: int compare(int,int)>($i1, $i0);	if 0 != i2 goto return i2;	return i2
;block_num 2