(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3603 0)
(declare-sort var1514 0)
(declare-sort var3446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1033878336 (var3603 String Int) void)
(declare-fun findLoadedClass/1112001413 (var3446 String) ClassObject)
(declare-fun cast-from-var3603-to-var3446 (var3603) var3446)
(declare-const null-var3603 var3603)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var370 var3603) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var370 null-var3603)))
(declare-const var3745 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3745 null-String)))
(define-const var1679 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1679)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1679!1 String)
(assert (= var1679!1 ""))
(assert true)
(define-const var3795 String (append/672562846 var1679!1 "force loading ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("force loading ") 
(declare-const var1679!2 String)
(assert (= var1679!2 (str.++ var1679!1 "force loading ")))
(assert true)
(define-const var694 String (append/672562846 var3795 var3745)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3795!1 String)
(assert (= var3795!1 (str.++ var3795 var3745)))
(assert true)
(define-const var1189 String (toString/-2075883882 var694)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1033878336 var370 var1189 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r5, 4) 

(declare-const var370!1 var3603)
(declare-const var1189!1 String)
(declare-const var3020 Int)
(assert true)
(define-const var1769 ClassObject (findLoadedClass/1112001413 (cast-from-var3603-to-var3446 var370!1) var3745)) ; Statement: r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r2) 
 ; Statement: if r6 != null goto return r6 
(assert (not (= var1769 null-ClassObject))) ; Cond: r6 != null 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1033878336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String, int], void), findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var3603-to-var3446=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.lang.ClassLoader)}
; {var3603=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var370=r0, var3745=r2, var1514=null_type, var1679=$r1, var3795=$r3, var694=$r4, var1189=$r5, var3020=4, var3446=java.lang.ClassLoader, var1769=r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var3603, r0=var370, r2=var3745, null_type=var1514, $r1=var1679, $r3=var3795, $r4=var694, $r5=var1189, 4=var3020, java.lang.ClassLoader=var3446, r6=var1769}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("force loading ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r5, 4);	r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r2);	if r6 != null goto return r6;	return r6
;block_num 2