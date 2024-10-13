(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2359 0)
(declare-sort var3178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3178_FTLStringLiteralEnc/1702642216 (String Int Bool) String)
(declare-const null-String String)
(declare-const var2493 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2493 null-String)))
(assert true)
(define-const var2208 Int (indexOf/-1037706067 var2493 34)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34) 
(define-const var2322 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 == $i4 goto c2 = 34 
(assert (not (= var2208 var2322))) ; Negate: Cond: $i0 == $i4  
(assert true)
(define-const var542 Int (indexOf/-1037706067 var2493 39)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39) 
(define-const var2279 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i1 != $i6 goto c2 = 34 
(assert (not (= var542 var2279))) ; Cond: $i1 != $i6 
(define-const var553 Int 34) ; Statement: c2 = 34 
(assert true) ; Non Conditional
(define-const var3453 String (var3178_FTLStringLiteralEnc/1702642216 var2493 var553 (ite (= 1 1) true false))) ; Statement: $r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char,boolean)>(r0, c2, 1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var3178_FTLStringLiteralEnc/1702642216=([java.lang.String, char, boolean], java.lang.String)}
; {var2493=r0, var2359=null_type, var2208=$i0, var2322=$i4, var542=$i1, var2279=$i6, var553=c2, var3178=freemarker.template.utility.StringUtil, var3453=$r1}
; {r0=var2493, null_type=var2359, $i0=var2208, $i4=var2322, $i1=var542, $i6=var2279, c2=var553, freemarker.template.utility.StringUtil=var3178, $r1=var3453}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34);	$i4 = (int) -1;	if $i0 == $i4 goto c2 = 34;	$i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39);	$i6 = (int) -1;	if $i1 != $i6 goto c2 = 34;	c2 = 34;	$r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char,boolean)>(r0, c2, 1);	return $r1
;block_num 4