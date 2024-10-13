(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1676 0)
(declare-sort var538 0)
(declare-sort var1282 0)
(declare-sort var1148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun nameExp/-1499616663 (var1676) var538)
(declare-fun var1282_appendExpressionAsUntearable/-1417133092 (String var538) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun positionalArgs/-1499616663 (var1676) var1148)
(declare-fun getSortedNamedArgs/-1451192309 (var1676) var1148)
(declare-fun var1148_size/-959786421 (var1148) Int)
(declare-fun bodyParameterNames/-1499616663 (var1676) var1148)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1676 var1676)
(declare-const null-Bool Bool)
(declare-const null-var1148 var1148)
(declare-const var1371 var1676) ; Statement: r1 := @this: freemarker.core.UnifiedCall 
(assert (not (= var1371 null-var1676)))
(declare-const var1914 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1914 null-Bool)))
(define-const var1080 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1080)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1080!1 String)
(assert (= var1080!1 ""))
 ; Statement: if z0 == 0 goto virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(assert (= (ite var1914 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var1080!1 64)) ; Statement: virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(declare-const var1080!2 String)
(assert (str.prefixof var1080!1 var1080!2))
(define-const var3463 var538 (nameExp/-1499616663 var1371)) ; Statement: $r2 = r1.<freemarker.core.UnifiedCall: freemarker.core.Expression nameExp> 
;(assert (var1282_appendExpressionAsUntearable/-1417133092 var1080!2 var3463)) ; Statement: staticinvoke <freemarker.core._MessageUtil: java.lang.StringBuilder appendExpressionAsUntearable(java.lang.StringBuilder,freemarker.core.Expression)>($r32, $r2) 

(declare-const var1080!3 String)
(declare-const var3463!1 var538)
(assert true)
(define-const var2557 Int (length/-171891354 var1080!3)) ; Statement: $i0 = virtualinvoke $r32.<java.lang.StringBuilder: int length()>() 
(define-const var1647 Int (- var2557 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
(define-const var2635 Int (charAt/1621160911 var1080!3 var1647)) ; Statement: $c2 = virtualinvoke $r32.<java.lang.StringBuilder: char charAt(int)>($i1) 
(define-const var3895 Int (cast-from-Int-to-Int var2635)) ; Statement: $i10 = (int) $c2 
 ; Statement: if $i10 != 41 goto $z6 = 0 
(assert (not (not (= var3895 41)))) ; Negate: Cond: $i10 != 41  
(define-const var3882 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= z1 = $z6] 
(assert true) ; Non Conditional
(define-const var123 Bool var3882) ; Statement: z1 = $z6 
(define-const var580 var1148 (positionalArgs/-1499616663 var1371)) ; Statement: $r3 = r1.<freemarker.core.UnifiedCall: java.util.List positionalArgs> 
 ; Statement: if $r3 == null goto r30 = specialinvoke r1.<freemarker.core.UnifiedCall: java.util.List getSortedNamedArgs()>() 
(assert (= var580 null-var1148)) ; Cond: $r3 == null 
(assert true)
(define-const var1360 var1148 (getSortedNamedArgs/-1451192309 var1371)) ; Statement: r30 = specialinvoke r1.<freemarker.core.UnifiedCall: java.util.List getSortedNamedArgs()>() 
(define-const var1783 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var97 Int (var1148_size/-959786421 var1360)) ; Statement: $i3 = interfaceinvoke r30.<java.util.List: int size()>() 
 ; Statement: if i8 >= $i3 goto $r4 = r1.<freemarker.core.UnifiedCall: java.util.List bodyParameterNames> 
(assert (>= var1783 var97)) ; Cond: i8 >= $i3 
(define-const var3887 var1148 (bodyParameterNames/-1499616663 var1371)) ; Statement: $r4 = r1.<freemarker.core.UnifiedCall: java.util.List bodyParameterNames> 
 ; Statement: if $r4 == null goto (branch) 
(assert (= var3887 null-var1148)) ; Cond: $r4 == null 
 ; Statement: if z0 == 0 goto $r31 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1914 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2559 String (toString/-2075883882 var1080!3)) ; Statement: $r31 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), nameExp/-1499616663=([freemarker.core.UnifiedCall], freemarker.core.Expression), var1282_appendExpressionAsUntearable/-1417133092=([java.lang.StringBuilder, freemarker.core.Expression], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int), positionalArgs/-1499616663=([freemarker.core.UnifiedCall], java.util.List), getSortedNamedArgs/-1451192309=([freemarker.core.UnifiedCall], java.util.List), var1148_size/-959786421=([java.util.List], int), bodyParameterNames/-1499616663=([freemarker.core.UnifiedCall], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1676=freemarker.core.UnifiedCall, var1371=r1, var1914=z0, var1080=$r32, var538=freemarker.core.Expression, var3463=$r2, var1282=freemarker.core._MessageUtil, var2557=$i0, var1647=$i1, var2635=$c2, var3895=$i10, var3882=$z6, var123=z1, var1148=java.util.List, var580=$r3, var1360=r30, var1783=i8, var97=$i3, var3887=$r4, var2559=$r31}
; {freemarker.core.UnifiedCall=var1676, r1=var1371, z0=var1914, $r32=var1080, freemarker.core.Expression=var538, $r2=var3463, freemarker.core._MessageUtil=var1282, $i0=var2557, $i1=var1647, $c2=var2635, $i10=var3895, $z6=var3882, z1=var123, java.util.List=var1148, $r3=var580, r30=var1360, i8=var1783, $i3=var97, $r4=var3887, $r31=var2559}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.UnifiedCall;	z0 := @parameter0: boolean;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	$r2 = r1.<freemarker.core.UnifiedCall: freemarker.core.Expression nameExp>;	staticinvoke <freemarker.core._MessageUtil: java.lang.StringBuilder appendExpressionAsUntearable(java.lang.StringBuilder,freemarker.core.Expression)>($r32, $r2);	$i0 = virtualinvoke $r32.<java.lang.StringBuilder: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke $r32.<java.lang.StringBuilder: char charAt(int)>($i1);	$i10 = (int) $c2;	if $i10 != 41 goto $z6 = 0;	$z6 = 1;	goto [?= z1 = $z6];	z1 = $z6;	$r3 = r1.<freemarker.core.UnifiedCall: java.util.List positionalArgs>;	if $r3 == null goto r30 = specialinvoke r1.<freemarker.core.UnifiedCall: java.util.List getSortedNamedArgs()>();	r30 = specialinvoke r1.<freemarker.core.UnifiedCall: java.util.List getSortedNamedArgs()>();	i8 = 0;	$i3 = interfaceinvoke r30.<java.util.List: int size()>();	if i8 >= $i3 goto $r4 = r1.<freemarker.core.UnifiedCall: java.util.List bodyParameterNames>;	$r4 = r1.<freemarker.core.UnifiedCall: java.util.List bodyParameterNames>;	if $r4 == null goto (branch);	if z0 == 0 goto $r31 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r31 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r31
;block_num 9