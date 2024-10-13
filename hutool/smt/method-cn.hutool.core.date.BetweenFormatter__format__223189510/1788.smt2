(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2858 0)
(declare-sort var99 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun betweenMs/641382809 (var2858) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var99_isEmpty/1540305040 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2858 var2858)
(declare-const var3119 var2858) ; Statement: r1 := @this: cn.hutool.core.date.BetweenFormatter 
(assert (not (= var3119 null-var2858)))
(define-const var1316 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1316)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1316!1 String)
(assert (= var1316!1 ""))
(define-const var528 Int (betweenMs/641382809 var3119)) ; Statement: $l0 = r1.<cn.hutool.core.date.BetweenFormatter: long betweenMs> 
(define-const var3847 Int (ite (> var528 0) 1 (ite (< var528 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
(define-const var1547 Int (cast-from-Int-to-Int var3847)) ; Statement: $i44 = (int) $b1 
 ; Statement: if $i44 <= 0 goto $z5 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmpty(java.lang.CharSequence)>($r31) 
(assert (<= var1547 0)) ; Cond: $i44 <= 0 
(define-const var479 Bool (var99_isEmpty/1540305040 (cast-from-String-to-String var1316!1))) ; Statement: $z5 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmpty(java.lang.CharSequence)>($r31) 
 ; Statement: if $z5 == 0 goto $r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var479 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var215 String (toString/-2075883882 var1316!1)) ; Statement: $r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), betweenMs/641382809=([cn.hutool.core.date.BetweenFormatter], long), cast-from-Int-to-Int=([byte], int), var99_isEmpty/1540305040=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2858=cn.hutool.core.date.BetweenFormatter, var3119=r1, var1316=$r31, var528=$l0, var3847=$b1, var1547=$i44, var99=cn.hutool.core.text.CharSequenceUtil, var479=$z5, var215=$r2}
; {cn.hutool.core.date.BetweenFormatter=var2858, r1=var3119, $r31=var1316, $l0=var528, $b1=var3847, $i44=var1547, cn.hutool.core.text.CharSequenceUtil=var99, $z5=var479, $r2=var215}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.date.BetweenFormatter;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$l0 = r1.<cn.hutool.core.date.BetweenFormatter: long betweenMs>;	$b1 = $l0 cmp 0L;	$i44 = (int) $b1;	if $i44 <= 0 goto $z5 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmpty(java.lang.CharSequence)>($r31);	$z5 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isEmpty(java.lang.CharSequence)>($r31);	if $z5 == 0 goto $r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3