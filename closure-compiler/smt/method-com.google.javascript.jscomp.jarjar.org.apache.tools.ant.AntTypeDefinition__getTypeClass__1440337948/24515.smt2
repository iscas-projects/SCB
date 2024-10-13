(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1894 0)
(declare-sort var2218 0)
(declare-sort var1557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun className/-1461999723 (var1894) String)
(declare-fun name/-1461999723 (var1894) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var2218 String Int) void)
(declare-const null-var1894 var1894)
(declare-const null-var2218 var2218)
(declare-const null-var1557 var1557)
(declare-const var36 var1894) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var36 null-var1894)))
(declare-const var312 var2218) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var312 null-var2218)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1365 var1557) ; Statement: $r2 := @caughtexception 
(assert (not (= var1365 null-var1557)))
(define-const var3434 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3434)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3434!1 String)
(assert (= var3434!1 ""))
(assert true)
(define-const var1065 String (append/672562846 var3434!1 "Could not load class (")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load class (") 
(declare-const var3434!2 String)
(assert (= var3434!2 (str.++ var3434!1 "Could not load class (")))
(define-const var3027 String (className/-1461999723 var36)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String className> 
(assert true)
(define-const var950 String (append/672562846 var1065 var3027)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1065!1 String)
(assert (= var1065!1 (str.++ var1065 var3027)))
(assert true)
(define-const var1541 String (append/672562846 var950 ") for type ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") for type ") 
(declare-const var950!1 String)
(assert (= var950!1 (str.++ var950 ") for type ")))
(define-const var1305 String (name/-1461999723 var36)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name> 
(assert true)
(define-const var2889 String (append/672562846 var1541 var1305)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1541!1 String)
(assert (= var1541!1 (str.++ var1541 var1305)))
(assert true)
(define-const var1554 String (toString/-2075883882 var2889)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var312 var1554 4)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r11, 4) 

(declare-const var312!1 var2218)
(declare-const var1554!1 String)
(declare-const var2753 Int)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), className/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), name/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void)}
; {var1894=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var36=r0, var2218=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var312=r3, var1557=java.lang.ClassNotFoundException, var1365=$r2, var3434=$r4, var1065=$r6, var3027=$r5, var950=$r7, var1541=$r9, var1305=$r8, var2889=$r10, var1554=$r11, var2753=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var1894, r0=var36, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2218, r3=var312, java.lang.ClassNotFoundException=var1557, $r2=var1365, $r4=var3434, $r6=var1065, $r5=var3027, $r7=var950, $r9=var1541, $r8=var1305, $r10=var2889, $r11=var1554, 4=var2753}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$r2 := @caughtexception;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load class (");	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String className>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") for type ");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r11, 4);	return null
;block_num 3