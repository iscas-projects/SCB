(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun count/-1034867318 (var2738) Int)
(declare-fun indexOf/-844857644 (String String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2738 var2738)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var559 var2738) ; Statement: r0 := @this: org.apache.log4j.pattern.NameAbbreviator$DropElementAbbreviator 
(assert (not (= var559 null-var2738)))
(declare-const var2171 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2171 null-Int)))
(declare-const var305 String) ; Statement: r1 := @parameter1: java.lang.StringBuffer 
(assert (not (= var305 null-String)))
(define-const var1618 Int (count/-1034867318 var559)) ; Statement: i3 = r0.<org.apache.log4j.pattern.NameAbbreviator$DropElementAbbreviator: int count> 
(assert true)
(define-const var847 Int (indexOf/-844857644 var305 "." var2171)) ; Statement: i4 = virtualinvoke r1.<java.lang.StringBuffer: int indexOf(java.lang.String,int)>(".", i0) 
(assert true) ; Non Conditional
(define-const var1398 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i4 == $i6 goto return 
(assert (= var847 var1398)) ; Cond: i4 == $i6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {count/-1034867318=([org.apache.log4j.pattern.NameAbbreviator$DropElementAbbreviator], int), indexOf/-844857644=([java.lang.StringBuffer, java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2738=org.apache.log4j.pattern.NameAbbreviator$DropElementAbbreviator, var559=r0, var2171=i0, var305=r1, var1618=i3, var847=i4, var1398=$i6}
; {org.apache.log4j.pattern.NameAbbreviator$DropElementAbbreviator=var2738, r0=var559, i0=var2171, r1=var305, i3=var1618, i4=var847, $i6=var1398}
;seq <java.lang.StringBuffer: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.StringBuffer: int indexOf(java.lang.String,int)>": 1}
;stmts r0 := @this: org.apache.log4j.pattern.NameAbbreviator$DropElementAbbreviator;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.StringBuffer;	i3 = r0.<org.apache.log4j.pattern.NameAbbreviator$DropElementAbbreviator: int count>;	i4 = virtualinvoke r1.<java.lang.StringBuffer: int indexOf(java.lang.String,int)>(".", i0);	$i6 = (int) -1;	if i4 == $i6 goto return;	return
;block_num 3