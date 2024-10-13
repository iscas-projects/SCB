(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort var2835 0)
(declare-sort var1125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sink/-382359616 (var727) var2835)
(declare-fun append/-1031950772 (String var1125) String)
(declare-fun cast-from-var2835-to-var1125 (var2835) var1125)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var727 var727)
(declare-const var171 var727) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SinkAsStream 
(assert (not (= var171 null-var727)))
(define-const var2447 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2447)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2447!1 String)
(assert (= var2447!1 ""))
(assert true)
(define-const var3080 String (append/672562846 var2447!1 "Funnels.asOutputStream(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Funnels.asOutputStream(") 
(declare-const var2447!2 String)
(assert (= var2447!2 (str.++ var2447!1 "Funnels.asOutputStream(")))
(define-const var1257 var2835 (sink/-382359616 var171)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SinkAsStream: com.google.javascript.jscomp.jarjar.com.google.common.hash.PrimitiveSink sink> 
(assert true)
(define-const var2338 String (append/-1031950772 var3080 (cast-from-var2835-to-var1125 var1257))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3080!1 String)
(assert (str.prefixof var3080 var3080!1))
(assert true)
(define-const var3057 String (append/672562846 var2338 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2338!1 String)
(assert (= var2338!1 (str.++ var2338 ")")))
(assert true)
(define-const var3104 String (toString/-2075883882 var3057)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), sink/-382359616=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SinkAsStream], com.google.javascript.jscomp.jarjar.com.google.common.hash.PrimitiveSink), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2835-to-var1125=([com.google.javascript.jscomp.jarjar.com.google.common.hash.PrimitiveSink], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var727=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SinkAsStream, var171=r1, var2447=$r0, var3080=$r3, var2835=com.google.javascript.jscomp.jarjar.com.google.common.hash.PrimitiveSink, var1257=$r2, var1125=java.lang.Object, var2338=$r4, var3057=$r5, var3104=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SinkAsStream=var727, r1=var171, $r0=var2447, $r3=var3080, com.google.javascript.jscomp.jarjar.com.google.common.hash.PrimitiveSink=var2835, $r2=var1257, java.lang.Object=var1125, $r4=var2338, $r5=var3057, $r6=var3104}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SinkAsStream;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Funnels.asOutputStream(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SinkAsStream: com.google.javascript.jscomp.jarjar.com.google.common.hash.PrimitiveSink sink>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1