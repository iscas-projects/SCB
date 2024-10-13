(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var956 0)
(declare-sort var2364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun appendFixedWidthPadRight/-2128297344 (var956 var2364 Int Int) var956)
(declare-fun cast-from-String-to-var2364 (String) var2364)
(declare-const null-var956 var956)
(declare-const null-Int Int)
(declare-const var2067 var956) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2067 null-var956)))
(declare-const var3701 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3701 null-Int)))
(declare-const var3939 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3939 null-Int)))
(declare-const var3933 Int) ; Statement: c2 := @parameter2: char 
(assert (not (= var3933 null-Int)))
(define-const var2611 String (String_valueOf/1240665136 var3701)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
(define-const var1662 var956 (appendFixedWidthPadRight/-2128297344 var2067 (cast-from-String-to-var2364 var2611) var3939 var3933)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder appendFixedWidthPadRight(java.lang.Object,int,char)>($r1, i1, c2) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), appendFixedWidthPadRight/-2128297344=([org.apache.commons.lang3.text.StrBuilder, java.lang.Object, int, char], org.apache.commons.lang3.text.StrBuilder), cast-from-String-to-var2364=([java.lang.String], java.lang.Object)}
; {var956=org.apache.commons.lang3.text.StrBuilder, var2067=r0, var3701=i0, var3939=i1, var3933=c2, var2611=$r1, var2364=java.lang.Object, var1662=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var956, r0=var2067, i0=var3701, i1=var3939, c2=var3933, $r1=var2611, java.lang.Object=var2364, $r2=var1662}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	c2 := @parameter2: char;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder appendFixedWidthPadRight(java.lang.Object,int,char)>($r1, i1, c2);	return $r2
;block_num 1