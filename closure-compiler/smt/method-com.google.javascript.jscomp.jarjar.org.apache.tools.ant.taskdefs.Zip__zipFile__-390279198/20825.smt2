(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1053 0)
(declare-sort var478 0)
(declare-sort var1927 0)
(declare-sort var1274 0)
(declare-sort var2798 0)
(declare-sort var2553 0)
(declare-sort var3600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entries/1631877189 (var1053) var2553)
(declare-fun containsKey/1347873298 (var2553 var3600) Bool)
(declare-fun cast-from-String-to-var3600 (String) var3600)
(declare-fun duplicate/1631877189 (var1053) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logWhenWriting/-397699190 (var1053 String Int) void)
(declare-const null-var1053 var1053)
(declare-const null-var478 var478)
(declare-const null-var1927 var1927)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2798 var2798)
(declare-const var2281 var1053) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip 
(assert (not (= var2281 null-var1053)))
(declare-const var2562 var478) ; Statement: r11 := @parameter0: java.io.InputStream 
(assert (not (= var2562 null-var478)))
(declare-const var3341 var1927) ; Statement: r13 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var3341 null-var1927)))
(declare-const var3319 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3319 null-String)))
(declare-const var1506 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var1506 null-Int)))
(declare-const var242 var2798) ; Statement: r32 := @parameter4: java.io.File 
(assert (not (= var242 null-var2798)))
(declare-const var1365 Int) ; Statement: i1 := @parameter5: int 
(assert (not (= var1365 null-Int)))
(define-const var600 var2553 (entries/1631877189 var2281)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: java.util.Hashtable entries> 
(assert true)
(define-const var3251 Bool (containsKey/1347873298 var600 (cast-from-String-to-var3600 var3319))) ; Statement: $z0 = virtualinvoke $r2.<java.util.Hashtable: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r38 = new java.lang.StringBuilder 
(assert (not (= (ite var3251 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1653 String "preserve") ; Statement: $r18 = "preserve" 
(define-const var1631 String (duplicate/1631877189 var2281)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: java.lang.String duplicate> 
(assert true)
(define-const var154 Bool (= var1653 var1631)) ; Statement: $z6 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>($r17) 
 ; Statement: if $z6 == 0 goto $r20 = "fail" 
(assert (not (= (ite var154 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var2595 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2595)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2595!1 String)
(assert (= var2595!1 ""))
(assert true)
(define-const var1644 String (append/672562846 var2595!1 var3319)) ; Statement: $r29 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2595!2 String)
(assert (= var2595!2 (str.++ var2595!1 var3319)))
(assert true)
(define-const var3929 String (append/672562846 var1644 " already added, skipping")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already added, skipping") 
(declare-const var1644!1 String)
(assert (= var1644!1 (str.++ var1644 " already added, skipping")))
(assert true)
(define-const var2201 String (toString/-2075883882 var3929)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logWhenWriting/-397699190 var2281 var2201 2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void logWhenWriting(java.lang.String,int)>($r31, 2) 

(declare-const var2281!1 var1053)
(declare-const var2201!1 String)
(declare-const var1437 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {entries/1631877189=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip], java.util.Hashtable), containsKey/1347873298=([java.util.Hashtable, java.lang.Object], boolean), cast-from-String-to-var3600=([java.lang.String], java.lang.Object), duplicate/1631877189=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logWhenWriting/-397699190=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, java.lang.String, int], void)}
; {var1053=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, var2281=r0, var478=java.io.InputStream, var2562=r11, var1927=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var3341=r13, var3319=r1, var1274=null_type, var1506=l0, var2798=java.io.File, var242=r32, var1365=i1, var2553=java.util.Hashtable, var600=$r2, var3600=java.lang.Object, var3251=$z0, var1653=$r18, var1631=$r17, var154=$z6, var2595=$r35, var1644=$r29, var3929=$r30, var2201=$r31, var1437=2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip=var1053, r0=var2281, java.io.InputStream=var478, r11=var2562, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var1927, r13=var3341, r1=var3319, null_type=var1274, l0=var1506, java.io.File=var2798, r32=var242, i1=var1365, java.util.Hashtable=var2553, $r2=var600, java.lang.Object=var3600, $z0=var3251, $r18=var1653, $r17=var1631, $z6=var154, $r35=var2595, $r29=var1644, $r30=var3929, $r31=var2201, 2=var1437}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip;	r11 := @parameter0: java.io.InputStream;	r13 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	r1 := @parameter2: java.lang.String;	l0 := @parameter3: long;	r32 := @parameter4: java.io.File;	i1 := @parameter5: int;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: java.util.Hashtable entries>;	$z0 = virtualinvoke $r2.<java.util.Hashtable: boolean containsKey(java.lang.Object)>(r1);	if $z0 == 0 goto $r38 = new java.lang.StringBuilder;	$r18 = "preserve";	$r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: java.lang.String duplicate>;	$z6 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>($r17);	if $z6 == 0 goto $r20 = "fail";	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already added, skipping");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void logWhenWriting(java.lang.String,int)>($r31, 2);	return
;block_num 3