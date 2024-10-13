(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun append/1659648310 (var1058 String) var1058)
(declare-const null-var1058 var1058)
(declare-const null-Int Int)
(declare-const var952 var1058) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var952 null-var1058)))
(declare-const var3125 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3125 null-Int)))
(define-const var251 String (String_valueOf/-107395227 var3125)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
(assert true)
(define-const var2114 var1058 (append/1659648310 var952 var251)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-107395227=([long], java.lang.String), append/1659648310=([org.apache.commons.lang3.text.StrBuilder, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var1058=org.apache.commons.lang3.text.StrBuilder, var952=r0, var3125=l0, var251=$r1, var2114=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var1058, r0=var952, l0=var3125, $r1=var251, $r2=var2114}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	l0 := @parameter0: long;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r1);	return $r2
;block_num 1