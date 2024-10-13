(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var73 0)
(declare-sort var684 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun templateLoaders/-439514126 (var73) (Array Int var684))
(declare-fun getLength-Arr-var684-1 ((Array Int var684)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var73 var73)
(declare-const var876 var73) ; Statement: r1 := @this: freemarker.cache.MultiTemplateLoader 
(assert (not (= var876 null-var73)))
(define-const var2682 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2682)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2682!1 String)
(assert (= var2682!1 ""))
(assert true)
;(assert (append/672562846 var2682!1 "MultiTemplateLoader(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MultiTemplateLoader(") 
(declare-const var2682!2 String)
(assert (= var2682!2 (str.++ var2682!1 "MultiTemplateLoader(")))
(define-const var3553 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2219 (Array Int var684) (templateLoaders/-439514126 var876)) ; Statement: $r2 = r1.<freemarker.cache.MultiTemplateLoader: freemarker.cache.TemplateLoader[] templateLoaders> 
(define-const var1970 Int (getLength-Arr-var684-1 var2219)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (>= var3553 var1970)) ; Cond: i2 >= $i0 
(assert true)
;(assert (append/672562846 var2682!2 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2682!3 String)
(assert (= var2682!3 (str.++ var2682!2 ")")))
(assert true)
(define-const var1235 String (toString/-2075883882 var2682!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), templateLoaders/-439514126=([freemarker.cache.MultiTemplateLoader], freemarker.cache.TemplateLoader[]), getLength-Arr-var684-1=([freemarker.cache.TemplateLoader[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var73=freemarker.cache.MultiTemplateLoader, var876=r1, var2682=$r0, var3553=i2, var684=freemarker.cache.TemplateLoader, var2219=$r2, var1970=$i0, var1235=$r3}
; {freemarker.cache.MultiTemplateLoader=var73, r1=var876, $r0=var2682, i2=var3553, freemarker.cache.TemplateLoader=var684, $r2=var2219, $i0=var1970, $r3=var1235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.cache.MultiTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MultiTemplateLoader(");	i2 = 0;	$r2 = r1.<freemarker.cache.MultiTemplateLoader: freemarker.cache.TemplateLoader[] templateLoaders>;	$i0 = lengthof $r2;	if i2 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3