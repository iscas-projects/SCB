(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3737 0)
(declare-sort var3835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buckets/200807169 (var3737) (Array Int var3835))
(declare-fun getLength-Arr-var3835-1 ((Array Int var3835)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3737 var3737)
(declare-const var2236 var3737) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap 
(assert (not (= var2236 null-var3737)))
(define-const var567 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var567)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var567!1 String)
(assert (= var567!1 ""))
(define-const var1711 (Array Int var3835) (buckets/200807169 var2236)) ; Statement: r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap: java.util.LinkedList[] buckets> 
(define-const var572 Int (getLength-Arr-var3835-1 var1711)) ; Statement: i0 = lengthof r2 
(define-const var1181 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1181 var572)) ; Cond: i1 >= i0 
(assert true)
(define-const var3464 String (toString/-2075883882 var567!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buckets/200807169=([com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap], java.util.LinkedList[]), getLength-Arr-var3835-1=([java.util.LinkedList[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3737=com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap, var2236=r1, var567=$r0, var3835=java.util.LinkedList, var1711=r2, var572=i0, var1181=i1, var3464=$r3}
; {com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap=var3737, r1=var2236, $r0=var567, java.util.LinkedList=var3835, r2=var1711, i0=var572, i1=var1181, $r3=var3464}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = r1.<com.github.jknack.handlebars.internal.antlr.misc.FlexibleHashMap: java.util.LinkedList[] buckets>;	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3