(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var91 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun stackSize/-769935531 (var91) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var91 var91)
(declare-const null-Bool Bool)
(declare-const var3324 var91) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var3324 null-var91)))
(declare-const var816 Bool) ; Statement: z4 := @parameter0: boolean 
(assert (not (= var816 null-Bool)))
(define-const var2910 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2910)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2910!1 String)
(assert (= var2910!1 ""))
(assert true)
(define-const var3987 String (append/-1166366385 var2910!1 36)) ; Statement: r1 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36) 
(declare-const var2910!2 String)
(assert (str.prefixof var2910!1 var2910!2))
(define-const var3985 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var2697 Int (stackSize/-769935531 var3324)) ; Statement: $i0 = r2.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: int stackSize> 
 ; Statement: if i7 >= $i0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3985 var2697)) ; Cond: i7 >= $i0 
(assert true)
(define-const var3847 String (toString/-2075883882 var3987)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), stackSize/-769935531=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var91=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var3324=r2, var816=z4, var2910=$r19, var3987=r1, var3985=i7, var2697=$i0, var3847=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var91, r2=var3324, z4=var816, $r19=var2910, r1=var3987, i7=var3985, $i0=var2697, $r3=var3847}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	z4 := @parameter0: boolean;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);	i7 = 0;	$i0 = r2.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: int stackSize>;	if i7 >= $i0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3