(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var415 0)
(declare-sort var400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/268366484 (var415) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var415 var415)
(declare-const null-String String)
(declare-const var3896 var415) ; Statement: r0 := @this: cn.hutool.http.useragent.UserAgentInfo 
(assert (not (= var3896 null-var415)))
(define-const var1040 String (name/268366484 var3896)) ; Statement: $r1 = r0.<cn.hutool.http.useragent.UserAgentInfo: java.lang.String name> 
 ; Statement: if $r1 != null goto $r2 = r0.<cn.hutool.http.useragent.UserAgentInfo: java.lang.String name> 
(assert (not (= var1040 null-String))) ; Cond: $r1 != null 
(define-const var3499 String (name/268366484 var3896)) ; Statement: $r2 = r0.<cn.hutool.http.useragent.UserAgentInfo: java.lang.String name> 
(assert true)
(define-const var1569 Int (hashCode/-467973558 var3499)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2434 Int (+ 31 var1569)) ; Statement: $i0 = 31 + $i1 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/268366484=([cn.hutool.http.useragent.UserAgentInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var415=cn.hutool.http.useragent.UserAgentInfo, var3896=r0, var1040=$r1, var400=null_type, var3499=$r2, var1569=$i1, var2434=$i0}
; {cn.hutool.http.useragent.UserAgentInfo=var415, r0=var3896, $r1=var1040, null_type=var400, $r2=var3499, $i1=var1569, $i0=var2434}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: cn.hutool.http.useragent.UserAgentInfo;	$r1 = r0.<cn.hutool.http.useragent.UserAgentInfo: java.lang.String name>;	if $r1 != null goto $r2 = r0.<cn.hutool.http.useragent.UserAgentInfo: java.lang.String name>;	$r2 = r0.<cn.hutool.http.useragent.UserAgentInfo: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i0 = 31 + $i1;	return $i0
;block_num 3