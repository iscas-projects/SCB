(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3739 0)
(declare-sort var3559 0)
(declare-sort var3738 0)
(declare-sort var3658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/1188424938 (var3739) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun importedTemplateNameExp/-436429926 (var3739) var3559)
(declare-fun getCanonicalForm/-1714059646 (var3738) String)
(declare-fun cast-from-var3559-to-var3738 (var3559) var3738)
(declare-fun targetNsVarName/-436429926 (var3739) String)
(declare-fun var3658_toFTLTopLevelTragetIdentifier/1974505572 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3739 var3739)
(declare-const null-Bool Bool)
(declare-const var189 var3739) ; Statement: r1 := @this: freemarker.core.LibraryLoad 
(assert (not (= var189 null-var3739)))
(declare-const var782 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var782 null-Bool)))
(define-const var2331 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2331)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2331!1 String)
(assert (= var2331!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.LibraryLoad: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var782 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1007 String (getNodeTypeSymbol/1188424938 var189)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.LibraryLoad: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var2331!1 var1007)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2331!2 String)
(assert (= var2331!2 (str.++ var2331!1 var1007)))
(assert true)
;(assert (append/-1166366385 var2331!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2331!3 String)
(assert (str.prefixof var2331!2 var2331!3))
(define-const var2927 var3559 (importedTemplateNameExp/-436429926 var189)) ; Statement: $r3 = r1.<freemarker.core.LibraryLoad: freemarker.core.Expression importedTemplateNameExp> 
(assert true)
(define-const var2151 String (getCanonicalForm/-1714059646 (cast-from-var3559-to-var3738 var2927))) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var2331!3 var2151)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2331!4 String)
(assert (= var2331!4 (str.++ var2331!3 var2151)))
(assert true)
;(assert (append/672562846 var2331!4 " as ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var2331!5 String)
(assert (= var2331!5 (str.++ var2331!4 " as ")))
(define-const var929 String (targetNsVarName/-436429926 var189)) ; Statement: $r5 = r1.<freemarker.core.LibraryLoad: java.lang.String targetNsVarName> 
(define-const var697 String (var3658_toFTLTopLevelTragetIdentifier/1974505572 var929)) ; Statement: $r6 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r5) 
(assert true)
;(assert (append/672562846 var2331!5 var697)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2331!6 String)
(assert (= var2331!6 (str.++ var2331!5 var697)))
 ; Statement: if z0 == 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var782 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1899 String (toString/-2075883882 var2331!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/1188424938=([freemarker.core.LibraryLoad], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), importedTemplateNameExp/-436429926=([freemarker.core.LibraryLoad], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3559-to-var3738=([freemarker.core.Expression], freemarker.core.TemplateObject), targetNsVarName/-436429926=([freemarker.core.LibraryLoad], java.lang.String), var3658_toFTLTopLevelTragetIdentifier/1974505572=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3739=freemarker.core.LibraryLoad, var189=r1, var782=z0, var2331=$r0, var1007=$r2, var3559=freemarker.core.Expression, var2927=$r3, var3738=freemarker.core.TemplateObject, var2151=$r4, var929=$r5, var3658=freemarker.core._CoreStringUtils, var697=$r6, var1899=$r7}
; {freemarker.core.LibraryLoad=var3739, r1=var189, z0=var782, $r0=var2331, $r2=var1007, freemarker.core.Expression=var3559, $r3=var2927, freemarker.core.TemplateObject=var3738, $r4=var2151, $r5=var929, freemarker.core._CoreStringUtils=var3658, $r6=var697, $r7=var1899}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.LibraryLoad;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.LibraryLoad: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.LibraryLoad: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<freemarker.core.LibraryLoad: freemarker.core.Expression importedTemplateNameExp>;	$r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r5 = r1.<freemarker.core.LibraryLoad: java.lang.String targetNsVarName>;	$r6 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelTragetIdentifier(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	if z0 == 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3