(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var77 0)
(declare-sort var748 0)
(declare-sort var1547 0)
(declare-sort var3804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-273084097 (var77) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun withArgs/-1765251611 (var77) var748)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun name/-1765251611 (var77) String)
(declare-fun var1547_toFTLTopLevelTragetIdentifier/1974505572 (String) String)
(declare-fun function/-1765251611 (var77) Bool)
(declare-fun paramNames/-1765251611 (var77) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun catchAllParamName/-1765251611 (var77) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var77 var77)
(declare-const null-Bool Bool)
(declare-const null-var748 var748)
(declare-const null-String String)
(declare-const var2859 var77) ; Statement: r1 := @this: freemarker.core.Macro 
(assert (not (= var2859 null-var77)))
(declare-const var776 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var776 null-Bool)))
(define-const var250 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var250)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var250!1 String)
(assert (= var250!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Macro: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var776 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2707 String (getNodeTypeSymbol/-273084097 var2859)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.Macro: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var250!1 var2707)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var250!2 String)
(assert (= var250!2 (str.++ var250!1 var2707)))
(define-const var2489 var748 (withArgs/-1765251611 var2859)) ; Statement: $r3 = r1.<freemarker.core.Macro: freemarker.core.Macro$WithArgs withArgs> 
 ; Statement: if $r3 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= var2489 null-var748)) ; Cond: $r3 == null 
(assert true)
;(assert (append/-1166366385 var250!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var250!3 String)
(assert (str.prefixof var250!2 var250!3))
(define-const var600 String (name/-1765251611 var2859)) ; Statement: $r16 = r1.<freemarker.core.Macro: java.lang.String name> 
(define-const var2991 String (var1547_toFTLTopLevelTragetIdentifier/1974505572 var600)) ; Statement: $r17 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r16) 
(assert true)
;(assert (append/672562846 var250!3 var2991)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var250!4 String)
(assert (= var250!4 (str.++ var250!3 var2991)))
(define-const var742 Bool (function/-1765251611 var2859)) ; Statement: $z4 = r1.<freemarker.core.Macro: boolean function> 
 ; Statement: if $z4 == 0 goto $r4 = r1.<freemarker.core.Macro: java.lang.String[] paramNames> 
(assert (= (ite var742 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1974 (Array Int String) (paramNames/-1765251611 var2859)) ; Statement: $r4 = r1.<freemarker.core.Macro: java.lang.String[] paramNames> 
(define-const var481 Int (getLength-Arr-String-1 var1974)) ; Statement: $i0 = lengthof $r4 
(define-const var3020 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i0 goto $r5 = r1.<freemarker.core.Macro: java.lang.String catchAllParamName> 
(assert (>= var3020 var481)) ; Cond: i2 >= $i0 
(define-const var869 String (catchAllParamName/-1765251611 var2859)) ; Statement: $r5 = r1.<freemarker.core.Macro: java.lang.String catchAllParamName> 
 ; Statement: if $r5 == null goto $z5 = r1.<freemarker.core.Macro: boolean function> 
(assert (= var869 null-String)) ; Cond: $r5 == null 
(define-const var3882 Bool (function/-1765251611 var2859)) ; Statement: $z5 = r1.<freemarker.core.Macro: boolean function> 
 ; Statement: if $z5 == 0 goto (branch) 
(assert (= (ite var3882 1 0) 0)) ; Cond: $z5 == 0 
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var776 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3748 String (toString/-2075883882 var250!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-273084097=([freemarker.core.Macro], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), withArgs/-1765251611=([freemarker.core.Macro], freemarker.core.Macro$WithArgs), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), name/-1765251611=([freemarker.core.Macro], java.lang.String), var1547_toFTLTopLevelTragetIdentifier/1974505572=([java.lang.String], java.lang.String), function/-1765251611=([freemarker.core.Macro], boolean), paramNames/-1765251611=([freemarker.core.Macro], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), catchAllParamName/-1765251611=([freemarker.core.Macro], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var77=freemarker.core.Macro, var2859=r1, var776=z0, var250=$r0, var2707=$r2, var748=freemarker.core.Macro$WithArgs, var2489=$r3, var600=$r16, var1547=freemarker.core._CoreStringUtils, var2991=$r17, var742=$z4, var1974=$r4, var481=$i0, var3020=i2, var869=$r5, var3804=null_type, var3882=$z5, var3748=$r6}
; {freemarker.core.Macro=var77, r1=var2859, z0=var776, $r0=var250, $r2=var2707, freemarker.core.Macro$WithArgs=var748, $r3=var2489, $r16=var600, freemarker.core._CoreStringUtils=var1547, $r17=var2991, $z4=var742, $r4=var1974, $i0=var481, i2=var3020, $r5=var869, null_type=var3804, $z5=var3882, $r6=var3748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Macro;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Macro: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.Macro: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<freemarker.core.Macro: freemarker.core.Macro$WithArgs withArgs>;	if $r3 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r16 = r1.<freemarker.core.Macro: java.lang.String name>;	$r17 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r16);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$z4 = r1.<freemarker.core.Macro: boolean function>;	if $z4 == 0 goto $r4 = r1.<freemarker.core.Macro: java.lang.String[] paramNames>;	$r4 = r1.<freemarker.core.Macro: java.lang.String[] paramNames>;	$i0 = lengthof $r4;	i2 = 0;	if i2 >= $i0 goto $r5 = r1.<freemarker.core.Macro: java.lang.String catchAllParamName>;	$r5 = r1.<freemarker.core.Macro: java.lang.String catchAllParamName>;	if $r5 == null goto $z5 = r1.<freemarker.core.Macro: boolean function>;	$z5 = r1.<freemarker.core.Macro: boolean function>;	if $z5 == 0 goto (branch);	if z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 9