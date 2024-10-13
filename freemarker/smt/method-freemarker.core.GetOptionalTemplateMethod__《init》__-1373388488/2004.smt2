(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3965 0)
(declare-sort var2614 0)
(declare-sort var2461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2461) void)
(declare-fun cast-from-var3965-to-var2461 (var3965) var2461)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun methodName/1516154890 (var3965) String)
(declare-const null-var3965 var3965)
(declare-const null-String String)
(declare-const var1404 var3965) ; Statement: r0 := @this: freemarker.core.GetOptionalTemplateMethod 
(assert (not (= var1404 null-var3965)))
(declare-const var1262 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1262 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3965-to-var2461 var1404))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1404!1 var3965)
(define-const var2973 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2973)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2973!1 String)
(assert (= var2973!1 ""))
(assert true)
(define-const var2247 String (append/672562846 var2973!1 ".")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2973!2 String)
(assert (= var2973!2 (str.++ var2973!1 ".")))
(assert true)
(define-const var2492 String (append/672562846 var2247 var1262)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2247!1 String)
(assert (= var2247!1 (str.++ var2247 var1262)))
(assert true)
(define-const var230 String (toString/-2075883882 var2492)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1404!2 var3965)
(assert (not (= var1404!2 null-var3965)))
(assert (= (methodName/1516154890 var1404!2) var230)) ; Statement: r0.<freemarker.core.GetOptionalTemplateMethod: java.lang.String methodName> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3965-to-var2461=([freemarker.core.GetOptionalTemplateMethod], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), methodName/1516154890=([freemarker.core.GetOptionalTemplateMethod], java.lang.String)}
; {var3965=freemarker.core.GetOptionalTemplateMethod, var1404=r0, var1262=r2, var2614=null_type, var2461=java.lang.Object, var2973=$r1, var2247=$r3, var2492=$r4, var230=$r5}
; {freemarker.core.GetOptionalTemplateMethod=var3965, r0=var1404, r2=var1262, null_type=var2614, java.lang.Object=var2461, $r1=var2973, $r3=var2247, $r4=var2492, $r5=var230}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.GetOptionalTemplateMethod;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<freemarker.core.GetOptionalTemplateMethod: java.lang.String methodName> = $r5;	return
;block_num 1