(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1976 0)
(declare-sort var235 0)
(declare-sort var3695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1033878336 (var1976 String Int) void)
(declare-fun findLoadedClass/1112001413 (var3695 String) ClassObject)
(declare-fun cast-from-var1976-to-var3695 (var1976) var3695)
(declare-const null-var1976 var1976)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2154 var1976) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var2154 null-var1976)))
(declare-const var424 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var424 null-String)))
(define-const var326 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var326)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var326!1 String)
(assert (= var326!1 ""))
(assert true)
(define-const var987 String (append/672562846 var326!1 "force system loading ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("force system loading ") 
(declare-const var326!2 String)
(assert (= var326!2 (str.++ var326!1 "force system loading ")))
(assert true)
(define-const var2354 String (append/672562846 var987 var424)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var987!1 String)
(assert (= var987!1 (str.++ var987 var424)))
(assert true)
(define-const var667 String (toString/-2075883882 var2354)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1033878336 var2154 var667 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r5, 4) 

(declare-const var2154!1 var1976)
(declare-const var667!1 String)
(declare-const var194 Int)
(assert true)
(define-const var2365 ClassObject (findLoadedClass/1112001413 (cast-from-var1976-to-var3695 var2154!1) var424)) ; Statement: r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r2) 
 ; Statement: if r6 != null goto return r6 
(assert (not (= var2365 null-ClassObject))) ; Cond: r6 != null 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1033878336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String, int], void), findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var1976-to-var3695=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.lang.ClassLoader)}
; {var1976=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var2154=r0, var424=r2, var235=null_type, var326=$r1, var987=$r3, var2354=$r4, var667=$r5, var194=4, var3695=java.lang.ClassLoader, var2365=r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var1976, r0=var2154, r2=var424, null_type=var235, $r1=var326, $r3=var987, $r4=var2354, $r5=var667, 4=var194, java.lang.ClassLoader=var3695, r6=var2365}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("force system loading ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r5, 4);	r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r2);	if r6 != null goto return r6;	return r6
;block_num 2