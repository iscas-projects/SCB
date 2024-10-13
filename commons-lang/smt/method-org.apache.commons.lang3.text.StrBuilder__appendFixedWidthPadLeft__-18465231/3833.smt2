(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var284 0)
(declare-sort var3384 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun appendFixedWidthPadLeft/58772405 (var284 var3384 Int Int) var284)
(declare-fun cast-from-String-to-var3384 (String) var3384)
(declare-const null-var284 var284)
(declare-const null-Int Int)
(declare-const var20 var284) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var20 null-var284)))
(declare-const var1726 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1726 null-Int)))
(declare-const var3945 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3945 null-Int)))
(declare-const var283 Int) ; Statement: c2 := @parameter2: char 
(assert (not (= var283 null-Int)))
(define-const var1017 String (String_valueOf/1240665136 var1726)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
(define-const var315 var284 (appendFixedWidthPadLeft/58772405 var20 (cast-from-String-to-var3384 var1017) var3945 var283)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder appendFixedWidthPadLeft(java.lang.Object,int,char)>($r1, i1, c2) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), appendFixedWidthPadLeft/58772405=([org.apache.commons.lang3.text.StrBuilder, java.lang.Object, int, char], org.apache.commons.lang3.text.StrBuilder), cast-from-String-to-var3384=([java.lang.String], java.lang.Object)}
; {var284=org.apache.commons.lang3.text.StrBuilder, var20=r0, var1726=i0, var3945=i1, var283=c2, var1017=$r1, var3384=java.lang.Object, var315=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var284, r0=var20, i0=var1726, i1=var3945, c2=var283, $r1=var1017, java.lang.Object=var3384, $r2=var315}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	c2 := @parameter2: char;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder appendFixedWidthPadLeft(java.lang.Object,int,char)>($r1, i1, c2);	return $r2
;block_num 1