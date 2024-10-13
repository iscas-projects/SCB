(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1553 0)
(declare-sort var2583 0)
(declare-sort var3205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getClassLoader/-563698447 (ClassObject) var1553)
(declare-fun var3205_getResourceSource/-716045156 (var1553 String) var2583)
(declare-const null-ClassObject ClassObject)
(declare-const var2807 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2807 null-ClassObject)))
(define-const var1814 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1814)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1814!1 String)
(assert (= var1814!1 ""))
(assert true)
(define-const var3741 String (getName/-1958580599 var2807)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var694 String (replace/1524665721 var3741 46 47)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var3248 String (append/672562846 var1814!1 var694)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1814!2 String)
(assert (= var1814!2 (str.++ var1814!1 var694)))
(assert true)
(define-const var1372 String (append/672562846 var3248 ".class")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var3248!1 String)
(assert (= var3248!1 (str.++ var3248 ".class")))
(assert true)
(define-const var1342 String (toString/-2075883882 var1372)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2928 var1553 (getClassLoader/-563698447 var2807)) ; Statement: $r7 = virtualinvoke r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(define-const var389 var2583 (var3205_getResourceSource/-716045156 var2928 var1342)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator: java.io.File getResourceSource(java.lang.ClassLoader,java.lang.String)>($r7, r6) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), var3205_getResourceSource/-716045156=([java.lang.ClassLoader, java.lang.String], java.io.File)}
; {var2807=r1, var1814=$r0, var3741=$r2, var694=$r3, var3248=$r4, var1372=$r5, var1342=r6, var1553=java.lang.ClassLoader, var2928=$r7, var2583=java.io.File, var3205=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator, var389=$r8}
; {r1=var2807, $r0=var1814, $r2=var3741, $r3=var694, $r4=var3248, $r5=var1372, r6=var1342, java.lang.ClassLoader=var1553, $r7=var2928, java.io.File=var2583, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator=var3205, $r8=var389}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Class;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r1.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Locator: java.io.File getResourceSource(java.lang.ClassLoader,java.lang.String)>($r7, r6);	return $r8
;block_num 1