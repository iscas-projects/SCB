(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1226 0)
(declare-sort var3945 0)
(declare-sort var3315 0)
(declare-sort var11 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun target/1914504294 (var1226) var3945)
(declare-fun getCanonicalForm/-1714059646 (var3315) String)
(declare-fun cast-from-var3945-to-var3315 (var3945) var3315)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arguments/1914504294 (var1226) var11)
(declare-fun getCanonicalForm/965922612 (var11) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1226 var1226)
(declare-const var1625 var1226) ; Statement: r1 := @this: freemarker.core.MethodCall 
(assert (not (= var1625 null-var1226)))
(define-const var2823 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2823)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2823!1 String)
(assert (= var2823!1 ""))
(define-const var1542 var3945 (target/1914504294 var1625)) ; Statement: $r2 = r1.<freemarker.core.MethodCall: freemarker.core.Expression target> 
(assert true)
(define-const var3777 String (getCanonicalForm/-1714059646 (cast-from-var3945-to-var3315 var1542))) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
;(assert (append/672562846 var2823!1 var3777)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2823!2 String)
(assert (= var2823!2 (str.++ var2823!1 var3777)))
(assert true)
;(assert (append/672562846 var2823!2 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2823!3 String)
(assert (= var2823!3 (str.++ var2823!2 "(")))
(define-const var621 var11 (arguments/1914504294 var1625)) ; Statement: $r4 = r1.<freemarker.core.MethodCall: freemarker.core.ListLiteral arguments> 
(assert true)
(define-const var1624 String (getCanonicalForm/965922612 var621)) ; Statement: r5 = virtualinvoke $r4.<freemarker.core.ListLiteral: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var760 Int (length/-134980193 var1624)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var1986 Int (- var760 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var1624) var1986) (>= var1986 1))))
(define-const var2859 String (substring/-1240304868 var1624 1 var1986)) ; Statement: $r6 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(1, $i1) 
(assert true)
;(assert (append/672562846 var2823!3 var2859)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2823!4 String)
(assert (= var2823!4 (str.++ var2823!3 var2859)))
(assert true)
;(assert (append/672562846 var2823!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2823!5 String)
(assert (= var2823!5 (str.++ var2823!4 ")")))
(assert true)
(define-const var2397 String (toString/-2075883882 var2823!5)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), target/1914504294=([freemarker.core.MethodCall], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3945-to-var3315=([freemarker.core.Expression], freemarker.core.TemplateObject), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arguments/1914504294=([freemarker.core.MethodCall], freemarker.core.ListLiteral), getCanonicalForm/965922612=([freemarker.core.ListLiteral], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1226=freemarker.core.MethodCall, var1625=r1, var2823=$r0, var3945=freemarker.core.Expression, var1542=$r2, var3315=freemarker.core.TemplateObject, var3777=$r3, var11=freemarker.core.ListLiteral, var621=$r4, var1624=r5, var760=$i0, var1986=$i1, var2859=$r6, var2397=$r7}
; {freemarker.core.MethodCall=var1226, r1=var1625, $r0=var2823, freemarker.core.Expression=var3945, $r2=var1542, freemarker.core.TemplateObject=var3315, $r3=var3777, freemarker.core.ListLiteral=var11, $r4=var621, r5=var1624, $i0=var760, $i1=var1986, $r6=var2859, $r7=var2397}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.MethodCall;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<freemarker.core.MethodCall: freemarker.core.Expression target>;	$r3 = virtualinvoke $r2.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = r1.<freemarker.core.MethodCall: freemarker.core.ListLiteral arguments>;	r5 = virtualinvoke $r4.<freemarker.core.ListLiteral: java.lang.String getCanonicalForm()>();	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r6 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(1, $i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1