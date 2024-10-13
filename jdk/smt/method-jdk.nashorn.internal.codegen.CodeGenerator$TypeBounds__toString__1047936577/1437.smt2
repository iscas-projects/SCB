(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3301 0)
(declare-sort var788 0)
(declare-sort var2204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun narrowest/-2124351135 (var3301) var788)
(declare-fun append/-1031950772 (String var2204) String)
(declare-fun cast-from-var788-to-var2204 (var788) var2204)
(declare-fun widest/-2124351135 (var3301) var788)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3301 var3301)
(declare-const var3257 var3301) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds 
(assert (not (= var3257 null-var3301)))
(define-const var3181 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3181)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3181!1 String)
(assert (= var3181!1 ""))
(assert true)
(define-const var1988 String (append/672562846 var3181!1 "[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3181!2 String)
(assert (= var3181!2 (str.++ var3181!1 "[")))
(define-const var3466 var788 (narrowest/-2124351135 var3257)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds: jdk.nashorn.internal.codegen.types.Type narrowest> 
(assert true)
(define-const var1408 String (append/-1031950772 var1988 (cast-from-var788-to-var2204 var3466))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1988!1 String)
(assert (str.prefixof var1988 var1988!1))
(assert true)
(define-const var165 String (append/672562846 var1408 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1408!1 String)
(assert (= var1408!1 (str.++ var1408 ", ")))
(define-const var156 var788 (widest/-2124351135 var3257)) ; Statement: $r5 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds: jdk.nashorn.internal.codegen.types.Type widest> 
(assert true)
(define-const var2711 String (append/-1031950772 var165 (cast-from-var788-to-var2204 var156))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var165!1 String)
(assert (str.prefixof var165 var165!1))
(assert true)
(define-const var271 String (append/672562846 var2711 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2711!1 String)
(assert (= var2711!1 (str.++ var2711 "]")))
(assert true)
(define-const var470 String (toString/-2075883882 var271)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), narrowest/-2124351135=([jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds], jdk.nashorn.internal.codegen.types.Type), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var788-to-var2204=([jdk.nashorn.internal.codegen.types.Type], java.lang.Object), widest/-2124351135=([jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds], jdk.nashorn.internal.codegen.types.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3301=jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds, var3257=r1, var3181=$r0, var1988=$r3, var788=jdk.nashorn.internal.codegen.types.Type, var3466=$r2, var2204=java.lang.Object, var1408=$r4, var165=$r6, var156=$r5, var2711=$r7, var271=$r8, var470=$r9}
; {jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds=var3301, r1=var3257, $r0=var3181, $r3=var1988, jdk.nashorn.internal.codegen.types.Type=var788, $r2=var3466, java.lang.Object=var2204, $r4=var1408, $r6=var165, $r5=var156, $r7=var2711, $r8=var271, $r9=var470}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r2 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds: jdk.nashorn.internal.codegen.types.Type narrowest>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$TypeBounds: jdk.nashorn.internal.codegen.types.Type widest>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1