(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3777 0)
(declare-sort var2361 0)
(declare-sort var434 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-334813 (var3777) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun includedTemplateNameExp/1222245505 (var3777) var2361)
(declare-fun getCanonicalForm/-1714059646 (var434) String)
(declare-fun cast-from-var2361-to-var434 (var2361) var434)
(declare-fun encodingExp/1222245505 (var3777) var2361)
(declare-fun parseExp/1222245505 (var3777) var2361)
(declare-fun ignoreMissingExp/1222245505 (var3777) var2361)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3777 var3777)
(declare-const null-Bool Bool)
(declare-const null-var2361 var2361)
(declare-const var210 var3777) ; Statement: r1 := @this: freemarker.core.Include 
(assert (not (= var210 null-var3777)))
(declare-const var3882 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3882 null-Bool)))
(define-const var414 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var414)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var414!1 String)
(assert (= var414!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Include: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var3882 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2334 String (getNodeTypeSymbol/-334813 var210)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.Include: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var414!1 var2334)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var414!2 String)
(assert (= var414!2 (str.++ var414!1 var2334)))
(assert true)
;(assert (append/-1166366385 var414!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var414!3 String)
(assert (str.prefixof var414!2 var414!3))
(define-const var85 var2361 (includedTemplateNameExp/1222245505 var210)) ; Statement: $r3 = r1.<freemarker.core.Include: freemarker.core.Expression includedTemplateNameExp> 
(assert true)
(define-const var3944 String (getCanonicalForm/-1714059646 (cast-from-var2361-to-var434 var85))) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var414!3 var3944)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var414!4 String)
(assert (= var414!4 (str.++ var414!3 var3944)))
(define-const var591 var2361 (encodingExp/1222245505 var210)) ; Statement: $r5 = r1.<freemarker.core.Include: freemarker.core.Expression encodingExp> 
 ; Statement: if $r5 == null goto $r6 = r1.<freemarker.core.Include: freemarker.core.Expression parseExp> 
(assert (= var591 null-var2361)) ; Cond: $r5 == null 
(define-const var1170 var2361 (parseExp/1222245505 var210)) ; Statement: $r6 = r1.<freemarker.core.Include: freemarker.core.Expression parseExp> 
 ; Statement: if $r6 == null goto $r7 = r1.<freemarker.core.Include: freemarker.core.Expression ignoreMissingExp> 
(assert (= var1170 null-var2361)) ; Cond: $r6 == null 
(define-const var499 var2361 (ignoreMissingExp/1222245505 var210)) ; Statement: $r7 = r1.<freemarker.core.Include: freemarker.core.Expression ignoreMissingExp> 
 ; Statement: if $r7 == null goto (branch) 
(assert (= var499 null-var2361)) ; Cond: $r7 == null 
 ; Statement: if z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3882 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1504 String (toString/-2075883882 var414!4)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-334813=([freemarker.core.Include], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), includedTemplateNameExp/1222245505=([freemarker.core.Include], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var2361-to-var434=([freemarker.core.Expression], freemarker.core.TemplateObject), encodingExp/1222245505=([freemarker.core.Include], freemarker.core.Expression), parseExp/1222245505=([freemarker.core.Include], freemarker.core.Expression), ignoreMissingExp/1222245505=([freemarker.core.Include], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3777=freemarker.core.Include, var210=r1, var3882=z0, var414=$r0, var2334=$r2, var2361=freemarker.core.Expression, var85=$r3, var434=freemarker.core.TemplateObject, var3944=$r4, var591=$r5, var1170=$r6, var499=$r7, var1504=$r8}
; {freemarker.core.Include=var3777, r1=var210, z0=var3882, $r0=var414, $r2=var2334, freemarker.core.Expression=var2361, $r3=var85, freemarker.core.TemplateObject=var434, $r4=var3944, $r5=var591, $r6=var1170, $r7=var499, $r8=var1504}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Include;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Include: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.Include: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<freemarker.core.Include: freemarker.core.Expression includedTemplateNameExp>;	$r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = r1.<freemarker.core.Include: freemarker.core.Expression encodingExp>;	if $r5 == null goto $r6 = r1.<freemarker.core.Include: freemarker.core.Expression parseExp>;	$r6 = r1.<freemarker.core.Include: freemarker.core.Expression parseExp>;	if $r6 == null goto $r7 = r1.<freemarker.core.Include: freemarker.core.Expression ignoreMissingExp>;	$r7 = r1.<freemarker.core.Include: freemarker.core.Expression ignoreMissingExp>;	if $r7 == null goto (branch);	if z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 6