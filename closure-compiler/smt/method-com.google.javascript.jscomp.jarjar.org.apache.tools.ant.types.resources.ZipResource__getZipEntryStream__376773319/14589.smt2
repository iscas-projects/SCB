(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3703 0)
(declare-sort var3024 0)
(declare-sort var3393 0)
(declare-sort var1334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEntry/-283037758 (var3703 String) var3393)
(declare-fun close/557582583 (var3703) void)
(declare-fun var1334-init () var1334)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1552128931 (var3703) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1334 String) void)
(declare-const null-var3703 var3703)
(declare-const null-String String)
(declare-const null-var3393 var3393)
(declare-const var2807 var3703) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile 
(assert (not (= var2807 null-var3703)))
(declare-const var1417 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1417 null-String)))
(assert true)
(define-const var3783 var3393 (getEntry/-283037758 var2807 var1417)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry getEntry(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1 
(assert (not (not (= var3783 null-var3393)))) ; Negate: Cond: r2 != null  
(assert true)
;(assert (close/557582583 var2807)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: void close()>() 

(declare-const var2807!1 var3703)
(define-const var289 var1334 var1334-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3259 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3259)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3259!1 String)
(assert (= var3259!1 ""))
(assert true)
(define-const var2001 String (append/672562846 var3259!1 "no entry ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no entry ") 
(declare-const var3259!2 String)
(assert (= var3259!2 (str.++ var3259!1 "no entry ")))
(assert true)
(define-const var3704 String (append/672562846 var2001 var1417)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2001!1 String)
(assert (= var2001!1 (str.++ var2001 var1417)))
(assert true)
(define-const var138 String (append/672562846 var3704 " in ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var3704!1 String)
(assert (= var3704!1 (str.++ var3704 " in ")))
(assert true)
(define-const var3140 String (getName/-1552128931 var2807!1)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: java.lang.String getName()>() 
(assert true)
(define-const var3338 String (append/672562846 var138 var3140)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var138!1 String)
(assert (= var138!1 (str.++ var138 var3140)))
(assert true)
(define-const var452 String (toString/-2075883882 var3338)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var289 var452)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r12) 

(declare-const var289!1 var1334)
(declare-const var452!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getEntry/-283037758=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry), close/557582583=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile], void), var1334-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1552128931=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3703=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile, var2807=r0, var1417=r1, var3024=null_type, var3393=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var3783=r2, var1334=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var289=$r5, var3259=$r6, var2001=$r7, var3704=$r8, var138=$r10, var3140=$r9, var3338=$r11, var452=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile=var3703, r0=var2807, r1=var1417, null_type=var3024, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var3393, r2=var3783, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1334, $r5=var289, $r6=var3259, $r7=var2001, $r8=var3704, $r10=var138, $r9=var3140, $r11=var3338, $r12=var452}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile;	r1 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry getEntry(java.lang.String)>(r1);	if r2 != null goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource$1;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: void close()>();	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no entry ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r12);	throw $r5
;block_num 2