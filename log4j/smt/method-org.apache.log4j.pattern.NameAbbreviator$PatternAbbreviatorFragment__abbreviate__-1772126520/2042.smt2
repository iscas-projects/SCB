(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-222306083 ((s String)) String s)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3529 var3529)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2657 var3529) ; Statement: r2 := @this: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment 
(assert (not (= var2657 null-var3529)))
(declare-const var1864 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1864 null-String)))
(declare-const var1139 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1139 null-Int)))
(assert true)
(define-const var584 String (toString/-222306083 var1864)) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var1924 Int (indexOf/1795197748 var584 "." var1139)) ; Statement: i8 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String,int)>(".", i0) 
(define-const var3264 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if i8 == $i10 goto return i8 
(assert (= var1924 var3264)) ; Cond: i8 == $i10 
 ; Statement: return i8 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-222306083=([java.lang.StringBuffer], java.lang.String), indexOf/1795197748=([java.lang.String, java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3529=org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment, var2657=r2, var1864=r0, var1139=i0, var584=$r1, var1924=i8, var3264=$i10}
; {org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment=var3529, r2=var2657, r0=var1864, i0=var1139, $r1=var584, i8=var1924, $i10=var3264}
;seq <java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r2 := @this: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment;	r0 := @parameter0: java.lang.StringBuffer;	i0 := @parameter1: int;	$r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.String toString()>();	i8 = virtualinvoke $r1.<java.lang.String: int indexOf(java.lang.String,int)>(".", i0);	$i10 = (int) -1;	if i8 == $i10 goto return i8;	return i8
;block_num 2