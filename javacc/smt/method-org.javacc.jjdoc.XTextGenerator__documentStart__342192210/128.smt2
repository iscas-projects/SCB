(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3437 0)
(declare-sort var3602 0)
(declare-sort var1111 0)
(declare-sort var1271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun create_output_stream/1597595382 (var1111) var3602)
(declare-fun cast-from-var3437-to-var1111 (var3437) var1111)
(declare-fun ostr/154848238 (var1111) var3602)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1731774833 (var3437 String) void)
(declare-const null-var3437 var3437)
(declare-const var1271-input_file String)
(declare-const var106 var3437) ; Statement: r0 := @this: org.javacc.jjdoc.XTextGenerator 
(assert (not (= var106 null-var3437)))
(assert true)
(define-const var2243 var3602 (create_output_stream/1597595382 (cast-from-var3437-to-var1111 var106))) ; Statement: $r1 = virtualinvoke r0.<org.javacc.jjdoc.XTextGenerator: java.io.PrintWriter create_output_stream()>() 
(declare-const var106!1 var3437)
(assert (not (= var106!1 null-var3437)))
(assert (= (ostr/154848238 (cast-from-var3437-to-var1111 var106!1)) var2243)) ; Statement: r0.<org.javacc.jjdoc.XTextGenerator: java.io.PrintWriter ostr> = $r1 
(define-const var3722 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3722)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3722!1 String)
(assert (= var3722!1 ""))
(assert true)
(define-const var3791 String (append/672562846 var3722!1 "grammar ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("grammar ") 
(declare-const var3722!2 String)
(assert (= var3722!2 (str.++ var3722!1 "grammar ")))
(define-const var3637 String var1271-input_file) ; Statement: $r3 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
(assert true)
(define-const var2795 String (append/672562846 var3791 var3637)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3791!1 String)
(assert (= var3791!1 (str.++ var3791 var3637)))
(assert true)
(define-const var1957 String (append/672562846 var2795 " with org.eclipse.xtext.common.Terminals")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with org.eclipse.xtext.common.Terminals") 
(declare-const var2795!1 String)
(assert (= var2795!1 (str.++ var2795 " with org.eclipse.xtext.common.Terminals")))
(assert true)
(define-const var1419 String (toString/-2075883882 var1957)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1731774833 var106!1 var1419)) ; Statement: specialinvoke r0.<org.javacc.jjdoc.XTextGenerator: void println(java.lang.String)>($r7) 

(declare-const var106!2 var3437)
(declare-const var1419!1 String)
(assert true)
;(assert (println/-1731774833 var106!2 "import \u0022http://www.eclipse.org/emf/2002/Ecore\u0022 as ecore")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.XTextGenerator: void println(java.lang.String)>("import \"http://www.eclipse.org/emf/2002/Ecore\" as ecore") 

(declare-const var106!3 var3437)
(declare-const var3702 String)
(assert true)
;(assert (println/-1731774833 var106!3 "")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.XTextGenerator: void println(java.lang.String)>("") 

(declare-const var106!4 var3437)
(declare-const var2507 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {create_output_stream/1597595382=([org.javacc.jjdoc.TextGenerator], java.io.PrintWriter), cast-from-var3437-to-var1111=([org.javacc.jjdoc.XTextGenerator], org.javacc.jjdoc.TextGenerator), ostr/154848238=([org.javacc.jjdoc.TextGenerator], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1731774833=([org.javacc.jjdoc.XTextGenerator, java.lang.String], void)}
; {var3437=org.javacc.jjdoc.XTextGenerator, var106=r0, var3602=java.io.PrintWriter, var1111=org.javacc.jjdoc.TextGenerator, var2243=$r1, var3722=$r2, var3791=$r4, var1271=org.javacc.jjdoc.JJDocGlobals, var3637=$r3, var2795=$r5, var1957=$r6, var1419=$r7, var3702="import \"http://www.eclipse.org/emf/2002/Ecore\" as ecore", var2507=""}
; {org.javacc.jjdoc.XTextGenerator=var3437, r0=var106, java.io.PrintWriter=var3602, org.javacc.jjdoc.TextGenerator=var1111, $r1=var2243, $r2=var3722, $r4=var3791, org.javacc.jjdoc.JJDocGlobals=var1271, $r3=var3637, $r5=var2795, $r6=var1957, $r7=var1419, "import \"http://www.eclipse.org/emf/2002/Ecore\" as ecore"=var3702, ""=var2507}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjdoc.XTextGenerator;	$r1 = virtualinvoke r0.<org.javacc.jjdoc.XTextGenerator: java.io.PrintWriter create_output_stream()>();	r0.<org.javacc.jjdoc.XTextGenerator: java.io.PrintWriter ostr> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("grammar ");	$r3 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with org.eclipse.xtext.common.Terminals");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.javacc.jjdoc.XTextGenerator: void println(java.lang.String)>($r7);	specialinvoke r0.<org.javacc.jjdoc.XTextGenerator: void println(java.lang.String)>("import \"http://www.eclipse.org/emf/2002/Ecore\" as ecore");	specialinvoke r0.<org.javacc.jjdoc.XTextGenerator: void println(java.lang.String)>("");	return
;block_num 1