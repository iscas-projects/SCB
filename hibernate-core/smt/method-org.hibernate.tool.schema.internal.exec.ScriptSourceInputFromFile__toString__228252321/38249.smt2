(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var566 0)
(declare-sort var1668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun file/1195852737 (var566) var1668)
(declare-fun getAbsolutePath/-802773300 (var1668) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var566 var566)
(declare-const var3810 var566) ; Statement: r1 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromFile 
(assert (not (= var3810 null-var566)))
(define-const var2446 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2446)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2446!1 String)
(assert (= var2446!1 ""))
(assert true)
(define-const var497 String (append/672562846 var2446!1 "ScriptSourceInputFromFile(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ScriptSourceInputFromFile(") 
(declare-const var2446!2 String)
(assert (= var2446!2 (str.++ var2446!1 "ScriptSourceInputFromFile(")))
(define-const var906 var1668 (file/1195852737 var3810)) ; Statement: $r2 = r1.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromFile: java.io.File file> 
(assert true)
(define-const var3601 String (getAbsolutePath/-802773300 var906)) ; Statement: $r3 = virtualinvoke $r2.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var317 String (append/672562846 var497 var3601)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var497!1 String)
(assert (= var497!1 (str.++ var497 var3601)))
(assert true)
(define-const var3888 String (append/672562846 var317 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var317!1 String)
(assert (= var317!1 (str.++ var317 ")")))
(assert true)
(define-const var3138 String (toString/-2075883882 var3888)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), file/1195852737=([org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromFile], java.io.File), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var566=org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromFile, var3810=r1, var2446=$r0, var497=$r4, var1668=java.io.File, var906=$r2, var3601=$r3, var317=$r5, var3888=$r6, var3138=$r7}
; {org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromFile=var566, r1=var3810, $r0=var2446, $r4=var497, java.io.File=var1668, $r2=var906, $r3=var3601, $r5=var317, $r6=var3888, $r7=var3138}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromFile;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ScriptSourceInputFromFile(");	$r2 = r1.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromFile: java.io.File file>;	$r3 = virtualinvoke $r2.<java.io.File: java.lang.String getAbsolutePath()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1