(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2276 0)
(declare-sort var2810 0)
(declare-sort var1485 0)
(declare-sort var1161 0)
(declare-sort var2949 0)
(declare-sort var1662 0)
(declare-sort var852 0)
(declare-sort var646 0)
(declare-sort var2190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2276_nodeConstants/-1553478071 () String)
(declare-fun var2810-init () var2810)
(declare-fun var1485_getJJTreeOutputDirectory/-709711143 () var2810)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var2810 var2810 String) void)
(declare-fun getName/1128186653 (var2810) String)
(declare-fun var1161_add/328494887 (var1161 var2949) Bool)
(declare-fun cast-from-String-to-var2949 (String) var2949)
(declare-fun var1662-init () var1662)
(declare-fun var646-init () var646)
(declare-fun toString/-1112415476 (var2190) String)
(declare-fun cast-from-var852-to-var2190 (var852) var2190)
(declare-fun <init>/1101485922 (var646 String) void)
(declare-const var2276-headersForJJTreeH var1161)
(declare-const null-var852 var852)
(define-const var2659 String var2276_nodeConstants/-1553478071) ; Statement: r0 = staticinvoke <org.javacc.jjtree.CPPNodeFiles: java.lang.String nodeConstants()>() 
(define-const var2626 var2810 var2810-init) ; Statement: $r1 = new java.io.File 
(define-const var1298 var2810 var1485_getJJTreeOutputDirectory/-709711143) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>() 
(define-const var1123 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1123)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1123!1 String)
(assert (= var1123!1 ""))
(assert true)
(define-const var1367 String (append/672562846 var1123!1 var2659)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1123!2 String)
(assert (= var1123!2 (str.++ var1123!1 var2659)))
(assert true)
(define-const var3710 String (append/672562846 var1367 ".h")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h") 
(declare-const var1367!1 String)
(assert (= var1367!1 (str.++ var1367 ".h")))
(assert true)
(define-const var200 String (toString/-2075883882 var3710)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2626 var1298 var200)) ; Statement: specialinvoke $r1.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5) 

(declare-const var2626!1 var2810)
(declare-const var1298!1 var2810)
(declare-const var200!1 String)
(define-const var1333 var1161 var2276-headersForJJTreeH) ; Statement: $r7 = <org.javacc.jjtree.CPPNodeFiles: java.util.List headersForJJTreeH> 
(assert true)
(define-const var1696 String (getName/1128186653 var2626!1)) ; Statement: $r8 = virtualinvoke $r1.<java.io.File: java.lang.String getName()>() 
;(assert (var1161_add/328494887 var1333 (cast-from-String-to-var2949 var1696))) ; Statement: interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r8) 

(declare-const var1333!1 var1161)
(declare-const var1696!1 String)
(define-const var3130 var1662 var1662-init) ; Statement: $r9 = new org.javacc.parser.OutputFile 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3615 var852) ; Statement: $r53 := @caughtexception 
(assert (not (= var3615 null-var852)))
(define-const var2 var646 var646-init) ; Statement: $r54 = new java.lang.Error 
(assert true)
(define-const var3659 String (toString/-1112415476 (cast-from-var852-to-var2190 var3615))) ; Statement: $r55 = virtualinvoke $r53.<java.io.IOException: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1101485922 var2 var3659)) ; Statement: specialinvoke $r54.<java.lang.Error: void <init>(java.lang.String)>($r55) 

(declare-const var2!1 var646)
(declare-const var3659!1 String)
 ; Statement: throw $r54 
(check-sat)
(get-model)
(get-unsat-core)
; {var2276_nodeConstants/-1553478071=([], java.lang.String), var2810-init=([], java.io.File), var1485_getJJTreeOutputDirectory/-709711143=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), var1161_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2949=([java.lang.String], java.lang.Object), var1662-init=([], org.javacc.parser.OutputFile), var646-init=([], java.lang.Error), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var852-to-var2190=([java.io.IOException], java.lang.Throwable), <init>/1101485922=([java.lang.Error, java.lang.String], void)}
; {var2276=org.javacc.jjtree.CPPNodeFiles, var2659=r0, var2810=java.io.File, var2626=$r1, var1485=org.javacc.jjtree.JJTreeOptions, var1298=$r6, var1123=$r2, var1367=$r3, var3710=$r4, var200=$r5, var1161=java.util.List, var1333=$r7, var1696=$r8, var2949=java.lang.Object, var1662=org.javacc.parser.OutputFile, var3130=$r9, var852=java.io.IOException, var3615=$r53, var646=java.lang.Error, var2=$r54, var2190=java.lang.Throwable, var3659=$r55}
; {org.javacc.jjtree.CPPNodeFiles=var2276, r0=var2659, java.io.File=var2810, $r1=var2626, org.javacc.jjtree.JJTreeOptions=var1485, $r6=var1298, $r2=var1123, $r3=var1367, $r4=var3710, $r5=var200, java.util.List=var1161, $r7=var1333, $r8=var1696, java.lang.Object=var2949, org.javacc.parser.OutputFile=var1662, $r9=var3130, java.io.IOException=var852, $r53=var3615, java.lang.Error=var646, $r54=var2, java.lang.Throwable=var2190, $r55=var3659}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Throwable: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <org.javacc.jjtree.CPPNodeFiles: java.lang.String nodeConstants()>();	$r1 = new java.io.File;	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getJJTreeOutputDirectory()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".h");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r5);	$r7 = <org.javacc.jjtree.CPPNodeFiles: java.util.List headersForJJTreeH>;	$r8 = virtualinvoke $r1.<java.io.File: java.lang.String getName()>();	interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r8);	$r9 = new org.javacc.parser.OutputFile;	$r53 := @caughtexception;	$r54 = new java.lang.Error;	$r55 = virtualinvoke $r53.<java.io.IOException: java.lang.String toString()>();	specialinvoke $r54.<java.lang.Error: void <init>(java.lang.String)>($r55);	throw $r54
;block_num 2