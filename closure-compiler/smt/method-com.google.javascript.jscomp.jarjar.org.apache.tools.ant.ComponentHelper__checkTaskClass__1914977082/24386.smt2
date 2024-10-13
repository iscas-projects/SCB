(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3028 0)
(declare-sort var2411 0)
(declare-sort var122 0)
(declare-sort var1736 0)
(declare-sort var222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var2411_isPublic/-426263739 (Int) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var122) String)
(declare-fun cast-from-ClassObject-to-var122 (ClassObject) var122)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun project/-1909293844 (var3028) var1736)
(declare-fun log/2093317233 (var1736 String Int) void)
(declare-fun var222-init () var222)
(declare-fun <init>/1864341934 (var222 String) void)
(declare-const null-var3028 var3028)
(declare-const null-ClassObject ClassObject)
(declare-const var565 var3028) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var565 null-var3028)))
(declare-const var3585 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3585 null-ClassObject)))
(assert true)
(define-const var354 Int (getModifiers/698981592 var3585)) ; Statement: $i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>() 
(define-const var3888 Bool (var2411_isPublic/-426263739 var354)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0) 
 ; Statement: if $z0 != 0 goto $i1 = virtualinvoke r0.<java.lang.Class: int getModifiers()>() 
(assert (not (not (= (ite var3888 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2357 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2357)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2357!1 String)
(assert (= var2357!1 ""))
(assert true)
(define-const var680 String (append/-1031950772 var2357!1 (cast-from-ClassObject-to-var122 var3585))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2357!2 String)
(assert (str.prefixof var2357!1 var2357!2))
(assert true)
(define-const var191 String (append/672562846 var680 " is not public")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not public") 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 " is not public")))
(assert true)
(define-const var3843 String (toString/-2075883882 var191)) ; Statement: r22 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3631 var1736 (project/-1909293844 var565)) ; Statement: $r13 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(assert true)
;(assert (log/2093317233 var3631 var3843 0)) ; Statement: virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r22, 0) 

(declare-const var3631!1 var1736)
(declare-const var3843!1 String)
(declare-const var3623 Int)
(define-const var3444 var222 var222-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var3444 var3843!1)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r22) 

(declare-const var3444!1 var222)
(declare-const var3843!2 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getModifiers/698981592=([java.lang.Class], int), var2411_isPublic/-426263739=([int], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var122=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), project/-1909293844=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), var222-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3028=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var565=r3, var3585=r0, var354=$i0, var2411=java.lang.reflect.Modifier, var3888=$z0, var2357=$r10, var122=java.lang.Object, var680=$r11, var191=$r12, var3843=r22, var1736=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3631=$r13, var3623=0, var222=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3444=$r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var3028, r3=var565, r0=var3585, $i0=var354, java.lang.reflect.Modifier=var2411, $z0=var3888, $r10=var2357, java.lang.Object=var122, $r11=var680, $r12=var191, r22=var3843, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1736, $r13=var3631, 0=var3623, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var222, $r14=var3444}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r0 := @parameter0: java.lang.Class;	$i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0);	if $z0 != 0 goto $i1 = virtualinvoke r0.<java.lang.Class: int getModifiers()>();	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not public");	r22 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r22, 0);	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r22);	throw $r14
;block_num 2