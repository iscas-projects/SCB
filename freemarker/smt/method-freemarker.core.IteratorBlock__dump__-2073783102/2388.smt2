(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3242 0)
(declare-sort var2123 0)
(declare-sort var2589 0)
(declare-sort var2780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/2054045164 (var3242) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun forEach/-1640857128 (var3242) Bool)
(declare-fun listedExp/-1640857128 (var3242) var2123)
(declare-fun getCanonicalForm/-1714059646 (var2589) String)
(declare-fun cast-from-var2123-to-var2589 (var2123) var2589)
(declare-fun loopVar1Name/-1640857128 (var3242) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3242 var3242)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var3130 var3242) ; Statement: r1 := @this: freemarker.core.IteratorBlock 
(assert (not (= var3130 null-var3242)))
(declare-const var1325 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1325 null-Bool)))
(define-const var2399 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2399)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2399!1 String)
(assert (= var2399!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.IteratorBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var1325 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3721 String (getNodeTypeSymbol/2054045164 var3130)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.IteratorBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var2399!1 var3721)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2399!2 String)
(assert (= var2399!2 (str.++ var2399!1 var3721)))
(assert true)
;(assert (append/-1166366385 var2399!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2399!3 String)
(assert (str.prefixof var2399!2 var2399!3))
(define-const var991 Bool (forEach/-1640857128 var3130)) ; Statement: $z1 = r1.<freemarker.core.IteratorBlock: boolean forEach> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<freemarker.core.IteratorBlock: freemarker.core.Expression listedExp> 
(assert (= (ite var991 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1575 var2123 (listedExp/-1640857128 var3130)) ; Statement: $r3 = r1.<freemarker.core.IteratorBlock: freemarker.core.Expression listedExp> 
(assert true)
(define-const var2558 String (getCanonicalForm/-1714059646 (cast-from-var2123-to-var2589 var1575))) ; Statement: $r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var2399!3 var2558)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2399!4 String)
(assert (= var2399!4 (str.++ var2399!3 var2558)))
(define-const var353 String (loopVar1Name/-1640857128 var3130)) ; Statement: $r5 = r1.<freemarker.core.IteratorBlock: java.lang.String loopVar1Name> 
 ; Statement: if $r5 == null goto (branch) 
(assert (= var353 null-String)) ; Cond: $r5 == null 
 ; Statement: if z0 == 0 goto $r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1325 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var575 String (toString/-2075883882 var2399!4)) ; Statement: $r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/2054045164=([freemarker.core.IteratorBlock], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), forEach/-1640857128=([freemarker.core.IteratorBlock], boolean), listedExp/-1640857128=([freemarker.core.IteratorBlock], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var2123-to-var2589=([freemarker.core.Expression], freemarker.core.TemplateObject), loopVar1Name/-1640857128=([freemarker.core.IteratorBlock], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3242=freemarker.core.IteratorBlock, var3130=r1, var1325=z0, var2399=$r0, var3721=$r2, var991=$z1, var2123=freemarker.core.Expression, var1575=$r3, var2589=freemarker.core.TemplateObject, var2558=$r4, var353=$r5, var2780=null_type, var575=$r18}
; {freemarker.core.IteratorBlock=var3242, r1=var3130, z0=var1325, $r0=var2399, $r2=var3721, $z1=var991, freemarker.core.Expression=var2123, $r3=var1575, freemarker.core.TemplateObject=var2589, $r4=var2558, $r5=var353, null_type=var2780, $r18=var575}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.IteratorBlock;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.IteratorBlock: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.IteratorBlock: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$z1 = r1.<freemarker.core.IteratorBlock: boolean forEach>;	if $z1 == 0 goto $r3 = r1.<freemarker.core.IteratorBlock: freemarker.core.Expression listedExp>;	$r3 = r1.<freemarker.core.IteratorBlock: freemarker.core.Expression listedExp>;	$r4 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = r1.<freemarker.core.IteratorBlock: java.lang.String loopVar1Name>;	if $r5 == null goto (branch);	if z0 == 0 goto $r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 5