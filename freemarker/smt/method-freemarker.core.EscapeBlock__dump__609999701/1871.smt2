(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var105 0)
(declare-sort var3728 0)
(declare-sort var1129 0)
(declare-sort var874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/1502415423 (var105) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun variable/222334949 (var105) String)
(declare-fun var3728_toFTLTopLevelIdentifierReference/76805794 (String) String)
(declare-fun expr/222334949 (var105) var1129)
(declare-fun getCanonicalForm/-1714059646 (var874) String)
(declare-fun cast-from-var1129-to-var874 (var1129) var874)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var105 var105)
(declare-const null-Bool Bool)
(declare-const var1123 var105) ; Statement: r1 := @this: freemarker.core.EscapeBlock 
(assert (not (= var1123 null-var105)))
(declare-const var1877 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1877 null-Bool)))
(define-const var3503 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3503)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3503!1 String)
(assert (= var3503!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.EscapeBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var1877 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var876 String (getNodeTypeSymbol/1502415423 var1123)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.EscapeBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
(define-const var1510 String (append/672562846 var3503!1 var876)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3503!2 String)
(assert (= var3503!2 (str.++ var3503!1 var876)))
(assert true)
(define-const var2342 String (append/-1166366385 var1510 32)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1510!1 String)
(assert (str.prefixof var1510 var1510!1))
(define-const var1789 String (variable/222334949 var1123)) ; Statement: $r4 = r1.<freemarker.core.EscapeBlock: java.lang.String variable> 
(define-const var3040 String (var3728_toFTLTopLevelIdentifierReference/76805794 var1789)) ; Statement: $r5 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelIdentifierReference(java.lang.String)>($r4) 
(assert true)
(define-const var2186 String (append/672562846 var2342 var3040)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2342!1 String)
(assert (= var2342!1 (str.++ var2342 var3040)))
(assert true)
(define-const var3383 String (append/672562846 var2186 " as ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var2186!1 String)
(assert (= var2186!1 (str.++ var2186 " as ")))
(define-const var3078 var1129 (expr/222334949 var1123)) ; Statement: $r8 = r1.<freemarker.core.EscapeBlock: freemarker.core.Expression expr> 
(assert true)
(define-const var2762 String (getCanonicalForm/-1714059646 (cast-from-var1129-to-var874 var3078))) ; Statement: $r9 = virtualinvoke $r8.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var3383 var2762)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3383!1 String)
(assert (= var3383!1 (str.++ var3383 var2762)))
 ; Statement: if z0 == 0 goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1877 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3863 String (toString/-2075883882 var3503!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/1502415423=([freemarker.core.EscapeBlock], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), variable/222334949=([freemarker.core.EscapeBlock], java.lang.String), var3728_toFTLTopLevelIdentifierReference/76805794=([java.lang.String], java.lang.String), expr/222334949=([freemarker.core.EscapeBlock], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1129-to-var874=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var105=freemarker.core.EscapeBlock, var1123=r1, var1877=z0, var3503=$r0, var876=$r2, var1510=$r3, var2342=$r6, var1789=$r4, var3728=freemarker.core._CoreStringUtils, var3040=$r5, var2186=$r7, var3383=$r10, var1129=freemarker.core.Expression, var3078=$r8, var874=freemarker.core.TemplateObject, var2762=$r9, var3863=$r11}
; {freemarker.core.EscapeBlock=var105, r1=var1123, z0=var1877, $r0=var3503, $r2=var876, $r3=var1510, $r6=var2342, $r4=var1789, freemarker.core._CoreStringUtils=var3728, $r5=var3040, $r7=var2186, $r10=var3383, freemarker.core.Expression=var1129, $r8=var3078, freemarker.core.TemplateObject=var874, $r9=var2762, $r11=var3863}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.EscapeBlock;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.EscapeBlock: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.EscapeBlock: java.lang.String getNodeTypeSymbol()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = r1.<freemarker.core.EscapeBlock: java.lang.String variable>;	$r5 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelIdentifierReference(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r8 = r1.<freemarker.core.EscapeBlock: freemarker.core.Expression expr>;	$r9 = virtualinvoke $r8.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z0 == 0 goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3