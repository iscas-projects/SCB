(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isLive/469812228 (var961) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toStringNext/-629380429 (var961 String Bool) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var961 var961)
(declare-const null-String String)
(declare-const var2336 var961) ; Statement: r0 := @this: jdk.nashorn.internal.ir.LocalVariableConversion 
(assert (not (= var2336 null-var961)))
(declare-const var1496 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1496 null-String)))
(assert true)
(define-const var740 Bool (isLive/469812228 var2336)) ; Statement: $z0 = virtualinvoke r0.<jdk.nashorn.internal.ir.LocalVariableConversion: boolean isLive()>() 
 ; Statement: if $z0 == 0 goto $r1 = r0.<jdk.nashorn.internal.ir.LocalVariableConversion: jdk.nashorn.internal.ir.LocalVariableConversion next> 
(assert (not (= (ite var740 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var126 String (append/-1166366385 var1496 10214)) ; Statement: $r4 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10214) 
(declare-const var1496!1 String)
(assert (str.prefixof var1496 var1496!1))
(assert true)
(define-const var3369 String (toStringNext/-629380429 var2336 var126 (ite (= 1 1) true false))) ; Statement: $r5 = specialinvoke r0.<jdk.nashorn.internal.ir.LocalVariableConversion: java.lang.StringBuilder toStringNext(java.lang.StringBuilder,boolean)>($r4, 1) 
(assert true)
(define-const var734 String (append/672562846 var3369 "\u27e7 ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u27e7 ") 
(declare-const var3369!1 String)
(assert (= var3369!1 (str.++ var3369 "\u27e7 ")))
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isLive/469812228=([jdk.nashorn.internal.ir.LocalVariableConversion], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toStringNext/-629380429=([jdk.nashorn.internal.ir.LocalVariableConversion, java.lang.StringBuilder, boolean], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var961=jdk.nashorn.internal.ir.LocalVariableConversion, var2336=r0, var1496=r2, var740=$z0, var126=$r4, var3369=$r5, var734=$r6}
; {jdk.nashorn.internal.ir.LocalVariableConversion=var961, r0=var2336, r2=var1496, $z0=var740, $r4=var126, $r5=var3369, $r6=var734}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<jdk.nashorn.internal.ir.LocalVariableConversion: java.lang.StringBuilder toStringNext(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.LocalVariableConversion;	r2 := @parameter0: java.lang.StringBuilder;	$z0 = virtualinvoke r0.<jdk.nashorn.internal.ir.LocalVariableConversion: boolean isLive()>();	if $z0 == 0 goto $r1 = r0.<jdk.nashorn.internal.ir.LocalVariableConversion: jdk.nashorn.internal.ir.LocalVariableConversion next>;	$r4 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10214);	$r5 = specialinvoke r0.<jdk.nashorn.internal.ir.LocalVariableConversion: java.lang.StringBuilder toStringNext(java.lang.StringBuilder,boolean)>($r4, 1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u27e7 ");	return $r6
;block_num 2