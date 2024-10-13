(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1471 0)
(declare-sort var3270 0)
(declare-sort var2819 0)
(declare-sort var3372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3270_requireNonNull/1378936425 (var2819 String) var2819)
(declare-fun cast-from-String-to-var2819 (String) var2819)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun Float64_parseDouble/1471110886 (String) Float64)
(declare-fun var3372_getFraction/-1425131730 (Float64) var3372)
(declare-const null-String String)
(declare-const var2852 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2852 null-String)))
;(assert (var3270_requireNonNull/1378936425 (cast-from-String-to-var2819 var2852) "str")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r10, "str") 

(declare-const var2852!1 String)
(declare-const var1081 String)
(assert true)
(define-const var353 Int (indexOf/-1037706067 var2852!1 46)) ; Statement: i5 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i5 < 0 goto i6 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(32) 
(assert (not (< var353 0))) ; Negate: Cond: i5 < 0  
(define-const var3567 Float64 (Float64_parseDouble/1471110886 var2852!1)) ; Statement: $d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r10) 
(define-const var3171 var3372 (var3372_getFraction/-1425131730 var3567)) ; Statement: $r9 = staticinvoke <org.apache.commons.lang3.math.Fraction: org.apache.commons.lang3.math.Fraction getFraction(double)>($d0) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3270_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var2819=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), Float64_parseDouble/1471110886=([java.lang.String], double), var3372_getFraction/-1425131730=([double], org.apache.commons.lang3.math.Fraction)}
; {var2852=r10, var1471=null_type, var3270=java.util.Objects, var2819=java.lang.Object, var1081="str", var353=i5, var3567=$d0, var3372=org.apache.commons.lang3.math.Fraction, var3171=$r9}
; {r10=var2852, null_type=var1471, java.util.Objects=var3270, java.lang.Object=var2819, "str"=var1081, i5=var353, $d0=var3567, org.apache.commons.lang3.math.Fraction=var3372, $r9=var3171}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r10 := @parameter0: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r10, "str");	i5 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46);	if i5 < 0 goto i6 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(32);	$d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r10);	$r9 = staticinvoke <org.apache.commons.lang3.math.Fraction: org.apache.commons.lang3.math.Fraction getFraction(double)>($d0);	return $r9
;block_num 2