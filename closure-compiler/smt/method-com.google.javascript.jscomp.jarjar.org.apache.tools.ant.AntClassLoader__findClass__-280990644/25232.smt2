(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3287 0)
(declare-sort var191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1033878336 (var3287 String Int) void)
(declare-fun findClassInComponents/638738225 (var3287 String) ClassObject)
(declare-const null-var3287 var3287)
(declare-const null-String String)
(declare-const var1643 var3287) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var1643 null-var3287)))
(declare-const var3916 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3916 null-String)))
(define-const var2465 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2465)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2465!1 String)
(assert (= var2465!1 ""))
(assert true)
(define-const var3542 String (append/672562846 var2465!1 "Finding class ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Finding class ") 
(declare-const var2465!2 String)
(assert (= var2465!2 (str.++ var2465!1 "Finding class ")))
(assert true)
(define-const var338 String (append/672562846 var3542 var3916)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3542!1 String)
(assert (= var3542!1 (str.++ var3542 var3916)))
(assert true)
(define-const var2499 String (toString/-2075883882 var338)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1033878336 var1643 var2499 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r5, 4) 

(declare-const var1643!1 var3287)
(declare-const var2499!1 String)
(declare-const var1620 Int)
(assert true)
(define-const var45 ClassObject (findClassInComponents/638738225 var1643!1 var3916)) ; Statement: $r6 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Class findClassInComponents(java.lang.String)>(r2) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1033878336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String, int], void), findClassInComponents/638738225=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String], java.lang.Class)}
; {var3287=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var1643=r0, var3916=r2, var191=null_type, var2465=$r1, var3542=$r3, var338=$r4, var2499=$r5, var1620=4, var45=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var3287, r0=var1643, r2=var3916, null_type=var191, $r1=var2465, $r3=var3542, $r4=var338, $r5=var2499, 4=var1620, $r6=var45}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Finding class ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r5, 4);	$r6 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Class findClassInComponents(java.lang.String)>(r2);	return $r6
;block_num 1