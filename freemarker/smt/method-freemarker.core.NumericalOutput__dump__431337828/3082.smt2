(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2942 0)
(declare-sort var3754 0)
(declare-sort var857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun expression/-1772649998 (var2942) var3754)
(declare-fun getCanonicalForm/-1714059646 (var857) String)
(declare-fun cast-from-var3754-to-var857 (var3754) var857)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hasFormat/-1772649998 (var2942) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2942 var2942)
(declare-const null-Bool Bool)
(declare-const var1956 var2942) ; Statement: r1 := @this: freemarker.core.NumericalOutput 
(assert (not (= var1956 null-var2942)))
(declare-const var480 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var480 null-Bool)))
(declare-const var3649 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3649 null-Bool)))
(define-const var867 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var867 "#{")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("#{") 
(declare-const var867!1 String)
(assert (= var867!1 "#{"))
(define-const var2999 var3754 (expression/-1772649998 var1956)) ; Statement: $r2 = r1.<freemarker.core.NumericalOutput: freemarker.core.Expression expression> 
(assert true)
(define-const var1931 String (getCanonicalForm/-1714059646 (cast-from-var3754-to-var857 var2999))) ; Statement: r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r5 = r3 
(assert (= (ite var3649 1 0) 0)) ; Cond: z0 == 0 
(define-const var1928 String var1931) ; Statement: $r5 = r3 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var867!1 var1928)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var867!2 String)
(assert (= var867!2 (str.++ var867!1 var1928)))
(define-const var1642 Bool (hasFormat/-1772649998 var1956)) ; Statement: $z1 = r1.<freemarker.core.NumericalOutput: boolean hasFormat> 
 ; Statement: if $z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (= (ite var1642 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (append/672562846 var867!2 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var867!3 String)
(assert (= var867!3 (str.++ var867!2 "}")))
(assert true)
(define-const var3609 String (toString/-2075883882 var867!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), expression/-1772649998=([freemarker.core.NumericalOutput], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3754-to-var857=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), hasFormat/-1772649998=([freemarker.core.NumericalOutput], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2942=freemarker.core.NumericalOutput, var1956=r1, var480=z2, var3649=z0, var867=$r0, var3754=freemarker.core.Expression, var2999=$r2, var857=freemarker.core.TemplateObject, var1931=r3, var1928=$r5, var1642=$z1, var3609=$r4}
; {freemarker.core.NumericalOutput=var2942, r1=var1956, z2=var480, z0=var3649, $r0=var867, freemarker.core.Expression=var3754, $r2=var2999, freemarker.core.TemplateObject=var857, r3=var1931, $r5=var1928, $z1=var1642, $r4=var3609}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.NumericalOutput;	z2 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("#{");	$r2 = r1.<freemarker.core.NumericalOutput: freemarker.core.Expression expression>;	r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r5 = r3;	$r5 = r3;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$z1 = r1.<freemarker.core.NumericalOutput: boolean hasFormat>;	if $z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4