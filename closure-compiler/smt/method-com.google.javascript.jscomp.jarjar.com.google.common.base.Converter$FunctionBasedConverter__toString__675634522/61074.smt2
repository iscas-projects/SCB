(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3200 0)
(declare-sort var2688 0)
(declare-sort var360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun forwardFunction/-957452998 (var3200) var2688)
(declare-fun append/-1031950772 (String var360) String)
(declare-fun cast-from-var2688-to-var360 (var2688) var360)
(declare-fun backwardFunction/-957452998 (var3200) var2688)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3200 var3200)
(declare-const var2559 var3200) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter 
(assert (not (= var2559 null-var3200)))
(define-const var3942 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3942)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3942!1 String)
(assert (= var3942!1 ""))
(assert true)
(define-const var1215 String (append/672562846 var3942!1 "Converter.from(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Converter.from(") 
(declare-const var3942!2 String)
(assert (= var3942!2 (str.++ var3942!1 "Converter.from(")))
(define-const var618 var2688 (forwardFunction/-957452998 var2559)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.Function forwardFunction> 
(assert true)
(define-const var3286 String (append/-1031950772 var1215 (cast-from-var2688-to-var360 var618))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1215!1 String)
(assert (str.prefixof var1215 var1215!1))
(assert true)
(define-const var2942 String (append/672562846 var3286 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3286!1 String)
(assert (= var3286!1 (str.++ var3286 ", ")))
(define-const var3842 var2688 (backwardFunction/-957452998 var2559)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.Function backwardFunction> 
(assert true)
(define-const var3090 String (append/-1031950772 var2942 (cast-from-var2688-to-var360 var3842))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2942!1 String)
(assert (str.prefixof var2942 var2942!1))
(assert true)
(define-const var2615 String (append/672562846 var3090 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3090!1 String)
(assert (= var3090!1 (str.++ var3090 ")")))
(assert true)
(define-const var731 String (toString/-2075883882 var2615)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), forwardFunction/-957452998=([com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter], com.google.javascript.jscomp.jarjar.com.google.common.base.Function), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2688-to-var360=([com.google.javascript.jscomp.jarjar.com.google.common.base.Function], java.lang.Object), backwardFunction/-957452998=([com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter], com.google.javascript.jscomp.jarjar.com.google.common.base.Function), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3200=com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter, var2559=r1, var3942=$r0, var1215=$r3, var2688=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var618=$r2, var360=java.lang.Object, var3286=$r4, var2942=$r6, var3842=$r5, var3090=$r7, var2615=$r8, var731=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter=var3200, r1=var2559, $r0=var3942, $r3=var1215, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var2688, $r2=var618, java.lang.Object=var360, $r4=var3286, $r6=var2942, $r5=var3842, $r7=var3090, $r8=var2615, $r9=var731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Converter.from(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.Function forwardFunction>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$FunctionBasedConverter: com.google.javascript.jscomp.jarjar.com.google.common.base.Function backwardFunction>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1