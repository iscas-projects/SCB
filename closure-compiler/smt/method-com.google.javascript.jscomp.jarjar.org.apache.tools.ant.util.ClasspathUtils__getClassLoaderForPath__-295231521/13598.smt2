(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1367 0)
(declare-sort var317 0)
(declare-sort var3343 0)
(declare-sort var97 0)
(declare-sort var3870 0)
(declare-sort var2937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRefId/-573194013 (var317) String)
(declare-fun getReference/-1489021156 (var1367 String) var3343)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-var3343-to-var97 (var3343) var97)
(declare-fun var2937_getClassLoaderForPath/441790432 (var1367 var97 String Bool) var3870)
(declare-const null-var1367 var1367)
(declare-const null-var317 var317)
(declare-const null-Bool Bool)
(declare-const var3903 var1367) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3903 null-var1367)))
(declare-const var3007 var317) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference 
(assert (not (= var3007 null-var317)))
(declare-const var324 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var324 null-Bool)))
(assert true)
(define-const var2526 String (getRefId/-573194013 var3007)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: java.lang.String getRefId()>() 
(assert true)
(define-const var1418 var3343 (getReference/-1489021156 var3903 var2526)) ; Statement: r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.Object getReference(java.lang.String)>(r1) 
(define-const var2755 Bool false) ; Statement: $z0 = r3 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
 ; Statement: if $z0 != 0 goto $r4 = new java.lang.StringBuilder 
(assert (not (= (ite var2755 1 0) 0))) ; Cond: $z0 != 0 
(define-const var591 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var591)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var591!1 String)
(assert (= var591!1 ""))
(assert true)
(define-const var2591 String (append/672562846 var591!1 "ant.loader.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.loader.") 
(declare-const var591!2 String)
(assert (= var591!2 (str.++ var591!1 "ant.loader.")))
(assert true)
(define-const var2738 String (append/672562846 var2591 var2526)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2591!1 String)
(assert (= var2591!1 (str.++ var2591 var2526)))
(assert true)
(define-const var2860 String (toString/-2075883882 var2738)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1759 var97 (cast-from-var3343-to-var97 var1418)) ; Statement: $r8 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path) r3 
(define-const var716 var3870 (var2937_getClassLoaderForPath/441790432 var3903 var1759 var2860 var324)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ClasspathUtils: java.lang.ClassLoader getClassLoaderForPath(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,java.lang.String,boolean)>(r2, $r8, r7, z1) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getRefId/-573194013=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference], java.lang.String), getReference/-1489021156=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-var3343-to-var97=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), var2937_getClassLoaderForPath/441790432=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, java.lang.String, boolean], java.lang.ClassLoader)}
; {var1367=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3903=r2, var317=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference, var3007=r0, var324=z1, var2526=r1, var3343=java.lang.Object, var1418=r3, var2755=$z0, var591=$r4, var2591=$r5, var2738=$r6, var2860=r7, var97=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var1759=$r8, var3870=java.lang.ClassLoader, var2937=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ClasspathUtils, var716=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1367, r2=var3903, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference=var317, r0=var3007, z1=var324, r1=var2526, java.lang.Object=var3343, r3=var1418, $z0=var2755, $r4=var591, $r5=var2591, $r6=var2738, r7=var2860, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var97, $r8=var1759, java.lang.ClassLoader=var3870, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ClasspathUtils=var2937, $r9=var716}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference;	z1 := @parameter2: boolean;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: java.lang.String getRefId()>();	r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.Object getReference(java.lang.String)>(r1);	$z0 = r3 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	if $z0 != 0 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ant.loader.");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path) r3;	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ClasspathUtils: java.lang.ClassLoader getClassLoaderForPath(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,java.lang.String,boolean)>(r2, $r8, r7, z1);	return $r9
;block_num 2