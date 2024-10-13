(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var578 0)
(declare-sort var3630 0)
(declare-sort var3682 0)
(declare-sort var3311 0)
(declare-sort var714 0)
(declare-sort var1825 0)
(declare-sort var1916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3682-init () var3682)
(declare-fun <init>/964458484 (var3682) void)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3311 String Int) void)
(declare-fun cast-from-var578-to-var3311 (var578) var3311)
(declare-fun var1825_getEnvironmentVariables/1156710858 () var714)
(declare-fun var714_entrySet/1101202697 (var714) var1916)
(declare-fun var1916_iterator/1911472585 (var1916) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun addProperties/2145264245 (var578 var3682) void)
(declare-const null-var578 var578)
(declare-const null-String String)
(declare-const var187 var578) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property 
(assert (not (= var187 null-var578)))
(declare-const var2961 String) ; Statement: r21 := @parameter0: java.lang.String 
(assert (not (= var2961 null-String)))
(define-const var1705 var3682 var3682-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var1705)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var1705!1 var3682)
(assert true)
(define-const var3463 Bool (endsWith/985337093 var2961 ".")) ; Statement: $z0 = virtualinvoke r21.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var3463 1 0) 0))) ; Cond: $z0 != 0 
(define-const var819 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var819)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var819!1 String)
(assert (= var819!1 ""))
(assert true)
(define-const var3334 String (append/672562846 var819!1 "Loading Environment ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Loading Environment ") 
(declare-const var819!2 String)
(assert (= var819!2 (str.++ var819!1 "Loading Environment ")))
(assert true)
(define-const var3837 String (append/672562846 var3334 var2961)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var3334!1 String)
(assert (= var3334!1 (str.++ var3334 var2961)))
(assert true)
(define-const var286 String (toString/-2075883882 var3837)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var578-to-var3311 var187) var286 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r5, 3) 

(declare-const var187!1 var578)
(declare-const var286!1 String)
(declare-const var3020 Int)
(define-const var1188 var714 var1825_getEnvironmentVariables/1156710858) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.util.Map getEnvironmentVariables()>() 
(define-const var1085 var1916 (var714_entrySet/1101202697 var1188)) ; Statement: $r6 = interfaceinvoke $r19.<java.util.Map: java.util.Set entrySet()>() 
(define-const var2883 Iterator (var1916_iterator/1911472585 var1085)) ; Statement: $r20 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var885 Bool (Iterator_hasNext/-1669924200 var2883)) ; Statement: $z1 = interfaceinvoke $r20.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void addProperties(java.util.Properties)>($r0) 
(assert (= (ite var885 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (addProperties/2145264245 var187!1 var1705!1)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void addProperties(java.util.Properties)>($r0) 

(declare-const var187!2 var578)
(declare-const var1705!2 var3682)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3682-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var578-to-var3311=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var1825_getEnvironmentVariables/1156710858=([], java.util.Map), var714_entrySet/1101202697=([java.util.Map], java.util.Set), var1916_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), addProperties/2145264245=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, java.util.Properties], void)}
; {var578=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, var187=r1, var2961=r21, var3630=null_type, var3682=java.util.Properties, var1705=$r0, var3463=$z0, var819=$r2, var3334=$r3, var3837=$r4, var286=$r5, var3311=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3020=3, var714=java.util.Map, var1825=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var1188=$r19, var1916=java.util.Set, var1085=$r6, var2883=$r20, var885=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property=var578, r1=var187, r21=var2961, null_type=var3630, java.util.Properties=var3682, $r0=var1705, $z0=var3463, $r2=var819, $r3=var3334, $r4=var3837, $r5=var286, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3311, 3=var3020, java.util.Map=var714, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var1825, $r19=var1188, java.util.Set=var1916, $r6=var1085, $r20=var2883, $z1=var885}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property;	r21 := @parameter0: java.lang.String;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$z0 = virtualinvoke r21.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Loading Environment ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r5, 3);	$r19 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.util.Map getEnvironmentVariables()>();	$r6 = interfaceinvoke $r19.<java.util.Map: java.util.Set entrySet()>();	$r20 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r20.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void addProperties(java.util.Properties)>($r0);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void addProperties(java.util.Properties)>($r0);	return
;block_num 4