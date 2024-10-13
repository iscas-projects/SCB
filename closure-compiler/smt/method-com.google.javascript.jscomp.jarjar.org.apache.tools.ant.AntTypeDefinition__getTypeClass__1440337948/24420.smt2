(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3649 0)
(declare-sort var1266 0)
(declare-sort var1841 0)
(declare-sort var1731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1731) String)
(declare-fun cast-from-var1841-to-var1731 (var1841) var1731)
(declare-fun name/-1461999723 (var3649) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var1266 String Int) void)
(declare-const null-var3649 var3649)
(declare-const null-var1266 var1266)
(declare-const null-var1841 var1841)
(declare-const var3616 var3649) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var3616 null-var3649)))
(declare-const var3944 var1266) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3944 null-var1266)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3001 var1841) ; Statement: $r12 := @caughtexception 
(assert (not (= var3001 null-var1841)))
(define-const var1579 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1579)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1579!1 String)
(assert (= var1579!1 ""))
(assert true)
(define-const var2152 String (append/672562846 var1579!1 "Could not load a dependent class (")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load a dependent class (") 
(declare-const var1579!2 String)
(assert (= var1579!2 (str.++ var1579!1 "Could not load a dependent class (")))
(assert true)
(define-const var3219 String (getMessage/849299655 (cast-from-var1841-to-var1731 var3001))) ; Statement: $r14 = virtualinvoke $r12.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>() 
(assert true)
(define-const var2811 String (append/672562846 var2152 var3219)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2152!1 String)
(assert (= var2152!1 (str.++ var2152 var3219)))
(assert true)
(define-const var1327 String (append/672562846 var2811 ") for type ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") for type ") 
(declare-const var2811!1 String)
(assert (= var2811!1 (str.++ var2811 ") for type ")))
(define-const var432 String (name/-1461999723 var3616)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name> 
(assert true)
(define-const var2171 String (append/672562846 var1327 var432)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1327!1 String)
(assert (= var1327!1 (str.++ var1327 var432)))
(assert true)
(define-const var420 String (toString/-2075883882 var2171)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var3944 var420 4)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r20, 4) 

(declare-const var3944!1 var1266)
(declare-const var420!1 String)
(declare-const var3179 Int)
 ; Statement: goto [?= return null] 
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1841-to-var1731=([java.lang.NoClassDefFoundError], java.lang.Throwable), name/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void)}
; {var3649=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var3616=r0, var1266=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3944=r3, var1841=java.lang.NoClassDefFoundError, var3001=$r12, var1579=$r13, var2152=$r15, var1731=java.lang.Throwable, var3219=$r14, var2811=$r16, var1327=$r18, var432=$r17, var2171=$r19, var420=$r20, var3179=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var3649, r0=var3616, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1266, r3=var3944, java.lang.NoClassDefFoundError=var1841, $r12=var3001, $r13=var1579, $r15=var2152, java.lang.Throwable=var1731, $r14=var3219, $r16=var2811, $r18=var1327, $r17=var432, $r19=var2171, $r20=var420, 4=var3179}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$r12 := @caughtexception;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load a dependent class (");	$r14 = virtualinvoke $r12.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") for type ");	$r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r20, 4);	goto [?= return null];	return null
;block_num 3