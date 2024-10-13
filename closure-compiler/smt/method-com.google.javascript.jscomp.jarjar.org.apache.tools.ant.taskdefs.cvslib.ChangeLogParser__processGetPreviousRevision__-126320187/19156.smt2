(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2302 0)
(declare-sort var428 0)
(declare-sort var2660 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2660-init () var2660)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2660 String) void)
(declare-const null-var2302 var2302)
(declare-const null-String String)
(declare-const var705 var2302) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser 
(assert (not (= var705 null-var2302)))
(declare-const var145 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var145 null-String)))
(assert true)
(define-const var3735 Bool (startsWith/-1785782452 var145 "revision ")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("revision ") 
 ; Statement: if $z0 != 0 goto $r2 = "revision " 
(assert (not (not (= (ite var3735 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var229 var2660 var2660-init) ; Statement: $r5 = new java.lang.IllegalStateException 
(define-const var1024 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1024)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1024!1 String)
(assert (= var1024!1 ""))
(assert true)
(define-const var997 String (append/672562846 var1024!1 "Unexpected line from CVS: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected line from CVS: ") 
(declare-const var1024!2 String)
(assert (= var1024!2 (str.++ var1024!1 "Unexpected line from CVS: ")))
(assert true)
(define-const var2848 String (append/672562846 var997 var145)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var997!1 String)
(assert (= var997!1 (str.++ var997 var145)))
(assert true)
(define-const var1477 String (toString/-2075883882 var2848)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var229 var1477)) ; Statement: specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var229!1 var2660)
(declare-const var1477!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2660-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2302=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser, var705=r1, var145=r0, var428=null_type, var3735=$z0, var2660=java.lang.IllegalStateException, var229=$r5, var1024=$r6, var997=$r7, var2848=$r8, var1477=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser=var2302, r1=var705, r0=var145, null_type=var428, $z0=var3735, java.lang.IllegalStateException=var2660, $r5=var229, $r6=var1024, $r7=var997, $r8=var2848, $r9=var1477}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("revision ");	if $z0 != 0 goto $r2 = "revision ";	$r5 = new java.lang.IllegalStateException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected line from CVS: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2