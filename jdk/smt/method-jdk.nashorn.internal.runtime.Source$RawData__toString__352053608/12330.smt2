(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun array/-1552343590 (var2421) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var2421 var2421)
(declare-const var3401 var2421) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.Source$RawData 
(assert (not (= var3401 null-var2421)))
(define-const var2351 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var1770 (Array Int Int) (array/-1552343590 var3401)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Source$RawData: char[] array()>() 
(assert true)
;(assert (<init>/-915723298 var2351 var1770)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var2351!1 String)
(declare-const var1770!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), array/-1552343590=([jdk.nashorn.internal.runtime.Source$RawData], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2421=jdk.nashorn.internal.runtime.Source$RawData, var3401=r1, var2351=$r0, var1770=$r2}
; {jdk.nashorn.internal.runtime.Source$RawData=var2421, r1=var3401, $r0=var2351, $r2=var1770}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.Source$RawData;	$r0 = new java.lang.String;	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Source$RawData: char[] array()>();	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2);	return $r0
;block_num 1