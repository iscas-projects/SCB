(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var396 0)
(declare-sort var3379 0)
(declare-sort var3473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isParentFirst/-1585055413 (var396 String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1033878336 (var396 String Int) void)
(declare-const null-var396 var396)
(declare-const null-String String)
(declare-const null-var3473 var3473)
(declare-const var779 var396) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var779 null-var396)))
(declare-const var3781 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3781 null-String)))
(define-const var2165 var3473 null-var3473) ; Statement: r31 = null 
(assert true)
(define-const var135 Bool (isParentFirst/-1585055413 var779 var3781)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: boolean isParentFirst(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var135 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r31 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector pathComponents> 
(assert (not (= var2165 null-var3473))) ; Negate: Cond: r31 == null  
(define-const var3242 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3242)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3242!1 String)
(assert (= var3242!1 ""))
(assert true)
(define-const var1282 String (append/672562846 var3242!1 "Resource ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource ") 
(declare-const var3242!2 String)
(assert (= var3242!2 (str.++ var3242!1 "Resource ")))
(assert true)
(define-const var3876 String (append/672562846 var1282 var3781)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1282!1 String)
(assert (= var1282!1 (str.++ var1282 var3781)))
(assert true)
(define-const var2281 String (append/672562846 var3876 " loaded from parent loader")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" loaded from parent loader") 
(declare-const var3876!1 String)
(assert (= var3876!1 (str.++ var3876 " loaded from parent loader")))
(assert true)
(define-const var1021 String (toString/-2075883882 var2281)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1033878336 var779 var1021 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r28, 4) 

(declare-const var779!1 var396)
(declare-const var1021!1 String)
(declare-const var3588 Int)
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r31 != null goto (branch) 
(assert (not (= var2165 null-var3473))) ; Cond: r31 != null 
 ; Statement: if r31 != null goto return r31 
(assert (not (= var2165 null-var3473))) ; Cond: r31 != null 
 ; Statement: return r31 
(check-sat)
(get-model)
(get-unsat-core)
; {isParentFirst/-1585055413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1033878336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String, int], void)}
; {var396=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var779=r0, var3781=r1, var3379=null_type, var3473=java.net.URL, var2165=r31, var135=$z0, var3242=$r24, var1282=$r25, var3876=$r26, var2281=$r27, var1021=$r28, var3588=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var396, r0=var779, r1=var3781, null_type=var3379, java.net.URL=var3473, r31=var2165, $z0=var135, $r24=var3242, $r25=var1282, $r26=var3876, $r27=var2281, $r28=var1021, 4=var3588}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r1 := @parameter0: java.lang.String;	r31 = null;	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: boolean isParentFirst(java.lang.String)>(r1);	if $z0 == 0 goto (branch);	if r31 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector pathComponents>;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" loaded from parent loader");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r28, 4);	goto [?= (branch)];	if r31 != null goto (branch);	if r31 != null goto return r31;	return r31
;block_num 6