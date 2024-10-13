(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1187 0)
(declare-sort var387 0)
(declare-sort var2915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun g/1735467320 (var1187) var387)
(declare-fun append/-1031950772 (String var2915) String)
(declare-fun cast-from-var387-to-var2915 (var387) var2915)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun f/1735467320 (var1187) var387)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1187 var1187)
(declare-const var3032 var1187) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition 
(assert (not (= var3032 null-var1187)))
(define-const var2909 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2909)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2909!1 String)
(assert (= var2909!1 ""))
(define-const var3506 var387 (g/1735467320 var3032)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Function g> 
(assert true)
(define-const var2849 String (append/-1031950772 var2909!1 (cast-from-var387-to-var2915 var3506))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2909!2 String)
(assert (str.prefixof var2909!1 var2909!2))
(assert true)
(define-const var304 String (append/672562846 var2849 "(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2849!1 String)
(assert (= var2849!1 (str.++ var2849 "(")))
(define-const var1105 var387 (f/1735467320 var3032)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Function f> 
(assert true)
(define-const var1077 String (append/-1031950772 var304 (cast-from-var387-to-var2915 var1105))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var304!1 String)
(assert (str.prefixof var304 var304!1))
(assert true)
(define-const var3712 String (append/672562846 var1077 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1077!1 String)
(assert (= var1077!1 (str.++ var1077 ")")))
(assert true)
(define-const var670 String (toString/-2075883882 var3712)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), g/1735467320=([com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition], com.google.javascript.jscomp.jarjar.com.google.common.base.Function), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var387-to-var2915=([com.google.javascript.jscomp.jarjar.com.google.common.base.Function], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), f/1735467320=([com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition], com.google.javascript.jscomp.jarjar.com.google.common.base.Function), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1187=com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition, var3032=r1, var2909=$r0, var387=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var3506=$r2, var2915=java.lang.Object, var2849=$r3, var304=$r5, var1105=$r4, var1077=$r6, var3712=$r7, var670=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition=var1187, r1=var3032, $r0=var2909, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var387, $r2=var3506, java.lang.Object=var2915, $r3=var2849, $r5=var304, $r4=var1105, $r6=var1077, $r7=var3712, $r8=var670}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Function g>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$FunctionComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Function f>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1