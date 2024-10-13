(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/-237403920 (var1749) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1749 var1749)
(declare-const var70 var1749) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.Utf8Info 
(assert (not (= var70 null-var1749)))
(define-const var1666 String (string/-237403920 var70)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.Utf8Info: java.lang.String string> 
(assert true)
(define-const var3969 Int (hashCode/-467973558 var1666)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {string/-237403920=([org.apache.ibatis.javassist.bytecode.Utf8Info], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1749=org.apache.ibatis.javassist.bytecode.Utf8Info, var70=r0, var1666=$r1, var3969=$i0}
; {org.apache.ibatis.javassist.bytecode.Utf8Info=var1749, r0=var70, $r1=var1666, $i0=var3969}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.Utf8Info;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.Utf8Info: java.lang.String string>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1