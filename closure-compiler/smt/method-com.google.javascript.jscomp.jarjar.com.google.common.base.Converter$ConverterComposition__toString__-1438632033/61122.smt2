(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var362 0)
(declare-sort var2442 0)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun first/805264703 (var362) var2442)
(declare-fun append/-1031950772 (String var3271) String)
(declare-fun cast-from-var2442-to-var3271 (var2442) var3271)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun second/805264703 (var362) var2442)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var362 var362)
(declare-const var1857 var362) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition 
(assert (not (= var1857 null-var362)))
(define-const var3914 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3914)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3914!1 String)
(assert (= var3914!1 ""))
(define-const var453 var2442 (first/805264703 var1857)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter first> 
(assert true)
(define-const var2132 String (append/-1031950772 var3914!1 (cast-from-var2442-to-var3271 var453))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3914!2 String)
(assert (str.prefixof var3914!1 var3914!2))
(assert true)
(define-const var261 String (append/672562846 var2132 ".andThen(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".andThen(") 
(declare-const var2132!1 String)
(assert (= var2132!1 (str.++ var2132 ".andThen(")))
(define-const var2938 var2442 (second/805264703 var1857)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter second> 
(assert true)
(define-const var1266 String (append/-1031950772 var261 (cast-from-var2442-to-var3271 var2938))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var261!1 String)
(assert (str.prefixof var261 var261!1))
(assert true)
(define-const var2039 String (append/672562846 var1266 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1266!1 String)
(assert (= var1266!1 (str.++ var1266 ")")))
(assert true)
(define-const var2405 String (toString/-2075883882 var2039)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), first/805264703=([com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition], com.google.javascript.jscomp.jarjar.com.google.common.base.Converter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2442-to-var3271=([com.google.javascript.jscomp.jarjar.com.google.common.base.Converter], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), second/805264703=([com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition], com.google.javascript.jscomp.jarjar.com.google.common.base.Converter), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var362=com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition, var1857=r1, var3914=$r0, var2442=com.google.javascript.jscomp.jarjar.com.google.common.base.Converter, var453=$r2, var3271=java.lang.Object, var2132=$r3, var261=$r5, var2938=$r4, var1266=$r6, var2039=$r7, var2405=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition=var362, r1=var1857, $r0=var3914, com.google.javascript.jscomp.jarjar.com.google.common.base.Converter=var2442, $r2=var453, java.lang.Object=var3271, $r3=var2132, $r5=var261, $r4=var2938, $r6=var1266, $r7=var2039, $r8=var2405}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter first>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".andThen(");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Converter$ConverterComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Converter second>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1