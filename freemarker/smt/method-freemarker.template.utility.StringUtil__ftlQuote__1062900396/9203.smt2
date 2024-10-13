(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1852 0)
(declare-sort var1458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1458_FTLStringLiteralEnc/1702642216 (String Int Bool) String)
(declare-const null-String String)
(declare-const var484 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var484 null-String)))
(assert true)
(define-const var1822 Int (indexOf/-1037706067 var484 34)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34) 
(define-const var1246 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 == $i4 goto c2 = 34 
(assert (= var1822 var1246)) ; Cond: $i0 == $i4 
(define-const var39 Int 34) ; Statement: c2 = 34 
(assert true) ; Non Conditional
(define-const var2505 String (var1458_FTLStringLiteralEnc/1702642216 var484 var39 (ite (= 1 1) true false))) ; Statement: $r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char,boolean)>(r0, c2, 1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var1458_FTLStringLiteralEnc/1702642216=([java.lang.String, char, boolean], java.lang.String)}
; {var484=r0, var1852=null_type, var1822=$i0, var1246=$i4, var39=c2, var1458=freemarker.template.utility.StringUtil, var2505=$r1}
; {r0=var484, null_type=var1852, $i0=var1822, $i4=var1246, c2=var39, freemarker.template.utility.StringUtil=var1458, $r1=var2505}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(34);	$i4 = (int) -1;	if $i0 == $i4 goto c2 = 34;	c2 = 34;	$r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char,boolean)>(r0, c2, 1);	return $r1
;block_num 3