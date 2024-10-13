(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2642 0)
(declare-sort var3251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3251_FTLStringLiteralEnc/1702642216 (String Int Bool) String)
(declare-const null-String String)
(declare-const var870 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var870 null-String)))
(assert true)
(define-const var2110 Int (indexOf/-1037706067 var870 34)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34) 
(define-const var921 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 == $i4 goto c2 = 34 
(assert (not (= var2110 var921))) ; Negate: Cond: $i0 == $i4  
(assert true)
(define-const var2468 Int (indexOf/-1037706067 var870 39)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39) 
(define-const var1276 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i1 != $i6 goto c2 = 34 
(assert (not (not (= var2468 var1276)))) ; Negate: Cond: $i1 != $i6  
(define-const var3568 Int 39) ; Statement: c2 = 39 
 ; Statement: goto [?= $r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char,boolean)>(r0, c2, 1)] 
(assert true) ; Non Conditional
(define-const var3430 String (var3251_FTLStringLiteralEnc/1702642216 var870 var3568 (ite (= 1 1) true false))) ; Statement: $r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char,boolean)>(r0, c2, 1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var3251_FTLStringLiteralEnc/1702642216=([java.lang.String, char, boolean], java.lang.String)}
; {var870=r0, var2642=null_type, var2110=$i0, var921=$i4, var2468=$i1, var1276=$i6, var3568=c2, var3251=freemarker.template.utility.StringUtil, var3430=$r1}
; {r0=var870, null_type=var2642, $i0=var2110, $i4=var921, $i1=var2468, $i6=var1276, c2=var3568, freemarker.template.utility.StringUtil=var3251, $r1=var3430}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34);	$i4 = (int) -1;	if $i0 == $i4 goto c2 = 34;	$i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39);	$i6 = (int) -1;	if $i1 != $i6 goto c2 = 34;	c2 = 39;	goto [?= $r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char,boolean)>(r0, c2, 1)];	$r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char,boolean)>(r0, c2, 1);	return $r1
;block_num 4