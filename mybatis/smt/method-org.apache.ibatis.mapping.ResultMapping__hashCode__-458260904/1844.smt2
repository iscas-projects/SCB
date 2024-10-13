(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1982 0)
(declare-sort var876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun property/-1137278833 (var1982) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1982 var1982)
(declare-const null-String String)
(declare-const var1517 var1982) ; Statement: r0 := @this: org.apache.ibatis.mapping.ResultMapping 
(assert (not (= var1517 null-var1982)))
(define-const var2582 String (property/-1137278833 var1517)) ; Statement: $r1 = r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String property> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String column> 
(assert (not (= var2582 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3827 String (property/-1137278833 var1517)) ; Statement: $r4 = r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String property> 
(assert true)
(define-const var2019 Int (hashCode/-467973558 var3827)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {property/-1137278833=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1982=org.apache.ibatis.mapping.ResultMapping, var1517=r0, var2582=$r1, var876=null_type, var3827=$r4, var2019=$i1}
; {org.apache.ibatis.mapping.ResultMapping=var1982, r0=var1517, $r1=var2582, null_type=var876, $r4=var3827, $i1=var2019}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.mapping.ResultMapping;	$r1 = r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String property>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String column>;	$r4 = r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String property>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	return $i1
;block_num 2