(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var291 0)
(declare-sort var2679 0)
(declare-sort var1493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun desc/23954122 (var291) String)
(declare-fun phases/23954122 (var291) var2679)
(declare-fun toString/-522406933 (var1493) String)
(declare-fun cast-from-var2679-to-var1493 (var2679) var1493)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var291 var291)
(declare-const var1335 var291) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var1335 null-var291)))
(define-const var2330 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2330)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2330!1 String)
(assert (= var2330!1 ""))
(assert true)
(define-const var3725 String (append/672562846 var2330!1 "\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2330!2 String)
(assert (= var2330!2 (str.++ var2330!1 "\u0027")))
(define-const var1239 String (desc/23954122 var1335)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: java.lang.String desc> 
(assert true)
(define-const var3210 String (append/672562846 var3725 var1239)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3725!1 String)
(assert (= var3725!1 (str.++ var3725 var1239)))
(assert true)
(define-const var3854 String (append/672562846 var3210 "\u0027 ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ") 
(declare-const var3210!1 String)
(assert (= var3210!1 (str.++ var3210 "\u0027 ")))
(define-const var1653 var2679 (phases/23954122 var1335)) ; Statement: $r5 = r1.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: java.util.List phases> 
(assert true)
(define-const var2565 String (toString/-522406933 (cast-from-var2679-to-var1493 var1653))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var760 String (append/672562846 var3854 var2565)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3854!1 String)
(assert (= var3854!1 (str.++ var3854 var2565)))
(assert true)
(define-const var239 String (toString/-2075883882 var760)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), desc/23954122=([jdk.nashorn.internal.codegen.Compiler$CompilationPhases], java.lang.String), phases/23954122=([jdk.nashorn.internal.codegen.Compiler$CompilationPhases], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2679-to-var1493=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var291=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var1335=r1, var2330=$r0, var3725=$r3, var1239=$r2, var3210=$r4, var3854=$r7, var2679=java.util.List, var1653=$r5, var1493=java.lang.Object, var2565=$r6, var760=$r8, var239=$r9}
; {jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var291, r1=var1335, $r0=var2330, $r3=var3725, $r2=var1239, $r4=var3210, $r7=var3854, java.util.List=var2679, $r5=var1653, java.lang.Object=var1493, $r6=var2565, $r8=var760, $r9=var239}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r2 = r1.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: java.lang.String desc>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' ");	$r5 = r1.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: java.util.List phases>;	$r6 = virtualinvoke $r5.<java.lang.Object: java.lang.String toString()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1