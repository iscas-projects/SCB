(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var908 0)
(declare-sort var3317 0)
(declare-sort var2117 0)
(declare-sort var1103 0)
(declare-sort var3495 0)
(declare-sort var2027 0)
(declare-sort var2994 0)
(declare-sort var628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun publicId/960128408 (var908) String)
(declare-fun fileDTDs/960128408 (var908) var2117)
(declare-fun var2117_get/1088891777 (var2117 var1103) var1103)
(declare-fun cast-from-String-to-var1103 (String) var1103)
(declare-fun cast-from-var1103-to-var3495 (var1103) var3495)
(declare-fun resourceDTDs/960128408 (var908) var2117)
(declare-fun cast-from-var1103-to-String (var1103) String)
(declare-fun getClass/1258963082 (var1103) ClassObject)
(declare-fun cast-from-var908-to-var1103 (var908) var1103)
(declare-fun getResourceAsStream/2018191724 (ClassObject String) var2027)
(declare-fun owningTask/960128408 (var908) var2994)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2994 String Int) void)
(declare-fun var628-init () var628)
(declare-fun <init>/-1889831121 (var628 var2027) void)
(declare-const null-var908 var908)
(declare-const null-String String)
(declare-const null-var3495 var3495)
(declare-const null-var2027 var2027)
(declare-const var2715 var908) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler 
(assert (not (= var2715 null-var908)))
(declare-const var3843 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3843 null-String)))
(declare-const var1499 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var1499 null-String)))
(declare-const var2715!1 var908)
(assert (not (= var2715!1 null-var908)))
(assert (= (publicId/960128408 var2715!1) var3843)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String publicId> = r1 
(define-const var182 var2117 (fileDTDs/960128408 var2715!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map fileDTDs> 
(define-const var130 var1103 (var2117_get/1088891777 var182 (cast-from-String-to-var1103 var3843))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2934 var3495 (cast-from-var1103-to-var3495 var130)) ; Statement: r4 = (java.io.File) $r3 
 ; Statement: if r4 == null goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map resourceDTDs> 
(assert (= var2934 null-var3495)) ; Cond: r4 == null 
(define-const var3959 var2117 (resourceDTDs/960128408 var2715!1)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map resourceDTDs> 
(define-const var620 var1103 (var2117_get/1088891777 var3959 (cast-from-String-to-var1103 var3843))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1565 String (cast-from-var1103-to-String var620)) ; Statement: $r49 = (java.lang.String) $r6 
 ; Statement: if $r49 == null goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map urlDTDs> 
(assert (not (= var1565 null-String))) ; Negate: Cond: $r49 == null  
(assert true)
(define-const var986 ClassObject (getClass/1258963082 (cast-from-var908-to-var1103 var2715!1))) ; Statement: $r26 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2335 var2027 (getResourceAsStream/2018191724 var986 var1565)) ; Statement: r50 = virtualinvoke $r26.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r49) 
 ; Statement: if r50 == null goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map urlDTDs> 
(assert (not (= var2335 null-var2027))) ; Negate: Cond: r50 == null  
(define-const var1541 var2994 (owningTask/960128408 var2715!1)) ; Statement: $r29 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task owningTask> 
(define-const var2854 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2854)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2854!1 String)
(assert (= var2854!1 ""))
(assert true)
(define-const var3044 String (append/672562846 var2854!1 "Resolved ")) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resolved ") 
(declare-const var2854!2 String)
(assert (= var2854!2 (str.++ var2854!1 "Resolved ")))
(assert true)
(define-const var1871 String (append/672562846 var3044 var3843)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3044!1 String)
(assert (= var3044!1 (str.++ var3044 var3843)))
(assert true)
(define-const var1796 String (append/672562846 var1871 " to local resource ")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to local resource ") 
(declare-const var1871!1 String)
(assert (= var1871!1 (str.++ var1871 " to local resource ")))
(assert true)
(define-const var2136 String (append/672562846 var1796 var1565)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49) 
(declare-const var1796!1 String)
(assert (= var1796!1 (str.++ var1796 var1565)))
(assert true)
(define-const var3696 String (toString/-2075883882 var2136)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 var1541 var3696 3)) ; Statement: virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void log(java.lang.String,int)>($r34, 3) 

(declare-const var1541!1 var2994)
(declare-const var3696!1 String)
(declare-const var1660 Int)
(define-const var3109 var628 var628-init) ; Statement: $r35 = new org.xml.sax.InputSource 
(assert true)
;(assert (<init>/-1889831121 var3109 var2335)) ; Statement: specialinvoke $r35.<org.xml.sax.InputSource: void <init>(java.io.InputStream)>(r50) 

(declare-const var3109!1 var628)
(declare-const var2335!1 var2027)
 ; Statement: return $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {publicId/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.lang.String), fileDTDs/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.util.Map), var2117_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1103=([java.lang.String], java.lang.Object), cast-from-var1103-to-var3495=([java.lang.Object], java.io.File), resourceDTDs/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.util.Map), cast-from-var1103-to-String=([java.lang.Object], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var908-to-var1103=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.lang.Object), getResourceAsStream/2018191724=([java.lang.Class, java.lang.String], java.io.InputStream), owningTask/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), var628-init=([], org.xml.sax.InputSource), <init>/-1889831121=([org.xml.sax.InputSource, java.io.InputStream], void)}
; {var908=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler, var2715=r0, var3843=r1, var3317=null_type, var1499=r13, var2117=java.util.Map, var182=$r2, var1103=java.lang.Object, var130=$r3, var3495=java.io.File, var2934=r4, var3959=$r5, var620=$r6, var1565=$r49, var986=$r26, var2027=java.io.InputStream, var2335=r50, var2994=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1541=$r29, var2854=$r28, var3044=$r30, var1871=$r31, var1796=$r32, var2136=$r33, var3696=$r34, var1660=3, var628=org.xml.sax.InputSource, var3109=$r35}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler=var908, r0=var2715, r1=var3843, null_type=var3317, r13=var1499, java.util.Map=var2117, $r2=var182, java.lang.Object=var1103, $r3=var130, java.io.File=var3495, r4=var2934, $r5=var3959, $r6=var620, $r49=var1565, $r26=var986, java.io.InputStream=var2027, r50=var2335, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2994, $r29=var1541, $r28=var2854, $r30=var3044, $r31=var1871, $r32=var1796, $r33=var2136, $r34=var3696, 3=var1660, org.xml.sax.InputSource=var628, $r35=var3109}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler;	r1 := @parameter0: java.lang.String;	r13 := @parameter1: java.lang.String;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String publicId> = r1;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map fileDTDs>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.io.File) $r3;	if r4 == null goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map resourceDTDs>;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map resourceDTDs>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r49 = (java.lang.String) $r6;	if $r49 == null goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map urlDTDs>;	$r26 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r50 = virtualinvoke $r26.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r49);	if r50 == null goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map urlDTDs>;	$r29 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task owningTask>;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resolved ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to local resource ");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void log(java.lang.String,int)>($r34, 3);	$r35 = new org.xml.sax.InputSource;	specialinvoke $r35.<org.xml.sax.InputSource: void <init>(java.io.InputStream)>(r50);	return $r35
;block_num 4