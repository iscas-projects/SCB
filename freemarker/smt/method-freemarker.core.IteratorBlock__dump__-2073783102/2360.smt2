(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var753 0)
(declare-sort var2857 0)
(declare-sort var1349 0)
(declare-sort var3465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/2054045164 (var753) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun forEach/-1640857128 (var753) Bool)
(declare-fun loopVar1Name/-1640857128 (var753) String)
(declare-fun var2857_toFTLTopLevelIdentifierReference/76805794 (String) String)
(declare-fun listedExp/-1640857128 (var753) var1349)
(declare-fun getCanonicalForm/-1714059646 (var3465) String)
(declare-fun cast-from-var1349-to-var3465 (var1349) var3465)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var753 var753)
(declare-const null-Bool Bool)
(declare-const var96 var753) ; Statement: r1 := @this: freemarker.core.IteratorBlock 
(assert (not (= var96 null-var753)))
(declare-const var649 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var649 null-Bool)))
(define-const var135 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var135)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var135!1 String)
(assert (= var135!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.IteratorBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var649 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var993 String (getNodeTypeSymbol/2054045164 var96)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.IteratorBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var135!1 var993)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var135!2 String)
(assert (= var135!2 (str.++ var135!1 var993)))
(assert true)
;(assert (append/-1166366385 var135!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var135!3 String)
(assert (str.prefixof var135!2 var135!3))
(define-const var3194 Bool (forEach/-1640857128 var96)) ; Statement: $z1 = r1.<freemarker.core.IteratorBlock: boolean forEach> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<freemarker.core.IteratorBlock: freemarker.core.Expression listedExp> 
(assert (not (= (ite var3194 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var291 String (loopVar1Name/-1640857128 var96)) ; Statement: $r14 = r1.<freemarker.core.IteratorBlock: java.lang.String loopVar1Name> 
(define-const var3560 String (var2857_toFTLTopLevelIdentifierReference/76805794 var291)) ; Statement: $r15 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelIdentifierReference(java.lang.String)>($r14) 
(assert true)
;(assert (append/672562846 var135!3 var3560)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var135!4 String)
(assert (= var135!4 (str.++ var135!3 var3560)))
(assert true)
;(assert (append/672562846 var135!4 " in ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var135!5 String)
(assert (= var135!5 (str.++ var135!4 " in ")))
(define-const var3009 var1349 (listedExp/-1640857128 var96)) ; Statement: $r16 = r1.<freemarker.core.IteratorBlock: freemarker.core.Expression listedExp> 
(assert true)
(define-const var724 String (getCanonicalForm/-1714059646 (cast-from-var1349-to-var3465 var3009))) ; Statement: $r17 = virtualinvoke $r16.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var135!5 var724)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var135!6 String)
(assert (= var135!6 (str.++ var135!5 var724)))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var649 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1419 String (toString/-2075883882 var135!6)) ; Statement: $r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/2054045164=([freemarker.core.IteratorBlock], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), forEach/-1640857128=([freemarker.core.IteratorBlock], boolean), loopVar1Name/-1640857128=([freemarker.core.IteratorBlock], java.lang.String), var2857_toFTLTopLevelIdentifierReference/76805794=([java.lang.String], java.lang.String), listedExp/-1640857128=([freemarker.core.IteratorBlock], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1349-to-var3465=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var753=freemarker.core.IteratorBlock, var96=r1, var649=z0, var135=$r0, var993=$r2, var3194=$z1, var291=$r14, var2857=freemarker.core._CoreStringUtils, var3560=$r15, var1349=freemarker.core.Expression, var3009=$r16, var3465=freemarker.core.TemplateObject, var724=$r17, var1419=$r18}
; {freemarker.core.IteratorBlock=var753, r1=var96, z0=var649, $r0=var135, $r2=var993, $z1=var3194, $r14=var291, freemarker.core._CoreStringUtils=var2857, $r15=var3560, freemarker.core.Expression=var1349, $r16=var3009, freemarker.core.TemplateObject=var3465, $r17=var724, $r18=var1419}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.IteratorBlock;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.IteratorBlock: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.IteratorBlock: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$z1 = r1.<freemarker.core.IteratorBlock: boolean forEach>;	if $z1 == 0 goto $r3 = r1.<freemarker.core.IteratorBlock: freemarker.core.Expression listedExp>;	$r14 = r1.<freemarker.core.IteratorBlock: java.lang.String loopVar1Name>;	$r15 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelIdentifierReference(java.lang.String)>($r14);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r16 = r1.<freemarker.core.IteratorBlock: freemarker.core.Expression listedExp>;	$r17 = virtualinvoke $r16.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	goto [?= (branch)];	if z0 == 0 goto $r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 5