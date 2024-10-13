(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3281 0)
(declare-sort var3789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var3789_reverse/1559181794 ((Array Int Int)) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-String String)
(declare-const var1203 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1203 null-String)))
(define-const var1103 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var3721 (Array Int Int) (toCharArray/415275702 var1203)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var1189 (Array Int Int) (var3789_reverse/1559181794 var3721)) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.ArrayUtil: char[] reverse(char[])>($r2) 
(assert true)
;(assert (<init>/-915723298 var1103 var1189)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r3) 

(declare-const var1103!1 String)
(declare-const var1189!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), var3789_reverse/1559181794=([char[]], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var1203=r1, var3281=null_type, var1103=$r0, var3721=$r2, var3789=cn.hutool.core.util.PrimitiveArrayUtil, var1189=$r3}
; {r1=var1203, null_type=var3281, $r0=var1103, $r2=var3721, cn.hutool.core.util.PrimitiveArrayUtil=var3789, $r3=var1189}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	$r3 = staticinvoke <cn.hutool.core.util.ArrayUtil: char[] reverse(char[])>($r2);	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r3);	return $r0
;block_num 1