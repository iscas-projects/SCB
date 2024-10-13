(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2170 0)
(declare-sort var1733 0)
(declare-sort var2942 0)
(declare-sort var1403 0)
(declare-sort var1643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun doFilesonly/1631877189 (var2170) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logWhenWriting/-397699190 (var2170 String Int) void)
(declare-const null-var2170 var2170)
(declare-const null-var1733 var1733)
(declare-const null-var2942 var2942)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1643__ (Array Int var1643))
(declare-const var2134 var2170) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip 
(assert (not (= var2134 null-var2170)))
(declare-const var2131 var1733) ; Statement: r11 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2131 null-var1733)))
(declare-const var1413 var2942) ; Statement: r13 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var1413 null-var2942)))
(declare-const var1228 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1228 null-String)))
(declare-const var1180 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var1180 null-Int)))
(declare-const var897 (Array Int var1643)) ; Statement: r12 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[] 
(assert (not (= var897 null-__Array__Int__var1643__)))
(define-const var384 Bool (doFilesonly/1631877189 var2134)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: boolean doFilesonly> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: java.util.Hashtable addedDirs> 
(assert (not (= (ite var384 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2135 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2135)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2135!1 String)
(assert (= var2135!1 ""))
(assert true)
(define-const var3086 String (append/672562846 var2135!1 "skipping directory ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("skipping directory ") 
(declare-const var2135!2 String)
(assert (= var2135!2 (str.++ var2135!1 "skipping directory ")))
(assert true)
(define-const var2683 String (append/672562846 var3086 var1228)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3086!1 String)
(assert (= var3086!1 (str.++ var3086 var1228)))
(assert true)
(define-const var1158 String (append/672562846 var2683 " for file-only archive")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for file-only archive") 
(declare-const var2683!1 String)
(assert (= var2683!1 (str.++ var2683 " for file-only archive")))
(assert true)
(define-const var1533 String (toString/-2075883882 var1158)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logWhenWriting/-397699190 var2134 var1533 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void logWhenWriting(java.lang.String,int)>($r18, 3) 

(declare-const var2134!1 var2170)
(declare-const var1533!1 String)
(declare-const var3638 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {doFilesonly/1631877189=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logWhenWriting/-397699190=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, java.lang.String, int], void)}
; {var2170=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, var2134=r0, var1733=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2131=r11, var2942=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var1413=r13, var1228=r1, var1403=null_type, var1180=i4, var1643=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField, var897=r12, var384=$z0, var2135=$r14, var3086=$r15, var2683=$r16, var1158=$r17, var1533=$r18, var3638=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip=var2170, r0=var2134, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1733, r11=var2131, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var2942, r13=var1413, r1=var1228, null_type=var1403, i4=var1180, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField=var1643, r12=var897, $z0=var384, $r14=var2135, $r15=var3086, $r16=var2683, $r17=var1158, $r18=var1533, 3=var3638}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip;	r11 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r13 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	r1 := @parameter2: java.lang.String;	i4 := @parameter3: int;	r12 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[];	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: boolean doFilesonly>;	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: java.util.Hashtable addedDirs>;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("skipping directory ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for file-only archive");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void logWhenWriting(java.lang.String,int)>($r18, 3);	return
;block_num 2