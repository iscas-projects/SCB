(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3743 0)
(declare-sort var3780 0)
(declare-sort var3422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-304249577 (var3743) void)
(declare-fun var3743_normalizeFileName/735793165 (String Bool) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun devMajor/2033466638 (var3743) Int)
(declare-fun devMinor/2033466638 (var3743) Int)
(declare-fun name/2033466638 (var3743) String)
(declare-fun mode/2033466638 (var3743) Int)
(declare-fun linkFlag/2033466638 (var3743) Int)
(declare-fun userId/2033466638 (var3743) Int)
(declare-fun groupId/2033466638 (var3743) Int)
(declare-fun size/2033466638 (var3743) Int)
(declare-fun var3422-init () var3422)
(declare-fun <init>/-788057745 (var3422) void)
(declare-fun getTime/1283854862 (var3422) Int)
(declare-fun modTime/2033466638 (var3743) Int)
(declare-fun linkName/2033466638 (var3743) String)
(declare-fun userName/2033466638 (var3743) String)
(declare-fun groupName/2033466638 (var3743) String)
(declare-const null-var3743 var3743)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2380 var3743) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var2380 null-var3743)))
(declare-const var235 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var235 null-String)))
(declare-const var1565 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1565 null-Bool)))
(assert true)
;(assert (<init>/-304249577 var2380)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>()>() 

(declare-const var2380!1 var3743)
(define-const var2320 String (var3743_normalizeFileName/735793165 var235 var1565)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String normalizeFileName(java.lang.String,boolean)>(r2, z0) 
(assert true)
(define-const var600 Bool (endsWith/985337093 var2320 "/")) ; Statement: z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(declare-const var2380!2 var3743)
(assert (not (= var2380!2 null-var3743)))
(assert (= (devMajor/2033466638 var2380!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = 0 
(declare-const var2380!3 var3743)
(assert (not (= var2380!3 null-var3743)))
(assert (= (devMinor/2033466638 var2380!3) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = 0 
(declare-const var2380!4 var3743)
(assert (not (= var2380!4 null-var3743)))
(assert (= (name/2033466638 var2380!4) var2320)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = r3 
 ; Statement: if z1 == 0 goto $i2 = 33188 
(assert (not (= (ite var600 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2410 Int 16877) ; Statement: $i2 = 16877 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2] 
(assert true) ; Non Conditional
(declare-const var2380!5 var3743)
(assert (not (= var2380!5 null-var3743)))
(assert (= (mode/2033466638 var2380!5) var2410)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2 
 ; Statement: if z1 == 0 goto $b3 = 48 
(assert (= (ite var600 1 0) 0)) ; Cond: z1 == 0 
(define-const var284 Int 48) ; Statement: $b3 = 48 
(assert true) ; Non Conditional
(declare-const var2380!6 var3743)
(assert (not (= var2380!6 null-var3743)))
(assert (= (linkFlag/2033466638 var2380!6) var284)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3 
(declare-const var2380!7 var3743)
(assert (not (= var2380!7 null-var3743)))
(assert (= (userId/2033466638 var2380!7) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L 
(declare-const var2380!8 var3743)
(assert (not (= var2380!8 null-var3743)))
(assert (= (groupId/2033466638 var2380!8) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L 
(declare-const var2380!9 var3743)
(assert (not (= var2380!9 null-var3743)))
(assert (= (size/2033466638 var2380!9) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = 0L 
(define-const var1943 var3422 var3422-init) ; Statement: $r1 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var1943)) ; Statement: specialinvoke $r1.<java.util.Date: void <init>()>() 

(declare-const var1943!1 var3422)
(assert true)
(define-const var171 Int (getTime/1283854862 var1943!1)) ; Statement: $l0 = virtualinvoke $r1.<java.util.Date: long getTime()>() 
(define-const var1436 Int (div var171 1000)) ; Statement: $l1 = $l0 / 1000L 
(declare-const var2380!10 var3743)
(assert (not (= var2380!10 null-var3743)))
(assert (= (modTime/2033466638 var2380!10) var1436)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long modTime> = $l1 
(declare-const var2380!11 var3743)
(assert (not (= var2380!11 null-var3743)))
(assert (= (linkName/2033466638 var2380!11) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "" 
(declare-const var2380!12 var3743)
(assert (not (= var2380!12 null-var3743)))
(assert (= (userName/2033466638 var2380!12) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = "" 
(declare-const var2380!13 var3743)
(assert (not (= var2380!13 null-var3743)))
(assert (= (groupName/2033466638 var2380!13) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "" 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-304249577=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], void), var3743_normalizeFileName/735793165=([java.lang.String, boolean], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), devMajor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), devMinor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), name/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), mode/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), linkFlag/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], byte), userId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), groupId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), size/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), var3422-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), getTime/1283854862=([java.util.Date], long), modTime/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), linkName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), userName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), groupName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String)}
; {var3743=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var2380=r0, var235=r2, var3780=null_type, var1565=z0, var2320=r3, var600=z1, var2410=$i2, var284=$b3, var3422=java.util.Date, var1943=$r1, var171=$l0, var1436=$l1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var3743, r0=var2380, r2=var235, null_type=var3780, z0=var1565, r3=var2320, z1=var600, $i2=var2410, $b3=var284, java.util.Date=var3422, $r1=var1943, $l0=var171, $l1=var1436}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>()>();	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String normalizeFileName(java.lang.String,boolean)>(r2, z0);	z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("/");	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = r3;	if z1 == 0 goto $i2 = 33188;	$i2 = 16877;	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2;	if z1 == 0 goto $b3 = 48;	$b3 = 48;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = 0L;	$r1 = new java.util.Date;	specialinvoke $r1.<java.util.Date: void <init>()>();	$l0 = virtualinvoke $r1.<java.util.Date: long getTime()>();	$l1 = $l0 / 1000L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long modTime> = $l1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "";	return
;block_num 5