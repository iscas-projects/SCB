(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var617 0)
(declare-sort var3053 0)
(declare-sort var2366 0)
(declare-sort var3549 0)
(declare-sort var3138 0)
(declare-sort var3382 0)
(declare-sort var1159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun publicId/960128408 (var617) String)
(declare-fun fileDTDs/960128408 (var617) var2366)
(declare-fun var2366_get/1088891777 (var2366 var3549) var3549)
(declare-fun cast-from-String-to-var3549 (String) var3549)
(declare-fun cast-from-var3549-to-var3138 (var3549) var3138)
(declare-fun resourceDTDs/960128408 (var617) var2366)
(declare-fun cast-from-var3549-to-String (var3549) String)
(declare-fun urlDTDs/960128408 (var617) var2366)
(declare-fun cast-from-var3549-to-var3382 (var3549) var3382)
(declare-fun owningTask/960128408 (var617) var1159)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1159 String Int) void)
(declare-const null-var617 var617)
(declare-const null-String String)
(declare-const null-var3138 var3138)
(declare-const null-var3382 var3382)
(declare-const var2840 var617) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler 
(assert (not (= var2840 null-var617)))
(declare-const var3282 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3282 null-String)))
(declare-const var1941 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var1941 null-String)))
(declare-const var2840!1 var617)
(assert (not (= var2840!1 null-var617)))
(assert (= (publicId/960128408 var2840!1) var3282)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String publicId> = r1 
(define-const var889 var2366 (fileDTDs/960128408 var2840!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map fileDTDs> 
(define-const var2278 var3549 (var2366_get/1088891777 var889 (cast-from-String-to-var3549 var3282))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2063 var3138 (cast-from-var3549-to-var3138 var2278)) ; Statement: r4 = (java.io.File) $r3 
 ; Statement: if r4 == null goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map resourceDTDs> 
(assert (= var2063 null-var3138)) ; Cond: r4 == null 
(define-const var1846 var2366 (resourceDTDs/960128408 var2840!1)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map resourceDTDs> 
(define-const var954 var3549 (var2366_get/1088891777 var1846 (cast-from-String-to-var3549 var3282))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2036 String (cast-from-var3549-to-String var954)) ; Statement: $r49 = (java.lang.String) $r6 
 ; Statement: if $r49 == null goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map urlDTDs> 
(assert (= var2036 null-String)) ; Cond: $r49 == null 
(define-const var2627 var2366 (urlDTDs/960128408 var2840!1)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map urlDTDs> 
(define-const var1006 var3549 (var2366_get/1088891777 var2627 (cast-from-String-to-var3549 var3282))) ; Statement: $r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2650 var3382 (cast-from-var3549-to-var3382 var1006)) ; Statement: $r27 = (java.net.URL) $r8 
 ; Statement: if $r27 == null goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task owningTask> 
(assert (= var2650 null-var3382)) ; Cond: $r27 == null 
(define-const var3300 var1159 (owningTask/960128408 var2840!1)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task owningTask> 
(define-const var326 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var326)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var326!1 String)
(assert (= var326!1 ""))
(assert true)
(define-const var721 String (append/672562846 var326!1 "Could not resolve (publicId: ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve (publicId: ") 
(declare-const var326!2 String)
(assert (= var326!2 (str.++ var326!1 "Could not resolve (publicId: ")))
(assert true)
(define-const var1601 String (append/672562846 var721 var3282)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var721!1 String)
(assert (= var721!1 (str.++ var721 var3282)))
(assert true)
(define-const var1797 String (append/672562846 var1601 ", systemId: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", systemId: ") 
(declare-const var1601!1 String)
(assert (= var1601!1 (str.++ var1601 ", systemId: ")))
(assert true)
(define-const var2011 String (append/672562846 var1797 var1941)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var1797!1 String)
(assert (= var1797!1 (str.++ var1797 var1941)))
(assert true)
(define-const var3483 String (append/672562846 var2011 ") to a local entity")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") to a local entity") 
(declare-const var2011!1 String)
(assert (= var2011!1 (str.++ var2011 ") to a local entity")))
(assert true)
(define-const var276 String (toString/-2075883882 var3483)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 var3300 var276 2)) ; Statement: virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void log(java.lang.String,int)>($r17, 2) 

(declare-const var3300!1 var1159)
(declare-const var276!1 String)
(declare-const var338 Int)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {publicId/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.lang.String), fileDTDs/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.util.Map), var2366_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3549=([java.lang.String], java.lang.Object), cast-from-var3549-to-var3138=([java.lang.Object], java.io.File), resourceDTDs/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.util.Map), cast-from-var3549-to-String=([java.lang.Object], java.lang.String), urlDTDs/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.util.Map), cast-from-var3549-to-var3382=([java.lang.Object], java.net.URL), owningTask/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void)}
; {var617=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler, var2840=r0, var3282=r1, var3053=null_type, var1941=r13, var2366=java.util.Map, var889=$r2, var3549=java.lang.Object, var2278=$r3, var3138=java.io.File, var2063=r4, var1846=$r5, var954=$r6, var2036=$r49, var2627=$r7, var1006=$r8, var3382=java.net.URL, var2650=$r27, var1159=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3300=$r10, var326=$r9, var721=$r11, var1601=$r12, var1797=$r14, var2011=$r15, var3483=$r16, var276=$r17, var338=2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler=var617, r0=var2840, r1=var3282, null_type=var3053, r13=var1941, java.util.Map=var2366, $r2=var889, java.lang.Object=var3549, $r3=var2278, java.io.File=var3138, r4=var2063, $r5=var1846, $r6=var954, $r49=var2036, $r7=var2627, $r8=var1006, java.net.URL=var3382, $r27=var2650, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1159, $r10=var3300, $r9=var326, $r11=var721, $r12=var1601, $r14=var1797, $r15=var2011, $r16=var3483, $r17=var276, 2=var338}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler;	r1 := @parameter0: java.lang.String;	r13 := @parameter1: java.lang.String;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String publicId> = r1;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map fileDTDs>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.io.File) $r3;	if r4 == null goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map resourceDTDs>;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map resourceDTDs>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r49 = (java.lang.String) $r6;	if $r49 == null goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map urlDTDs>;	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.util.Map urlDTDs>;	$r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r27 = (java.net.URL) $r8;	if $r27 == null goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task owningTask>;	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task owningTask>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve (publicId: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", systemId: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") to a local entity");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: void log(java.lang.String,int)>($r17, 2);	return null
;block_num 4