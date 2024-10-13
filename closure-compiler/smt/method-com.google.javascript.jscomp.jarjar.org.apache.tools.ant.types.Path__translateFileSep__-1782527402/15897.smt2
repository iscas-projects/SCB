(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charAt/-1311293464 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun setCharAt/205981514 (String Int Int) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var642-separatorChar Int)
(declare-const var3114 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3114 null-String)))
(declare-const var3333 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3333 null-Int)))
(assert true)
(define-const var1961 Int (charAt/-1311293464 var3114 var3333)) ; Statement: $c1 = virtualinvoke r0.<java.lang.StringBuffer: char charAt(int)>(i0) 
(define-const var631 Int (cast-from-Int-to-Int var1961)) ; Statement: $i4 = (int) $c1 
 ; Statement: if $i4 == 47 goto $c2 = <java.io.File: char separatorChar> 
(assert (= var631 47)) ; Cond: $i4 == 47 
(define-const var960 Int var642-separatorChar) ; Statement: $c2 = <java.io.File: char separatorChar> 
(assert true)
;(assert (setCharAt/205981514 var3114 var3333 var960)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: void setCharAt(int,char)>(i0, $c2) 

(declare-const var3114!1 String)
(declare-const var3333!1 Int)
(declare-const var960!1 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/-1311293464=([java.lang.StringBuffer, int], char), cast-from-Int-to-Int=([char], int), setCharAt/205981514=([java.lang.StringBuffer, int, char], void)}
; {var3114=r0, var3333=i0, var1961=$c1, var631=$i4, var642=java.io.File, var960=$c2}
; {r0=var3114, i0=var3333, $c1=var1961, $i4=var631, java.io.File=var642, $c2=var960}
;seq <java.lang.StringBuffer: char charAt(int)>;	<java.lang.StringBuffer: void setCharAt(int,char)>
;cnt {"<java.lang.StringBuffer: char charAt(int)>": 1,"<java.lang.StringBuffer: void setCharAt(int,char)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuffer;	i0 := @parameter1: int;	$c1 = virtualinvoke r0.<java.lang.StringBuffer: char charAt(int)>(i0);	$i4 = (int) $c1;	if $i4 == 47 goto $c2 = <java.io.File: char separatorChar>;	$c2 = <java.io.File: char separatorChar>;	virtualinvoke r0.<java.lang.StringBuffer: void setCharAt(int,char)>(i0, $c2);	return 1
;block_num 2