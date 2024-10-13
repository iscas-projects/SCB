(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3723 0)
(declare-sort var1584 0)
(declare-sort var3395 0)
(declare-sort var1285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-1224430012 (var3723) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun transformExpression/-440324472 (var3723) var1584)
(declare-fun append/-1031950772 (String var3395) String)
(declare-fun cast-from-var1584-to-var3395 (var1584) var3395)
(declare-fun namedArgs/-440324472 (var3723) var1285)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3723 var3723)
(declare-const null-Bool Bool)
(declare-const null-var1285 var1285)
(declare-const var2812 var3723) ; Statement: r1 := @this: freemarker.core.TransformBlock 
(assert (not (= var2812 null-var3723)))
(declare-const var3175 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3175 null-Bool)))
(define-const var3419 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3419)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3419!1 String)
(assert (= var3419!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.TransformBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var3175 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1845 String (getNodeTypeSymbol/-1224430012 var2812)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.TransformBlock: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var3419!1 var1845)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3419!2 String)
(assert (= var3419!2 (str.++ var3419!1 var1845)))
(assert true)
;(assert (append/-1166366385 var3419!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3419!3 String)
(assert (str.prefixof var3419!2 var3419!3))
(define-const var828 var1584 (transformExpression/-440324472 var2812)) ; Statement: $r3 = r1.<freemarker.core.TransformBlock: freemarker.core.Expression transformExpression> 
(assert true)
;(assert (append/-1031950772 var3419!3 (cast-from-var1584-to-var3395 var828))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3419!4 String)
(assert (str.prefixof var3419!3 var3419!4))
(define-const var77 var1285 (namedArgs/-440324472 var2812)) ; Statement: $r4 = r1.<freemarker.core.TransformBlock: java.util.Map namedArgs> 
 ; Statement: if $r4 == null goto (branch) 
(assert (= var77 null-var1285)) ; Cond: $r4 == null 
 ; Statement: if z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3175 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2409 String (toString/-2075883882 var3419!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-1224430012=([freemarker.core.TransformBlock], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), transformExpression/-440324472=([freemarker.core.TransformBlock], freemarker.core.Expression), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1584-to-var3395=([freemarker.core.Expression], java.lang.Object), namedArgs/-440324472=([freemarker.core.TransformBlock], java.util.Map), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3723=freemarker.core.TransformBlock, var2812=r1, var3175=z0, var3419=$r0, var1845=$r2, var1584=freemarker.core.Expression, var828=$r3, var3395=java.lang.Object, var1285=java.util.Map, var77=$r4, var2409=$r5}
; {freemarker.core.TransformBlock=var3723, r1=var2812, z0=var3175, $r0=var3419, $r2=var1845, freemarker.core.Expression=var1584, $r3=var828, java.lang.Object=var3395, java.util.Map=var1285, $r4=var77, $r5=var2409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.TransformBlock;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.TransformBlock: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.TransformBlock: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = r1.<freemarker.core.TransformBlock: freemarker.core.Expression transformExpression>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r4 = r1.<freemarker.core.TransformBlock: java.util.Map namedArgs>;	if $r4 == null goto (branch);	if z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4