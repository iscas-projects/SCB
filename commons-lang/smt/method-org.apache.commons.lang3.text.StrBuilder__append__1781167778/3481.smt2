(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-987357574 (Float64) String)
(declare-fun append/1659648310 (var3669 String) var3669)
(declare-const null-var3669 var3669)
(declare-const null-Float64 Float64)
(declare-const var2930 var3669) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2930 null-var3669)))
(declare-const var693 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var693 null-Float64)))
(define-const var1961 String (String_valueOf/-987357574 var693)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
(assert true)
(define-const var786 var3669 (append/1659648310 var2930 var1961)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-987357574=([double], java.lang.String), append/1659648310=([org.apache.commons.lang3.text.StrBuilder, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var3669=org.apache.commons.lang3.text.StrBuilder, var2930=r0, var693=d0, var1961=$r1, var786=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var3669, r0=var2930, d0=var693, $r1=var1961, $r2=var786}
;seq <java.lang.String: java.lang.String valueOf(double)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	d0 := @parameter0: double;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r1);	return $r2
;block_num 1