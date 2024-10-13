(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClassName/-42550424 (var1923) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1923 var1923)
(declare-const var3440 var1923) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var3440 null-var1923)))
(define-const var363 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var363)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var363!1 String)
(assert (= var363!1 ""))
(assert true)
(define-const var2092 String (append/672562846 var363!1 "[object ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ") 
(declare-const var363!2 String)
(assert (= var363!2 (str.++ var363!1 "[object ")))
(assert true)
(define-const var1308 String (getClassName/-42550424 var3440)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.String getClassName()>() 
(assert true)
(define-const var85 String (append/672562846 var2092 var1308)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2092!1 String)
(assert (= var2092!1 (str.++ var2092 var1308)))
(assert true)
(define-const var1016 String (append/672562846 var85 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var85!1 String)
(assert (= var85!1 (str.++ var85 "]")))
(assert true)
(define-const var1110 String (toString/-2075883882 var1016)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClassName/-42550424=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1923=jdk.nashorn.internal.runtime.ScriptObject, var3440=r1, var363=$r0, var2092=$r3, var1308=$r2, var85=$r4, var1016=$r5, var1110=$r6}
; {jdk.nashorn.internal.runtime.ScriptObject=var1923, r1=var3440, $r0=var363, $r3=var2092, $r2=var1308, $r4=var85, $r5=var1016, $r6=var1110}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.ScriptObject;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ");	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.String getClassName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1