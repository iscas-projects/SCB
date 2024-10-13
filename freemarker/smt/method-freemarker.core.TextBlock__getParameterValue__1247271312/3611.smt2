(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun text/-1810769671 (var391) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var391 var391)
(declare-const null-Int Int)
(declare-const var2224 var391) ; Statement: r1 := @this: freemarker.core.TextBlock 
(assert (not (= var2224 null-var391)))
(declare-const var78 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var78 null-Int)))
 ; Statement: if i0 == 0 goto $r0 = new java.lang.String 
(assert (= var78 0)) ; Cond: i0 == 0 
(define-const var2041 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var232 (Array Int Int) (text/-1810769671 var2224)) ; Statement: $r2 = r1.<freemarker.core.TextBlock: char[] text> 
(assert true)
;(assert (<init>/-915723298 var2041 var232)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var2041!1 String)
(declare-const var232!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), text/-1810769671=([freemarker.core.TextBlock], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var391=freemarker.core.TextBlock, var2224=r1, var78=i0, var2041=$r0, var232=$r2}
; {freemarker.core.TextBlock=var391, r1=var2224, i0=var78, $r0=var2041, $r2=var232}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @this: freemarker.core.TextBlock;	i0 := @parameter0: int;	if i0 == 0 goto $r0 = new java.lang.String;	$r0 = new java.lang.String;	$r2 = r1.<freemarker.core.TextBlock: char[] text>;	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2);	return $r0
;block_num 2