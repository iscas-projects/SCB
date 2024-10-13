(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1530 0)
(declare-sort var954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun qualifiedName/1699701859 (var1530) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var954-init () var954)
(declare-fun <init>/-1833447926 (var954 var954 String) void)
(declare-const null-var1530 var1530)
(declare-const null-var954 var954)
(declare-const var954-separatorChar Int)
(declare-const var446 var1530) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname 
(assert (not (= var446 null-var1530)))
(declare-const var1016 var954) ; Statement: r8 := @parameter0: java.io.File 
(assert (not (= var1016 null-var954)))
(define-const var1562 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1562)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1562!1 String)
(assert (= var1562!1 ""))
(define-const var3985 String (qualifiedName/1699701859 var446)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String qualifiedName> 
(define-const var1799 Int var954-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var2909 String (replace/1524665721 var3985 46 var1799)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, $c0) 
(assert true)
(define-const var1577 String (append/672562846 var1562!1 var2909)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1562!2 String)
(assert (= var1562!2 (str.++ var1562!1 var2909)))
(assert true)
(define-const var252 String (append/672562846 var1577 ".class")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1577!1 String)
(assert (= var1577!1 (str.++ var1577 ".class")))
(assert true)
(define-const var1496 String (toString/-2075883882 var252)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var54 var954 var954-init) ; Statement: $r7 = new java.io.File 
(assert true)
;(assert (<init>/-1833447926 var54 var1016 var1496)) ; Statement: specialinvoke $r7.<java.io.File: void <init>(java.io.File,java.lang.String)>(r8, r6) 

(declare-const var54!1 var954)
(declare-const var1016!1 var954)
(declare-const var1496!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), qualifiedName/1699701859=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var954-init=([], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var1530=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname, var446=r1, var954=java.io.File, var1016=r8, var1562=$r0, var3985=$r2, var1799=$c0, var2909=$r3, var1577=$r4, var252=$r5, var1496=r6, var54=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname=var1530, r1=var446, java.io.File=var954, r8=var1016, $r0=var1562, $r2=var3985, $c0=var1799, $r3=var2909, $r4=var1577, $r5=var252, r6=var1496, $r7=var54}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname;	r8 := @parameter0: java.io.File;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String qualifiedName>;	$c0 = <java.io.File: char separatorChar>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, $c0);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.io.File;	specialinvoke $r7.<java.io.File: void <init>(java.io.File,java.lang.String)>(r8, r6);	return $r7
;block_num 1