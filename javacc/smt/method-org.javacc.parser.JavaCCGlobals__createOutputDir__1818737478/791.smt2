(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1192 0)
(declare-sort var1482 0)
(declare-sort var1676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var1192) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1482) String)
(declare-fun cast-from-var1192-to-var1482 (var1192) var1482)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1676_warning/37978134 (String) void)
(declare-fun mkdirs/-2114252793 (var1192) Bool)
(declare-fun var1676_semantic_error/-498493661 (String) void)
(declare-const null-var1192 var1192)
(declare-const var2 var1192) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2 null-var1192)))
(assert true)
(define-const var2668 Bool (exists/1072868559 var2)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>() 
(assert (not (not (= (ite var2668 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var758 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var758)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var758!1 String)
(assert (= var758!1 ""))
(assert true)
(define-const var3859 String (append/672562846 var758!1 "Output directory \u0022")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output directory \"") 
(declare-const var758!2 String)
(assert (= var758!2 (str.++ var758!1 "Output directory \u0022")))
(assert true)
(define-const var1109 String (append/-1031950772 var3859 (cast-from-var1192-to-var1482 var2))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3859!1 String)
(assert (str.prefixof var3859 var3859!1))
(assert true)
(define-const var580 String (append/672562846 var1109 "\u0022 does not exist. Creating the directory.")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" does not exist. Creating the directory.") 
(declare-const var1109!1 String)
(assert (= var1109!1 (str.++ var1109 "\u0022 does not exist. Creating the directory.")))
(assert true)
(define-const var2365 String (toString/-2075883882 var580)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1676_warning/37978134 var2365)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void warning(java.lang.String)>($r15) 

(declare-const var2365!1 String)
(assert true)
(define-const var1316 Bool (mkdirs/-2114252793 var2)) ; Statement: $z3 = virtualinvoke r0.<java.io.File: boolean mkdirs()>() 
 ; Statement: if $z3 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>() 
(assert (not (not (= (ite var1316 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var295 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var295)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var295!1 String)
(assert (= var295!1 ""))
(assert true)
(define-const var451 String (append/672562846 var295!1 "Cannot create the output directory : ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot create the output directory : ") 
(declare-const var295!2 String)
(assert (= var295!2 (str.++ var295!1 "Cannot create the output directory : ")))
(assert true)
(define-const var199 String (append/-1031950772 var451 (cast-from-var1192-to-var1482 var2))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var451!1 String)
(assert (str.prefixof var451 var451!1))
(assert true)
(define-const var69 String (toString/-2075883882 var199)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1676_semantic_error/-498493661 var69)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r19) 

(declare-const var69!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1192-to-var1482=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1676_warning/37978134=([java.lang.String], void), mkdirs/-2114252793=([java.io.File], boolean), var1676_semantic_error/-498493661=([java.lang.String], void)}
; {var1192=java.io.File, var2=r0, var2668=$z0, var758=$r11, var3859=$r12, var1482=java.lang.Object, var1109=$r13, var580=$r14, var2365=$r15, var1676=org.javacc.parser.JavaCCErrors, var1316=$z3, var295=$r16, var451=$r17, var199=$r18, var69=$r19}
; {java.io.File=var1192, r0=var2, $z0=var2668, $r11=var758, $r12=var3859, java.lang.Object=var1482, $r13=var1109, $r14=var580, $r15=var2365, org.javacc.parser.JavaCCErrors=var1676, $z3=var1316, $r16=var295, $r17=var451, $r18=var199, $r19=var69}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>();	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Output directory \"");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" does not exist. Creating the directory.");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void warning(java.lang.String)>($r15);	$z3 = virtualinvoke r0.<java.io.File: boolean mkdirs()>();	if $z3 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>();	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot create the output directory : ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r19);	return
;block_num 3