(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3649 0)
(declare-sort var146 0)
(declare-sort var254 0)
(declare-sort var2390 0)
(declare-sort var1100 0)
(declare-sort var386 0)
(declare-sort var1674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3649-init () var3649)
(declare-fun var146_getJJTreeOutputDirectory/-709711143 () var3649)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var254_nameState/428850403 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3649 var3649 String) void)
(declare-fun var2390-init () var2390)
(declare-fun var386-init () var386)
(declare-fun toString/-1112415476 (var1674) String)
(declare-fun cast-from-var1100-to-var1674 (var1100) var1674)
(declare-fun <init>/1101485922 (var386 String) void)
(declare-const null-var1100 var1100)
(define-const var67 var3649 var3649-init) ; Statement: $r0 = new java.io.File 
(define-const var123 var3649 var146_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var404 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var404)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var404!1 String)
(assert (= var404!1 ""))
(define-const var2273 String var254_nameState/428850403) ; Statement: $r2 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>() 
(assert true)
(define-const var3215 String (append/672562846 var404!1 var2273)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var404!2 String)
(assert (= var404!2 (str.++ var404!1 var2273)))
(assert true)
(define-const var3168 String (append/672562846 var3215 ".java")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java") 
(declare-const var3215!1 String)
(assert (= var3215!1 (str.++ var3215 ".java")))
(assert true)
(define-const var266 String (toString/-2075883882 var3168)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var67 var123 var266)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var67!1 var3649)
(declare-const var123!1 var3649)
(declare-const var266!1 String)
(define-const var2398 var2390 var2390-init) ; Statement: $r7 = new org.javacc.parser.OutputFile 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1814 var1100) ; Statement: $r9 := @caughtexception 
(assert (not (= var1814 null-var1100)))
(define-const var2270 var386 var386-init) ; Statement: $r10 = new java.lang.Error 
(assert true)
(define-const var909 String (toString/-1112415476 (cast-from-var1100-to-var1674 var1814))) ; Statement: $r11 = virtualinvoke $r9.<java.io.IOException: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1101485922 var2270 var909)) ; Statement: specialinvoke $r10.<java.lang.Error: void <init>(java.lang.String)>($r11) 

(declare-const var2270!1 var386)
(declare-const var909!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3649-init=([], java.io.File), var146_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var254_nameState/428850403=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var2390-init=([], org.javacc.parser.OutputFile), var386-init=([], java.lang.Error), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1100-to-var1674=([java.io.IOException], java.lang.Throwable), <init>/1101485922=([java.lang.Error, java.lang.String], void)}
; {var3649=java.io.File, var67=$r0, var146=org.javacc.jjtree.JJTreeOptions, var123=$r6, var404=$r1, var254=org.javacc.jjtree.JJTreeState, var2273=$r2, var3215=$r3, var3168=$r4, var266=$r5, var2390=org.javacc.parser.OutputFile, var2398=$r7, var1100=java.io.IOException, var1814=$r9, var386=java.lang.Error, var2270=$r10, var1674=java.lang.Throwable, var909=$r11}
; {java.io.File=var3649, $r0=var67, org.javacc.jjtree.JJTreeOptions=var146, $r6=var123, $r1=var404, org.javacc.jjtree.JJTreeState=var254, $r2=var2273, $r3=var3215, $r4=var3168, $r5=var266, org.javacc.parser.OutputFile=var2390, $r7=var2398, java.io.IOException=var1100, $r9=var1814, java.lang.Error=var386, $r10=var2270, java.lang.Throwable=var1674, $r11=var909}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Throwable: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.javacc.jjtree.JJTreeState: java.lang.String nameState()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = new org.javacc.parser.OutputFile;	$r9 := @caughtexception;	$r10 = new java.lang.Error;	$r11 = virtualinvoke $r9.<java.io.IOException: java.lang.String toString()>();	specialinvoke $r10.<java.lang.Error: void <init>(java.lang.String)>($r11);	throw $r10
;block_num 2