(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1057 0)
(declare-sort var2307 0)
(declare-sort var1847 0)
(declare-sort var697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun nameExp/-1499616663 (var1057) var2307)
(declare-fun var1847_appendExpressionAsUntearable/-1417133092 (String var2307) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun positionalArgs/-1499616663 (var1057) var697)
(declare-fun getSortedNamedArgs/-1451192309 (var1057) var697)
(declare-fun var697_size/-959786421 (var697) Int)
(declare-fun bodyParameterNames/-1499616663 (var1057) var697)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1057 var1057)
(declare-const null-Bool Bool)
(declare-const null-var697 var697)
(declare-const var2683 var1057) ; Statement: r1 := @this: freemarker.core.UnifiedCall 
(assert (not (= var2683 null-var1057)))
(declare-const var640 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var640 null-Bool)))
(define-const var3637 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3637)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3637!1 String)
(assert (= var3637!1 ""))
 ; Statement: if z0 == 0 goto virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(assert (= (ite var640 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var3637!1 64)) ; Statement: virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(declare-const var3637!2 String)
(assert (str.prefixof var3637!1 var3637!2))
(define-const var3335 var2307 (nameExp/-1499616663 var2683)) ; Statement: $r2 = r1.<freemarker.core.UnifiedCall: freemarker.core.Expression nameExp> 
;(assert (var1847_appendExpressionAsUntearable/-1417133092 var3637!2 var3335)) ; Statement: staticinvoke <freemarker.core._MessageUtil: java.lang.StringBuilder appendExpressionAsUntearable(java.lang.StringBuilder,freemarker.core.Expression)>($r32, $r2) 

(declare-const var3637!3 String)
(declare-const var3335!1 var2307)
(assert true)
(define-const var192 Int (length/-171891354 var3637!3)) ; Statement: $i0 = virtualinvoke $r32.<java.lang.StringBuilder: int length()>() 
(define-const var1848 Int (- var192 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
(define-const var1922 Int (charAt/1621160911 var3637!3 var1848)) ; Statement: $c2 = virtualinvoke $r32.<java.lang.StringBuilder: char charAt(int)>($i1) 
(define-const var3317 Int (cast-from-Int-to-Int var1922)) ; Statement: $i10 = (int) $c2 
 ; Statement: if $i10 != 41 goto $z6 = 0 
(assert (not (= var3317 41))) ; Cond: $i10 != 41 
(define-const var1842 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var3484 Bool var1842) ; Statement: z1 = $z6 
(define-const var2602 var697 (positionalArgs/-1499616663 var2683)) ; Statement: $r3 = r1.<freemarker.core.UnifiedCall: java.util.List positionalArgs> 
 ; Statement: if $r3 == null goto r30 = specialinvoke r1.<freemarker.core.UnifiedCall: java.util.List getSortedNamedArgs()>() 
(assert (= var2602 null-var697)) ; Cond: $r3 == null 
(assert true)
(define-const var1925 var697 (getSortedNamedArgs/-1451192309 var2683)) ; Statement: r30 = specialinvoke r1.<freemarker.core.UnifiedCall: java.util.List getSortedNamedArgs()>() 
(define-const var3557 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var1219 Int (var697_size/-959786421 var1925)) ; Statement: $i3 = interfaceinvoke r30.<java.util.List: int size()>() 
 ; Statement: if i8 >= $i3 goto $r4 = r1.<freemarker.core.UnifiedCall: java.util.List bodyParameterNames> 
(assert (>= var3557 var1219)) ; Cond: i8 >= $i3 
(define-const var1145 var697 (bodyParameterNames/-1499616663 var2683)) ; Statement: $r4 = r1.<freemarker.core.UnifiedCall: java.util.List bodyParameterNames> 
 ; Statement: if $r4 == null goto (branch) 
(assert (= var1145 null-var697)) ; Cond: $r4 == null 
 ; Statement: if z0 == 0 goto $r31 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var640 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3564 String (toString/-2075883882 var3637!3)) ; Statement: $r31 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), nameExp/-1499616663=([freemarker.core.UnifiedCall], freemarker.core.Expression), var1847_appendExpressionAsUntearable/-1417133092=([java.lang.StringBuilder, freemarker.core.Expression], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int), positionalArgs/-1499616663=([freemarker.core.UnifiedCall], java.util.List), getSortedNamedArgs/-1451192309=([freemarker.core.UnifiedCall], java.util.List), var697_size/-959786421=([java.util.List], int), bodyParameterNames/-1499616663=([freemarker.core.UnifiedCall], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1057=freemarker.core.UnifiedCall, var2683=r1, var640=z0, var3637=$r32, var2307=freemarker.core.Expression, var3335=$r2, var1847=freemarker.core._MessageUtil, var192=$i0, var1848=$i1, var1922=$c2, var3317=$i10, var1842=$z6, var3484=z1, var697=java.util.List, var2602=$r3, var1925=r30, var3557=i8, var1219=$i3, var1145=$r4, var3564=$r31}
; {freemarker.core.UnifiedCall=var1057, r1=var2683, z0=var640, $r32=var3637, freemarker.core.Expression=var2307, $r2=var3335, freemarker.core._MessageUtil=var1847, $i0=var192, $i1=var1848, $c2=var1922, $i10=var3317, $z6=var1842, z1=var3484, java.util.List=var697, $r3=var2602, r30=var1925, i8=var3557, $i3=var1219, $r4=var1145, $r31=var3564}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.UnifiedCall;	z0 := @parameter0: boolean;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	$r2 = r1.<freemarker.core.UnifiedCall: freemarker.core.Expression nameExp>;	staticinvoke <freemarker.core._MessageUtil: java.lang.StringBuilder appendExpressionAsUntearable(java.lang.StringBuilder,freemarker.core.Expression)>($r32, $r2);	$i0 = virtualinvoke $r32.<java.lang.StringBuilder: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke $r32.<java.lang.StringBuilder: char charAt(int)>($i1);	$i10 = (int) $c2;	if $i10 != 41 goto $z6 = 0;	$z6 = 0;	z1 = $z6;	$r3 = r1.<freemarker.core.UnifiedCall: java.util.List positionalArgs>;	if $r3 == null goto r30 = specialinvoke r1.<freemarker.core.UnifiedCall: java.util.List getSortedNamedArgs()>();	r30 = specialinvoke r1.<freemarker.core.UnifiedCall: java.util.List getSortedNamedArgs()>();	i8 = 0;	$i3 = interfaceinvoke r30.<java.util.List: int size()>();	if i8 >= $i3 goto $r4 = r1.<freemarker.core.UnifiedCall: java.util.List bodyParameterNames>;	$r4 = r1.<freemarker.core.UnifiedCall: java.util.List bodyParameterNames>;	if $r4 == null goto (branch);	if z0 == 0 goto $r31 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r31 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r31
;block_num 9