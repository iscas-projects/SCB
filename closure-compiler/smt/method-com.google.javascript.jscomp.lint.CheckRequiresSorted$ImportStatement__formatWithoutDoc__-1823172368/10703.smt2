(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1918 0)
(declare-sort var1681 0)
(declare-sort var1470 0)
(declare-sort var852 0)
(declare-sort var1138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isStandalone/2087991809 (var1918) Bool)
(declare-fun alias/908216755 (var1918) String)
(declare-fun destructures/-251860041 (var1918) var1470)
(declare-fun primitive/-1894176760 (var1918) var852)
(declare-fun append/-1031950772 (String var1138) String)
(declare-fun cast-from-var852-to-var1138 (var852) var1138)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun namespace/-962500664 (var1918) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1918 var1918)
(declare-const null-String String)
(declare-const null-var1470 var1470)
(declare-const var2977 var1918) ; Statement: r1 := @this: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement 
(assert (not (= var2977 null-var1918)))
(define-const var1921 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1921)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1921!1 String)
(assert (= var1921!1 ""))
(assert true)
(define-const var1530 Bool (isStandalone/2087991809 var2977)) ; Statement: $z0 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: boolean isStandalone()>() 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String alias()>() 
(assert (not (= (ite var1530 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3896 String (alias/908216755 var2977)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String alias()>() 
 ; Statement: if $r2 == null goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures()>() 
(assert (= var3896 null-String)) ; Cond: $r2 == null 
(assert true)
(define-const var3306 var1470 (destructures/-251860041 var2977)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures()>() 
 ; Statement: if $r3 == null goto $z1 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: boolean isStandalone()>() 
(assert (= var3306 null-var1470)) ; Cond: $r3 == null 
(assert true)
(define-const var968 Bool (isStandalone/2087991809 var2977)) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: boolean isStandalone()>() 
 ; Statement: if $z1 != 0 goto $r4 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive()>() 
(assert (not (= (ite var968 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var2598 var852 (primitive/-1894176760 var2977)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive()>() 
(assert true)
;(assert (append/-1031950772 var1921!1 (cast-from-var852-to-var1138 var2598))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1921!2 String)
(assert (str.prefixof var1921!1 var1921!2))
(assert true)
;(assert (append/672562846 var1921!2 "(\u0027")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(\'") 
(declare-const var1921!3 String)
(assert (= var1921!3 (str.++ var1921!2 "(\u0027")))
(assert true)
(define-const var1789 String (namespace/-962500664 var2977)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String namespace()>() 
(assert true)
;(assert (append/672562846 var1921!3 var1789)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1921!4 String)
(assert (= var1921!4 (str.++ var1921!3 var1789)))
(assert true)
;(assert (append/672562846 var1921!4 "\u0027);")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\');") 
(declare-const var1921!5 String)
(assert (= var1921!5 (str.++ var1921!4 "\u0027);")))
(assert true)
(define-const var3439 String (toString/-2075883882 var1921!5)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isStandalone/2087991809=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement], boolean), alias/908216755=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement], java.lang.String), destructures/-251860041=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), primitive/-1894176760=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement], com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var852-to-var1138=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), namespace/-962500664=([com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1918=com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement, var2977=r1, var1921=$r0, var1530=$z0, var3896=$r2, var1681=null_type, var1470=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3306=$r3, var968=$z1, var852=com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive, var2598=$r4, var1138=java.lang.Object, var1789=$r5, var3439=$r6}
; {com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement=var1918, r1=var2977, $r0=var1921, $z0=var1530, $r2=var3896, null_type=var1681, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1470, $r3=var3306, $z1=var968, com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive=var852, $r4=var2598, java.lang.Object=var1138, $r5=var1789, $r6=var3439}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: boolean isStandalone()>();	if $z0 != 0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String alias()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String alias()>();	if $r2 == null goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures()>();	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList destructures()>();	if $r3 == null goto $z1 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: boolean isStandalone()>();	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: boolean isStandalone()>();	if $z1 != 0 goto $r4 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive()>();	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportPrimitive primitive()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(\'");	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.lint.CheckRequiresSorted$ImportStatement: java.lang.String namespace()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\');");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5