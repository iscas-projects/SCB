(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2826 0)
(declare-sort var815 0)
(declare-sort var11 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/1955827059 (var2826) var815)
(declare-fun append/-1031950772 (String var11) String)
(declare-fun cast-from-var815-to-var11 (var815) var11)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2826 var2826)
(declare-const var2357 var2826) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.URLResolver 
(assert (not (= var2357 null-var2826)))
(define-const var1246 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1246)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1246!1 String)
(assert (= var1246!1 ""))
(assert true)
(define-const var410 String (append/672562846 var1246!1 "URL[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("URL[") 
(declare-const var1246!2 String)
(assert (= var1246!2 (str.++ var1246!1 "URL[")))
(define-const var3492 var815 (url/1955827059 var2357)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.URLResolver: java.net.URL url> 
(assert true)
(define-const var1890 String (append/-1031950772 var410 (cast-from-var815-to-var11 var3492))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var410!1 String)
(assert (str.prefixof var410 var410!1))
(assert true)
(define-const var3878 String (append/672562846 var1890 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1890!1 String)
(assert (= var1890!1 (str.++ var1890 "]")))
(assert true)
(define-const var522 String (toString/-2075883882 var3878)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/1955827059=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.URLResolver], java.net.URL), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var815-to-var11=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2826=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.URLResolver, var2357=r1, var1246=$r0, var410=$r3, var815=java.net.URL, var3492=$r2, var11=java.lang.Object, var1890=$r4, var3878=$r5, var522=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.URLResolver=var2826, r1=var2357, $r0=var1246, $r3=var410, java.net.URL=var815, $r2=var3492, java.lang.Object=var11, $r4=var1890, $r5=var3878, $r6=var522}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.URLResolver;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("URL[");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.resolvers.URLResolver: java.net.URL url>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1