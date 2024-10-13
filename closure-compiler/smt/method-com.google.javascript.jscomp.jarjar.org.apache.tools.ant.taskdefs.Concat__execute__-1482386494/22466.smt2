(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3503 0)
(declare-sort var2982 0)
(declare-sort var2291 0)
(declare-sort var3352 0)
(declare-sort var1171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/400802253 (var3503) void)
(declare-fun binary/-134376592 (var3503) Bool)
(declare-fun getResources/-1413956612 (var3503) var2982)
(declare-fun isUpToDate/-1355152123 (var3503 var2982) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun dest/-134376592 (var3503) var2291)
(declare-fun append/-1031950772 (String var3352) String)
(declare-fun cast-from-var2291-to-var3352 (var2291) var3352)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1171 String Int) void)
(declare-fun cast-from-var3503-to-var1171 (var3503) var1171)
(declare-const null-var3503 var3503)
(declare-const var1918 var3503) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat 
(assert (not (= var1918 null-var3503)))
(assert true)
;(assert (validate/400802253 var1918)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: void validate()>() 

(declare-const var1918!1 var3503)
(define-const var71 Bool (binary/-134376592 var1918!1)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: boolean binary> 
 ; Statement: if $z0 == 0 goto $r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection getResources()>() 
(assert (= (ite var71 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2051 var2982 (getResources/-1413956612 var1918!1)) ; Statement: $r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection getResources()>() 
(assert true)
(define-const var1344 Bool (isUpToDate/-1355152123 var1918!1 var2051)) ; Statement: $z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: boolean isUpToDate(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection)>($r10) 
 ; Statement: if $z1 == 0 goto $z2 = interfaceinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection: boolean isEmpty()>() 
(assert (not (= (ite var1344 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3995 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3995)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3995!1 String)
(assert (= var3995!1 ""))
(define-const var605 var2291 (dest/-134376592 var1918!1)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource dest> 
(assert true)
(define-const var606 String (append/-1031950772 var3995!1 (cast-from-var2291-to-var3352 var605))) ; Statement: $r6 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3995!2 String)
(assert (str.prefixof var3995!1 var3995!2))
(assert true)
(define-const var1313 String (append/672562846 var606 " is up-to-date.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is up-to-date.") 
(declare-const var606!1 String)
(assert (= var606!1 (str.++ var606 " is up-to-date.")))
(assert true)
(define-const var1381 String (toString/-2075883882 var1313)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3503-to-var1171 var1918!1) var1381 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: void log(java.lang.String,int)>($r8, 3) 

(declare-const var1918!2 var3503)
(declare-const var1381!1 String)
(declare-const var724 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/400802253=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], void), binary/-134376592=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], boolean), getResources/-1413956612=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection), isUpToDate/-1355152123=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), dest/-134376592=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2291-to-var3352=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3503-to-var1171=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3503=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var1918=r0, var71=$z0, var2982=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, var2051=$r10, var1344=$z1, var3995=$r21, var2291=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var605=$r5, var3352=java.lang.Object, var606=$r6, var1313=$r7, var1381=$r8, var1171=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var724=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var3503, r0=var1918, $z0=var71, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection=var2982, $r10=var2051, $z1=var1344, $r21=var3995, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2291, $r5=var605, java.lang.Object=var3352, $r6=var606, $r7=var1313, $r8=var1381, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1171, 3=var724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: void validate()>();	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: boolean binary>;	if $z0 == 0 goto $r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection getResources()>();	$r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection getResources()>();	$z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: boolean isUpToDate(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection)>($r10);	if $z1 == 0 goto $z2 = interfaceinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection: boolean isEmpty()>();	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource dest>;	$r6 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is up-to-date.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: void log(java.lang.String,int)>($r8, 3);	return
;block_num 3