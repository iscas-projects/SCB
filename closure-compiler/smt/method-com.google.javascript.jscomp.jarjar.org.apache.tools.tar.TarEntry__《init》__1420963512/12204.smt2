(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3053 0)
(declare-sort var2801 0)
(declare-sort var3736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-304249577 (var3053) void)
(declare-fun var3053_normalizeFileName/735793165 (String Bool) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun devMajor/2033466638 (var3053) Int)
(declare-fun devMinor/2033466638 (var3053) Int)
(declare-fun name/2033466638 (var3053) String)
(declare-fun mode/2033466638 (var3053) Int)
(declare-fun linkFlag/2033466638 (var3053) Int)
(declare-fun userId/2033466638 (var3053) Int)
(declare-fun groupId/2033466638 (var3053) Int)
(declare-fun size/2033466638 (var3053) Int)
(declare-fun var3736-init () var3736)
(declare-fun <init>/-788057745 (var3736) void)
(declare-fun getTime/1283854862 (var3736) Int)
(declare-fun modTime/2033466638 (var3053) Int)
(declare-fun linkName/2033466638 (var3053) String)
(declare-fun userName/2033466638 (var3053) String)
(declare-fun groupName/2033466638 (var3053) String)
(declare-const null-var3053 var3053)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1614 var3053) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var1614 null-var3053)))
(declare-const var3783 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3783 null-String)))
(declare-const var3037 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3037 null-Bool)))
(assert true)
;(assert (<init>/-304249577 var1614)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>()>() 

(declare-const var1614!1 var3053)
(define-const var1255 String (var3053_normalizeFileName/735793165 var3783 var3037)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String normalizeFileName(java.lang.String,boolean)>(r2, z0) 
(assert true)
(define-const var2915 Bool (endsWith/985337093 var1255 "/")) ; Statement: z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(declare-const var1614!2 var3053)
(assert (not (= var1614!2 null-var3053)))
(assert (= (devMajor/2033466638 var1614!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = 0 
(declare-const var1614!3 var3053)
(assert (not (= var1614!3 null-var3053)))
(assert (= (devMinor/2033466638 var1614!3) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = 0 
(declare-const var1614!4 var3053)
(assert (not (= var1614!4 null-var3053)))
(assert (= (name/2033466638 var1614!4) var1255)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = r3 
 ; Statement: if z1 == 0 goto $i2 = 33188 
(assert (= (ite var2915 1 0) 0)) ; Cond: z1 == 0 
(define-const var2242 Int 33188) ; Statement: $i2 = 33188 
(assert true) ; Non Conditional
(declare-const var1614!5 var3053)
(assert (not (= var1614!5 null-var3053)))
(assert (= (mode/2033466638 var1614!5) var2242)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2 
 ; Statement: if z1 == 0 goto $b3 = 48 
(assert (not (= (ite var2915 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var3940 Int 53) ; Statement: $b3 = 53 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3] 
(assert true) ; Non Conditional
(declare-const var1614!6 var3053)
(assert (not (= var1614!6 null-var3053)))
(assert (= (linkFlag/2033466638 var1614!6) var3940)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3 
(declare-const var1614!7 var3053)
(assert (not (= var1614!7 null-var3053)))
(assert (= (userId/2033466638 var1614!7) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L 
(declare-const var1614!8 var3053)
(assert (not (= var1614!8 null-var3053)))
(assert (= (groupId/2033466638 var1614!8) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L 
(declare-const var1614!9 var3053)
(assert (not (= var1614!9 null-var3053)))
(assert (= (size/2033466638 var1614!9) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = 0L 
(define-const var850 var3736 var3736-init) ; Statement: $r1 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var850)) ; Statement: specialinvoke $r1.<java.util.Date: void <init>()>() 

(declare-const var850!1 var3736)
(assert true)
(define-const var2618 Int (getTime/1283854862 var850!1)) ; Statement: $l0 = virtualinvoke $r1.<java.util.Date: long getTime()>() 
(define-const var3854 Int (div var2618 1000)) ; Statement: $l1 = $l0 / 1000L 
(declare-const var1614!10 var3053)
(assert (not (= var1614!10 null-var3053)))
(assert (= (modTime/2033466638 var1614!10) var3854)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long modTime> = $l1 
(declare-const var1614!11 var3053)
(assert (not (= var1614!11 null-var3053)))
(assert (= (linkName/2033466638 var1614!11) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "" 
(declare-const var1614!12 var3053)
(assert (not (= var1614!12 null-var3053)))
(assert (= (userName/2033466638 var1614!12) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = "" 
(declare-const var1614!13 var3053)
(assert (not (= var1614!13 null-var3053)))
(assert (= (groupName/2033466638 var1614!13) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "" 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-304249577=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], void), var3053_normalizeFileName/735793165=([java.lang.String, boolean], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), devMajor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), devMinor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), name/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), mode/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), linkFlag/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], byte), userId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), groupId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), size/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), var3736-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), getTime/1283854862=([java.util.Date], long), modTime/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), linkName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), userName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), groupName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String)}
; {var3053=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var1614=r0, var3783=r2, var2801=null_type, var3037=z0, var1255=r3, var2915=z1, var2242=$i2, var3940=$b3, var3736=java.util.Date, var850=$r1, var2618=$l0, var3854=$l1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var3053, r0=var1614, r2=var3783, null_type=var2801, z0=var3037, r3=var1255, z1=var2915, $i2=var2242, $b3=var3940, java.util.Date=var3736, $r1=var850, $l0=var2618, $l1=var3854}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>()>();	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String normalizeFileName(java.lang.String,boolean)>(r2, z0);	z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("/");	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = r3;	if z1 == 0 goto $i2 = 33188;	$i2 = 33188;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2;	if z1 == 0 goto $b3 = 48;	$b3 = 53;	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = 0L;	$r1 = new java.util.Date;	specialinvoke $r1.<java.util.Date: void <init>()>();	$l0 = virtualinvoke $r1.<java.util.Date: long getTime()>();	$l1 = $l0 / 1000L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long modTime> = $l1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "";	return
;block_num 5