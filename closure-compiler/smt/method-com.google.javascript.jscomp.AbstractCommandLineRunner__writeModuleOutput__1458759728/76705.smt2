(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3516 0)
(declare-sort var1963 0)
(declare-sort var3197 0)
(declare-sort var1393 0)
(declare-sort var1351 0)
(declare-sort var210 0)
(declare-sort var2450 0)
(declare-sort var2915 0)
(declare-sort var487 0)
(declare-sort var528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parsedModuleWrappers/-1513802512 (var3516) var210)
(declare-fun isOutputInJson/1349144571 (var3516) Bool)
(declare-fun var2450-init () var2450)
(declare-fun <init>/-1681595970 (var2450 String) void)
(declare-fun getName/1128186653 (var2450) String)
(declare-fun compiler/-1513802512 (var3516) var2915)
(declare-fun getName/1300854414 (var1351) String)
(declare-fun var210_get/1088891777 (var210 var487) var487)
(declare-fun cast-from-String-to-var487 (String) var487)
(declare-fun cast-from-var487-to-String (var487) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun writeOutput/774778479 (var3516 var3197 var2915 var1393 var1351 String String var528 String) void)
(declare-const null-var3516 var3516)
(declare-const null-String String)
(declare-const null-var3197 var3197)
(declare-const null-var1393 var1393)
(declare-const null-var1351 var1351)
(declare-const null-var210 var210)
(declare-const null-NullType var1963)
(declare-const null-var528 var528)
(declare-const var3592 var3516) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var3592 null-var3516)))
(declare-const var3400 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3400 null-String)))
(declare-const var932 var3197) ; Statement: r4 := @parameter1: java.lang.Appendable 
(assert (not (= var932 null-var3197)))
(declare-const var1641 var1393) ; Statement: r5 := @parameter2: com.google.javascript.jscomp.CodePrinter$LicenseTracker 
(assert (not (= var1641 null-var1393)))
(declare-const var2458 var1351) ; Statement: r6 := @parameter3: com.google.javascript.jscomp.JSChunk 
(assert (not (= var2458 null-var1351)))
(define-const var3603 var210 (parsedModuleWrappers/-1513802512 var3592)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.util.Map parsedModuleWrappers> 
 ; Statement: if $r1 != null goto $z0 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: boolean isOutputInJson()>() 
(assert (not (= var3603 null-var210))) ; Cond: $r1 != null 
(assert true)
(define-const var3396 Bool (isOutputInJson/1349144571 var3592)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: boolean isOutputInJson()>() 
 ; Statement: if $z0 != 0 goto $r2 = new java.io.File 
(assert (not (= (ite var3396 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2845 var2450 var2450-init) ; Statement: $r2 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2845 var3400)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>(r3) 

(declare-const var2845!1 var2450)
(declare-const var3400!1 String)
(assert true)
(define-const var3808 String (getName/1128186653 var2845!1)) ; Statement: $r13 = virtualinvoke $r2.<java.io.File: java.lang.String getName()>() 
(define-const var787 var2915 (compiler/-1513802512 var3592)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler> 
(define-const var3634 var210 (parsedModuleWrappers/-1513802512 var3592)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.util.Map parsedModuleWrappers> 
(assert true)
(define-const var1129 String (getName/1300854414 var2458)) ; Statement: $r9 = virtualinvoke r6.<com.google.javascript.jscomp.JSChunk: java.lang.String getName()>() 
(define-const var1596 var487 (var210_get/1088891777 var3634 (cast-from-String-to-var487 var1129))) ; Statement: $r10 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>($r9) 
(define-const var831 String (cast-from-var487-to-String var1596)) ; Statement: $r11 = (java.lang.String) $r10 
(assert true)
(define-const var3594 String (replace/2138489945 var831 (cast-from-String-to-String "%basename%") (cast-from-String-to-String var3808))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("%basename%", $r13) 
(assert true)
;(assert (writeOutput/774778479 var3592 var932 var787 var1641 var2458 var3594 "%s" null-var528 var3400!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: void writeOutput(java.lang.Appendable,com.google.javascript.jscomp.Compiler,com.google.javascript.jscomp.CodePrinter$LicenseTracker,com.google.javascript.jscomp.JSChunk,java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.base.Function,java.lang.String)>(r4, $r7, r5, r6, $r12, "%s", null, r3) 

(declare-const var3592!1 var3516)
(declare-const var932!1 var3197)
(declare-const var787!1 var2915)
(declare-const var1641!1 var1393)
(declare-const var2458!1 var1351)
(declare-const var3594!1 String)
(declare-const var1271 String)
(declare-const var3039 var1963)
(declare-const var3400!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parsedModuleWrappers/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], java.util.Map), isOutputInJson/1349144571=([com.google.javascript.jscomp.AbstractCommandLineRunner], boolean), var2450-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), compiler/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.Compiler), getName/1300854414=([com.google.javascript.jscomp.JSChunk], java.lang.String), var210_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var487=([java.lang.String], java.lang.Object), cast-from-var487-to-String=([java.lang.Object], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), writeOutput/774778479=([com.google.javascript.jscomp.AbstractCommandLineRunner, java.lang.Appendable, com.google.javascript.jscomp.Compiler, com.google.javascript.jscomp.CodePrinter$LicenseTracker, com.google.javascript.jscomp.JSChunk, java.lang.String, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.common.base.Function, java.lang.String], void)}
; {var3516=com.google.javascript.jscomp.AbstractCommandLineRunner, var3592=r0, var3400=r3, var1963=null_type, var3197=java.lang.Appendable, var932=r4, var1393=com.google.javascript.jscomp.CodePrinter$LicenseTracker, var1641=r5, var1351=com.google.javascript.jscomp.JSChunk, var2458=r6, var210=java.util.Map, var3603=$r1, var3396=$z0, var2450=java.io.File, var2845=$r2, var3808=$r13, var2915=com.google.javascript.jscomp.Compiler, var787=$r7, var3634=$r8, var1129=$r9, var487=java.lang.Object, var1596=$r10, var831=$r11, var3594=$r12, var528=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var1271="%s", var3039=null}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var3516, r0=var3592, r3=var3400, null_type=var1963, java.lang.Appendable=var3197, r4=var932, com.google.javascript.jscomp.CodePrinter$LicenseTracker=var1393, r5=var1641, com.google.javascript.jscomp.JSChunk=var1351, r6=var2458, java.util.Map=var210, $r1=var3603, $z0=var3396, java.io.File=var2450, $r2=var2845, $r13=var3808, com.google.javascript.jscomp.Compiler=var2915, $r7=var787, $r8=var3634, $r9=var1129, java.lang.Object=var487, $r10=var1596, $r11=var831, $r12=var3594, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var528, "%s"=var1271, null=var3039}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Appendable;	r5 := @parameter2: com.google.javascript.jscomp.CodePrinter$LicenseTracker;	r6 := @parameter3: com.google.javascript.jscomp.JSChunk;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.util.Map parsedModuleWrappers>;	if $r1 != null goto $z0 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: boolean isOutputInJson()>();	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: boolean isOutputInJson()>();	if $z0 != 0 goto $r2 = new java.io.File;	$r2 = new java.io.File;	specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>(r3);	$r13 = virtualinvoke $r2.<java.io.File: java.lang.String getName()>();	$r7 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.Compiler compiler>;	$r8 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.util.Map parsedModuleWrappers>;	$r9 = virtualinvoke r6.<com.google.javascript.jscomp.JSChunk: java.lang.String getName()>();	$r10 = interfaceinvoke $r8.<java.util.Map: java.lang.Object get(java.lang.Object)>($r9);	$r11 = (java.lang.String) $r10;	$r12 = virtualinvoke $r11.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("%basename%", $r13);	virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: void writeOutput(java.lang.Appendable,com.google.javascript.jscomp.Compiler,com.google.javascript.jscomp.CodePrinter$LicenseTracker,com.google.javascript.jscomp.JSChunk,java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.base.Function,java.lang.String)>(r4, $r7, r5, r6, $r12, "%s", null, r3);	return
;block_num 3