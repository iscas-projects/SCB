(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2617 0)
(declare-sort var3344 0)
(declare-sort var2820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isParentFirst/-1585055413 (var2617 String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1033878336 (var2617 String Int) void)
(declare-const null-var2617 var2617)
(declare-const null-String String)
(declare-const null-var2820 var2820)
(declare-const var1914 var2617) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var1914 null-var2617)))
(declare-const var1500 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1500 null-String)))
(define-const var565 var2820 null-var2820) ; Statement: r23 = null 
(assert true)
(define-const var3254 Bool (isParentFirst/-1585055413 var1914 var1500)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: boolean isParentFirst(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3254 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r23 == null goto r23 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.io.InputStream loadResource(java.lang.String)>(r1) 
(assert (not (= var565 null-var2820))) ; Negate: Cond: r23 == null  
(define-const var3990 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3990)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3990!1 String)
(assert (= var3990!1 ""))
(assert true)
(define-const var1441 String (append/672562846 var3990!1 "ResourceStream for ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ResourceStream for ") 
(declare-const var3990!2 String)
(assert (= var3990!2 (str.++ var3990!1 "ResourceStream for ")))
(assert true)
(define-const var2143 String (append/672562846 var1441 var1500)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1441!1 String)
(assert (= var1441!1 (str.++ var1441 var1500)))
(assert true)
(define-const var447 String (append/672562846 var2143 " loaded from parent loader")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" loaded from parent loader") 
(declare-const var2143!1 String)
(assert (= var2143!1 (str.++ var2143 " loaded from parent loader")))
(assert true)
(define-const var2105 String (toString/-2075883882 var447)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1033878336 var1914 var2105 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r22, 4) 

(declare-const var1914!1 var2617)
(declare-const var2105!1 String)
(declare-const var3260 Int)
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r23 != null goto (branch) 
(assert (not (= var565 null-var2820))) ; Cond: r23 != null 
 ; Statement: if r23 != null goto return r23 
(assert (not (= var565 null-var2820))) ; Cond: r23 != null 
 ; Statement: return r23 
(check-sat)
(get-model)
(get-unsat-core)
; {isParentFirst/-1585055413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1033878336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String, int], void)}
; {var2617=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var1914=r0, var1500=r1, var3344=null_type, var2820=java.io.InputStream, var565=r23, var3254=$z0, var3990=$r18, var1441=$r19, var2143=$r20, var447=$r21, var2105=$r22, var3260=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var2617, r0=var1914, r1=var1500, null_type=var3344, java.io.InputStream=var2820, r23=var565, $z0=var3254, $r18=var3990, $r19=var1441, $r20=var2143, $r21=var447, $r22=var2105, 4=var3260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r1 := @parameter0: java.lang.String;	r23 = null;	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: boolean isParentFirst(java.lang.String)>(r1);	if $z0 == 0 goto (branch);	if r23 == null goto r23 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.io.InputStream loadResource(java.lang.String)>(r1);	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ResourceStream for ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" loaded from parent loader");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r22, 4);	goto [?= (branch)];	if r23 != null goto (branch);	if r23 != null goto return r23;	return r23
;block_num 6