(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun array/-1507887373 (var2646) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var2646 var2646)
(declare-const var369 var2646) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.Source$URLData 
(assert (not (= var369 null-var2646)))
(define-const var3974 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var2072 (Array Int Int) (array/-1507887373 var369)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Source$URLData: char[] array()>() 
(assert true)
;(assert (<init>/-915723298 var3974 var2072)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var3974!1 String)
(declare-const var2072!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), array/-1507887373=([jdk.nashorn.internal.runtime.Source$URLData], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2646=jdk.nashorn.internal.runtime.Source$URLData, var369=r1, var3974=$r0, var2072=$r2}
; {jdk.nashorn.internal.runtime.Source$URLData=var2646, r1=var369, $r0=var3974, $r2=var2072}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.Source$URLData;	$r0 = new java.lang.String;	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Source$URLData: char[] array()>();	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2);	return $r0
;block_num 1