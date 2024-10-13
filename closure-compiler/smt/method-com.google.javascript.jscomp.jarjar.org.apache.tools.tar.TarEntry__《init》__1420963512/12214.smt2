(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var17 0)
(declare-sort var533 0)
(declare-sort var2816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-304249577 (var17) void)
(declare-fun var17_normalizeFileName/735793165 (String Bool) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun devMajor/2033466638 (var17) Int)
(declare-fun devMinor/2033466638 (var17) Int)
(declare-fun name/2033466638 (var17) String)
(declare-fun mode/2033466638 (var17) Int)
(declare-fun linkFlag/2033466638 (var17) Int)
(declare-fun userId/2033466638 (var17) Int)
(declare-fun groupId/2033466638 (var17) Int)
(declare-fun size/2033466638 (var17) Int)
(declare-fun var2816-init () var2816)
(declare-fun <init>/-788057745 (var2816) void)
(declare-fun getTime/1283854862 (var2816) Int)
(declare-fun modTime/2033466638 (var17) Int)
(declare-fun linkName/2033466638 (var17) String)
(declare-fun userName/2033466638 (var17) String)
(declare-fun groupName/2033466638 (var17) String)
(declare-const null-var17 var17)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1347 var17) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var1347 null-var17)))
(declare-const var737 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var737 null-String)))
(declare-const var1307 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1307 null-Bool)))
(assert true)
;(assert (<init>/-304249577 var1347)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>()>() 

(declare-const var1347!1 var17)
(define-const var2968 String (var17_normalizeFileName/735793165 var737 var1307)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String normalizeFileName(java.lang.String,boolean)>(r2, z0) 
(assert true)
(define-const var189 Bool (endsWith/985337093 var2968 "/")) ; Statement: z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(declare-const var1347!2 var17)
(assert (not (= var1347!2 null-var17)))
(assert (= (devMajor/2033466638 var1347!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = 0 
(declare-const var1347!3 var17)
(assert (not (= var1347!3 null-var17)))
(assert (= (devMinor/2033466638 var1347!3) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = 0 
(declare-const var1347!4 var17)
(assert (not (= var1347!4 null-var17)))
(assert (= (name/2033466638 var1347!4) var2968)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = r3 
 ; Statement: if z1 == 0 goto $i2 = 33188 
(assert (= (ite var189 1 0) 0)) ; Cond: z1 == 0 
(define-const var779 Int 33188) ; Statement: $i2 = 33188 
(assert true) ; Non Conditional
(declare-const var1347!5 var17)
(assert (not (= var1347!5 null-var17)))
(assert (= (mode/2033466638 var1347!5) var779)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2 
 ; Statement: if z1 == 0 goto $b3 = 48 
(assert (= (ite var189 1 0) 0)) ; Cond: z1 == 0 
(define-const var403 Int 48) ; Statement: $b3 = 48 
(assert true) ; Non Conditional
(declare-const var1347!6 var17)
(assert (not (= var1347!6 null-var17)))
(assert (= (linkFlag/2033466638 var1347!6) var403)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3 
(declare-const var1347!7 var17)
(assert (not (= var1347!7 null-var17)))
(assert (= (userId/2033466638 var1347!7) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L 
(declare-const var1347!8 var17)
(assert (not (= var1347!8 null-var17)))
(assert (= (groupId/2033466638 var1347!8) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L 
(declare-const var1347!9 var17)
(assert (not (= var1347!9 null-var17)))
(assert (= (size/2033466638 var1347!9) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = 0L 
(define-const var1609 var2816 var2816-init) ; Statement: $r1 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var1609)) ; Statement: specialinvoke $r1.<java.util.Date: void <init>()>() 

(declare-const var1609!1 var2816)
(assert true)
(define-const var3701 Int (getTime/1283854862 var1609!1)) ; Statement: $l0 = virtualinvoke $r1.<java.util.Date: long getTime()>() 
(define-const var320 Int (div var3701 1000)) ; Statement: $l1 = $l0 / 1000L 
(declare-const var1347!10 var17)
(assert (not (= var1347!10 null-var17)))
(assert (= (modTime/2033466638 var1347!10) var320)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long modTime> = $l1 
(declare-const var1347!11 var17)
(assert (not (= var1347!11 null-var17)))
(assert (= (linkName/2033466638 var1347!11) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "" 
(declare-const var1347!12 var17)
(assert (not (= var1347!12 null-var17)))
(assert (= (userName/2033466638 var1347!12) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = "" 
(declare-const var1347!13 var17)
(assert (not (= var1347!13 null-var17)))
(assert (= (groupName/2033466638 var1347!13) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "" 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-304249577=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], void), var17_normalizeFileName/735793165=([java.lang.String, boolean], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), devMajor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), devMinor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), name/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), mode/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), linkFlag/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], byte), userId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), groupId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), size/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), var2816-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), getTime/1283854862=([java.util.Date], long), modTime/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), linkName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), userName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), groupName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String)}
; {var17=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var1347=r0, var737=r2, var533=null_type, var1307=z0, var2968=r3, var189=z1, var779=$i2, var403=$b3, var2816=java.util.Date, var1609=$r1, var3701=$l0, var320=$l1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var17, r0=var1347, r2=var737, null_type=var533, z0=var1307, r3=var2968, z1=var189, $i2=var779, $b3=var403, java.util.Date=var2816, $r1=var1609, $l0=var3701, $l1=var320}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>()>();	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String normalizeFileName(java.lang.String,boolean)>(r2, z0);	z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("/");	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = r3;	if z1 == 0 goto $i2 = 33188;	$i2 = 33188;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2;	if z1 == 0 goto $b3 = 48;	$b3 = 48;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = 0L;	$r1 = new java.util.Date;	specialinvoke $r1.<java.util.Date: void <init>()>();	$l0 = virtualinvoke $r1.<java.util.Date: long getTime()>();	$l1 = $l0 / 1000L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long modTime> = $l1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "";	return
;block_num 5