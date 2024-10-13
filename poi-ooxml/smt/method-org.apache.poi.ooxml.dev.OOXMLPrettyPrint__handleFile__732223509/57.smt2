(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3642 0)
(declare-sort var166 0)
(declare-sort var2393 0)
(declare-sort var1111 0)
(declare-sort var2382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1111) String)
(declare-fun cast-from-var3642-to-var1111 (var3642) var1111)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var166 String) void)
(declare-fun println/-898436193 (var166) void)
(declare-const null-var3642 var3642)
(declare-const var2393-out var166)
(declare-const null-var2382 var2382)
(declare-const var2023 var3642) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2023 null-var3642)))
(declare-const var536 var3642) ; Statement: r5 := @parameter1: java.io.File 
(assert (not (= var536 null-var3642)))
(define-const var960 var166 var2393-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1832 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1832)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1832!1 String)
(assert (= var1832!1 ""))
(assert true)
(define-const var1402 String (append/672562846 var1832!1 "Reading zip-file ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reading zip-file ") 
(declare-const var1832!2 String)
(assert (= var1832!2 (str.++ var1832!1 "Reading zip-file ")))
(assert true)
(define-const var1098 String (append/-1031950772 var1402 (cast-from-var3642-to-var1111 var2023))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1402!1 String)
(assert (str.prefixof var1402 var1402!1))
(assert true)
(define-const var233 String (append/672562846 var1098 " and writing pretty-printed XML to ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and writing pretty-printed XML to ") 
(declare-const var1098!1 String)
(assert (= var1098!1 (str.++ var1098 " and writing pretty-printed XML to ")))
(assert true)
(define-const var2603 String (append/-1031950772 var233 (cast-from-var3642-to-var1111 var536))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var233!1 String)
(assert (str.prefixof var233 var233!1))
(assert true)
(define-const var1989 String (toString/-2075883882 var2603)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var960 var1989)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r8) 

(declare-const var960!1 var166)
(declare-const var1989!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3237 var2382) ; Statement: $r16 := @caughtexception 
(assert (not (= var3237 null-var2382)))
(assert true) ; Non Conditional
(define-const var1021 var166 var2393-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/-898436193 var1021)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println()>() 

(declare-const var1021!1 var166)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3642-to-var1111=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), println/-898436193=([java.io.PrintStream], void)}
; {var3642=java.io.File, var2023=r2, var536=r5, var166=java.io.PrintStream, var2393=java.lang.System, var960=$r1, var1832=$r0, var1402=$r3, var1111=java.lang.Object, var1098=$r4, var233=$r6, var2603=$r7, var1989=$r8, var2382=java.lang.Throwable, var3237=$r16, var1021=$r17}
; {java.io.File=var3642, r2=var2023, r5=var536, java.io.PrintStream=var166, java.lang.System=var2393, $r1=var960, $r0=var1832, $r3=var1402, java.lang.Object=var1111, $r4=var1098, $r6=var233, $r7=var2603, $r8=var1989, java.lang.Throwable=var2382, $r16=var3237, $r17=var1021}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.io.File;	r5 := @parameter1: java.io.File;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reading zip-file ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and writing pretty-printed XML to ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r8);	$r16 := @caughtexception;	$r17 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r17.<java.io.PrintStream: void println()>();	throw $r16
;block_num 3