(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1198 0)
(declare-sort var2993 0)
(declare-sort var3599 0)
(declare-sort var3106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun expression/-1772649998 (var1198) var2993)
(declare-fun getCanonicalForm/-1714059646 (var3599) String)
(declare-fun cast-from-var2993-to-var3599 (var2993) var3599)
(declare-fun var3106_FTLStringLiteralEnc/2039231916 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hasFormat/-1772649998 (var1198) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1198 var1198)
(declare-const null-Bool Bool)
(declare-const var1230 var1198) ; Statement: r1 := @this: freemarker.core.NumericalOutput 
(assert (not (= var1230 null-var1198)))
(declare-const var3643 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var3643 null-Bool)))
(declare-const var3930 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3930 null-Bool)))
(define-const var3633 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3633 "#{")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("#{") 
(declare-const var3633!1 String)
(assert (= var3633!1 "#{"))
(define-const var3216 var2993 (expression/-1772649998 var1230)) ; Statement: $r2 = r1.<freemarker.core.NumericalOutput: freemarker.core.Expression expression> 
(assert true)
(define-const var625 String (getCanonicalForm/-1714059646 (cast-from-var2993-to-var3599 var3216))) ; Statement: r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r5 = r3 
(assert (not (= (ite var3930 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1756 String (var3106_FTLStringLiteralEnc/2039231916 var625 34)) ; Statement: $r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>(r3, 34) 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3633!1 var1756)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3633!2 String)
(assert (= var3633!2 (str.++ var3633!1 var1756)))
(define-const var2209 Bool (hasFormat/-1772649998 var1230)) ; Statement: $z1 = r1.<freemarker.core.NumericalOutput: boolean hasFormat> 
 ; Statement: if $z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (= (ite var2209 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (append/672562846 var3633!2 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3633!3 String)
(assert (= var3633!3 (str.++ var3633!2 "}")))
(assert true)
(define-const var1980 String (toString/-2075883882 var3633!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), expression/-1772649998=([freemarker.core.NumericalOutput], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var2993-to-var3599=([freemarker.core.Expression], freemarker.core.TemplateObject), var3106_FTLStringLiteralEnc/2039231916=([java.lang.String, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), hasFormat/-1772649998=([freemarker.core.NumericalOutput], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1198=freemarker.core.NumericalOutput, var1230=r1, var3643=z2, var3930=z0, var3633=$r0, var2993=freemarker.core.Expression, var3216=$r2, var3599=freemarker.core.TemplateObject, var625=r3, var3106=freemarker.template.utility.StringUtil, var1756=$r5, var2209=$z1, var1980=$r4}
; {freemarker.core.NumericalOutput=var1198, r1=var1230, z2=var3643, z0=var3930, $r0=var3633, freemarker.core.Expression=var2993, $r2=var3216, freemarker.core.TemplateObject=var3599, r3=var625, freemarker.template.utility.StringUtil=var3106, $r5=var1756, $z1=var2209, $r4=var1980}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.NumericalOutput;	z2 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("#{");	$r2 = r1.<freemarker.core.NumericalOutput: freemarker.core.Expression expression>;	r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r5 = r3;	$r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>(r3, 34);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$z1 = r1.<freemarker.core.NumericalOutput: boolean hasFormat>;	if $z1 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4