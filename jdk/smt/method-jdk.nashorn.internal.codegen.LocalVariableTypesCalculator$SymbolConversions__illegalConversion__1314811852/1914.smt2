(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2628 0)
(declare-sort var1703 0)
(declare-sort var1683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1703-init () var1703)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1683) String)
(declare-fun cast-from-var2628-to-var1683 (var2628) var1683)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1703 var1683) void)
(declare-fun cast-from-String-to-var1683 (String) var1683)
(declare-const null-var2628 var2628)
(declare-const var1912 var2628) ; Statement: r2 := @parameter0: jdk.nashorn.internal.codegen.LocalVariableTypesCalculator$LvarType 
(assert (not (= var1912 null-var2628)))
(declare-const var1424 var2628) ; Statement: r5 := @parameter1: jdk.nashorn.internal.codegen.LocalVariableTypesCalculator$LvarType 
(assert (not (= var1424 null-var2628)))
(define-const var1900 var1703 var1703-init) ; Statement: $r0 = new java.lang.AssertionError 
(define-const var657 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var657)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var657!1 String)
(assert (= var657!1 ""))
(assert true)
(define-const var2386 String (append/672562846 var657!1 "Invalid conversion from ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid conversion from ") 
(declare-const var657!2 String)
(assert (= var657!2 (str.++ var657!1 "Invalid conversion from ")))
(assert true)
(define-const var2694 String (append/-1031950772 var2386 (cast-from-var2628-to-var1683 var1912))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2386!1 String)
(assert (str.prefixof var2386 var2386!1))
(assert true)
(define-const var27 String (append/672562846 var2694 " to ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var2694!1 String)
(assert (= var2694!1 (str.++ var2694 " to ")))
(assert true)
(define-const var1149 String (append/-1031950772 var27 (cast-from-var2628-to-var1683 var1424))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var27!1 String)
(assert (str.prefixof var27 var27!1))
(assert true)
(define-const var1009 String (toString/-2075883882 var1149)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1900 (cast-from-String-to-var1683 var1009))) ; Statement: specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r8) 

(declare-const var1900!1 var1703)
(declare-const var1009!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1703-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2628-to-var1683=([jdk.nashorn.internal.codegen.LocalVariableTypesCalculator$LvarType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1683=([java.lang.String], java.lang.Object)}
; {var2628=jdk.nashorn.internal.codegen.LocalVariableTypesCalculator$LvarType, var1912=r2, var1424=r5, var1703=java.lang.AssertionError, var1900=$r0, var657=$r1, var2386=$r3, var1683=java.lang.Object, var2694=$r4, var27=$r6, var1149=$r7, var1009=$r8}
; {jdk.nashorn.internal.codegen.LocalVariableTypesCalculator$LvarType=var2628, r2=var1912, r5=var1424, java.lang.AssertionError=var1703, $r0=var1900, $r1=var657, $r3=var2386, java.lang.Object=var1683, $r4=var2694, $r6=var27, $r7=var1149, $r8=var1009}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: jdk.nashorn.internal.codegen.LocalVariableTypesCalculator$LvarType;	r5 := @parameter1: jdk.nashorn.internal.codegen.LocalVariableTypesCalculator$LvarType;	$r0 = new java.lang.AssertionError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid conversion from ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r8);	throw $r0
;block_num 1