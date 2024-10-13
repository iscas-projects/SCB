(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1890 0)
(declare-sort var934 0)
(declare-sort var2813 0)
(declare-sort var3313 0)
(declare-sort var2081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEntry/-283037758 (var1890 String) var2813)
(declare-fun var3313-init () var3313)
(declare-fun getInputStream/-1924111197 (var1890 var2813) var2081)
(declare-fun <init>/-847525450 (var3313 var2081 var1890) void)
(declare-const null-var1890 var1890)
(declare-const null-String String)
(declare-const null-var2813 var2813)
(declare-const var3819 var1890) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile 
(assert (not (= var3819 null-var1890)))
(declare-const var3789 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3789 null-String)))
(assert true)
(define-const var1525 var2813 (getEntry/-283037758 var3819 var3789)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry getEntry(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1 
(assert (not (= var1525 null-var2813))) ; Cond: r2 != null 
(define-const var107 var3313 var3313-init) ; Statement: $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1 
(assert true)
(define-const var47 var2081 (getInputStream/-1924111197 var3819 var1525)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: java.io.InputStream getInputStream(com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry)>(r2) 
(assert true)
;(assert (<init>/-847525450 var107 var47 var3819)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1: void <init>(java.io.InputStream,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile)>($r4, r0) 

(declare-const var107!1 var3313)
(declare-const var47!1 var2081)
(declare-const var3819!1 var1890)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getEntry/-283037758=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry), var3313-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1), getInputStream/-1924111197=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry], java.io.InputStream), <init>/-847525450=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1, java.io.InputStream, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile], void)}
; {var1890=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile, var3819=r0, var3789=r1, var934=null_type, var2813=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var1525=r2, var3313=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1, var107=$r3, var2081=java.io.InputStream, var47=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile=var1890, r0=var3819, r1=var3789, null_type=var934, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var2813, r2=var1525, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1=var3313, $r3=var107, java.io.InputStream=var2081, $r4=var47}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile;	r1 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry getEntry(java.lang.String)>(r1);	if r2 != null goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1;	$r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: java.io.InputStream getInputStream(com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry)>(r2);	specialinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1: void <init>(java.io.InputStream,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile)>($r4, r0);	return $r3
;block_num 2