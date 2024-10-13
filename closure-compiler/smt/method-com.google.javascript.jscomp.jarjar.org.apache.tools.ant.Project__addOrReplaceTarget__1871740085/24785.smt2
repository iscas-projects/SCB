(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var555 0)
(declare-sort var216 0)
(declare-sort var664 0)
(declare-sort var3635 0)
(declare-sort var1981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var555 String Int) void)
(declare-fun setProject/-1688873970 (var664 var555) void)
(declare-fun targets/173117946 (var555) var3635)
(declare-fun put/1981026245 (var3635 var1981 var1981) var1981)
(declare-fun cast-from-String-to-var1981 (String) var1981)
(declare-fun cast-from-var664-to-var1981 (var664) var1981)
(declare-const null-var555 var555)
(declare-const null-String String)
(declare-const null-var664 var664)
(declare-const var941 var555) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var941 null-var555)))
(declare-const var2928 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2928 null-String)))
(declare-const var541 var664) ; Statement: r6 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var541 null-var664)))
(define-const var2294 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2294)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2294!1 String)
(assert (= var2294!1 ""))
(assert true)
(define-const var2697 String (append/672562846 var2294!1 " +Target: ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" +Target: ") 
(declare-const var2294!2 String)
(assert (= var2294!2 (str.++ var2294!1 " +Target: ")))
(assert true)
(define-const var1751 String (append/672562846 var2697 var2928)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2697!1 String)
(assert (= var2697!1 (str.++ var2697 var2928)))
(assert true)
(define-const var3388 String (toString/-2075883882 var1751)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var941 var3388 4)) ; Statement: virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r4, 4) 

(declare-const var941!1 var555)
(declare-const var3388!1 String)
(declare-const var3717 Int)
(assert true)
;(assert (setProject/-1688873970 var541 var941!1)) ; Statement: virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r5) 

(declare-const var541!1 var664)
(declare-const var941!2 var555)
(define-const var473 var3635 (targets/173117946 var941!2)) ; Statement: $r7 = r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.util.Hashtable targets> 
(assert true)
;(assert (put/1981026245 var473 (cast-from-String-to-var1981 var2928) (cast-from-var664-to-var1981 var541!1))) ; Statement: virtualinvoke $r7.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r6) 

(declare-const var473!1 var3635)
(declare-const var2928!1 String)
(declare-const var541!2 var664)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), setProject/-1688873970=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), targets/173117946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1981=([java.lang.String], java.lang.Object), cast-from-var664-to-var1981=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.Object)}
; {var555=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var941=r5, var2928=r1, var216=null_type, var664=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var541=r6, var2294=$r0, var2697=$r2, var1751=$r3, var3388=r4, var3717=4, var3635=java.util.Hashtable, var473=$r7, var1981=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var555, r5=var941, r1=var2928, null_type=var216, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var664, r6=var541, $r0=var2294, $r2=var2697, $r3=var1751, r4=var3388, 4=var3717, java.util.Hashtable=var3635, $r7=var473, java.lang.Object=var1981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" +Target: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r4, 4);	virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r5);	$r7 = r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.util.Hashtable targets>;	virtualinvoke $r7.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r6);	return
;block_num 1