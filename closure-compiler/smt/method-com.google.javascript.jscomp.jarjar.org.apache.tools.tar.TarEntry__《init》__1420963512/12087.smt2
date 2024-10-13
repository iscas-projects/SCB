(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var786 0)
(declare-sort var431 0)
(declare-sort var3036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-304249577 (var786) void)
(declare-fun var786_normalizeFileName/735793165 (String Bool) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun devMajor/2033466638 (var786) Int)
(declare-fun devMinor/2033466638 (var786) Int)
(declare-fun name/2033466638 (var786) String)
(declare-fun mode/2033466638 (var786) Int)
(declare-fun linkFlag/2033466638 (var786) Int)
(declare-fun userId/2033466638 (var786) Int)
(declare-fun groupId/2033466638 (var786) Int)
(declare-fun size/2033466638 (var786) Int)
(declare-fun var3036-init () var3036)
(declare-fun <init>/-788057745 (var3036) void)
(declare-fun getTime/1283854862 (var3036) Int)
(declare-fun modTime/2033466638 (var786) Int)
(declare-fun linkName/2033466638 (var786) String)
(declare-fun userName/2033466638 (var786) String)
(declare-fun groupName/2033466638 (var786) String)
(declare-const null-var786 var786)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3084 var786) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var3084 null-var786)))
(declare-const var154 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var154 null-String)))
(declare-const var2387 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2387 null-Bool)))
(assert true)
;(assert (<init>/-304249577 var3084)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>()>() 

(declare-const var3084!1 var786)
(define-const var1033 String (var786_normalizeFileName/735793165 var154 var2387)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String normalizeFileName(java.lang.String,boolean)>(r2, z0) 
(assert true)
(define-const var1772 Bool (endsWith/985337093 var1033 "/")) ; Statement: z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(declare-const var3084!2 var786)
(assert (not (= var3084!2 null-var786)))
(assert (= (devMajor/2033466638 var3084!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = 0 
(declare-const var3084!3 var786)
(assert (not (= var3084!3 null-var786)))
(assert (= (devMinor/2033466638 var3084!3) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = 0 
(declare-const var3084!4 var786)
(assert (not (= var3084!4 null-var786)))
(assert (= (name/2033466638 var3084!4) var1033)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = r3 
 ; Statement: if z1 == 0 goto $i2 = 33188 
(assert (not (= (ite var1772 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2462 Int 16877) ; Statement: $i2 = 16877 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2] 
(assert true) ; Non Conditional
(declare-const var3084!5 var786)
(assert (not (= var3084!5 null-var786)))
(assert (= (mode/2033466638 var3084!5) var2462)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2 
 ; Statement: if z1 == 0 goto $b3 = 48 
(assert (not (= (ite var1772 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2472 Int 53) ; Statement: $b3 = 53 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3] 
(assert true) ; Non Conditional
(declare-const var3084!6 var786)
(assert (not (= var3084!6 null-var786)))
(assert (= (linkFlag/2033466638 var3084!6) var2472)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3 
(declare-const var3084!7 var786)
(assert (not (= var3084!7 null-var786)))
(assert (= (userId/2033466638 var3084!7) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L 
(declare-const var3084!8 var786)
(assert (not (= var3084!8 null-var786)))
(assert (= (groupId/2033466638 var3084!8) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L 
(declare-const var3084!9 var786)
(assert (not (= var3084!9 null-var786)))
(assert (= (size/2033466638 var3084!9) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = 0L 
(define-const var3886 var3036 var3036-init) ; Statement: $r1 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var3886)) ; Statement: specialinvoke $r1.<java.util.Date: void <init>()>() 

(declare-const var3886!1 var3036)
(assert true)
(define-const var1531 Int (getTime/1283854862 var3886!1)) ; Statement: $l0 = virtualinvoke $r1.<java.util.Date: long getTime()>() 
(define-const var1226 Int (div var1531 1000)) ; Statement: $l1 = $l0 / 1000L 
(declare-const var3084!10 var786)
(assert (not (= var3084!10 null-var786)))
(assert (= (modTime/2033466638 var3084!10) var1226)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long modTime> = $l1 
(declare-const var3084!11 var786)
(assert (not (= var3084!11 null-var786)))
(assert (= (linkName/2033466638 var3084!11) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "" 
(declare-const var3084!12 var786)
(assert (not (= var3084!12 null-var786)))
(assert (= (userName/2033466638 var3084!12) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = "" 
(declare-const var3084!13 var786)
(assert (not (= var3084!13 null-var786)))
(assert (= (groupName/2033466638 var3084!13) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "" 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-304249577=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], void), var786_normalizeFileName/735793165=([java.lang.String, boolean], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), devMajor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), devMinor/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), name/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), mode/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], int), linkFlag/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], byte), userId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), groupId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), size/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), var3036-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), getTime/1283854862=([java.util.Date], long), modTime/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), linkName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), userName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), groupName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String)}
; {var786=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var3084=r0, var154=r2, var431=null_type, var2387=z0, var1033=r3, var1772=z1, var2462=$i2, var2472=$b3, var3036=java.util.Date, var3886=$r1, var1531=$l0, var1226=$l1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var786, r0=var3084, r2=var154, null_type=var431, z0=var2387, r3=var1033, z1=var1772, $i2=var2462, $b3=var2472, java.util.Date=var3036, $r1=var3886, $l0=var1531, $l1=var1226}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>()>();	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String normalizeFileName(java.lang.String,boolean)>(r2, z0);	z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("/");	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMajor> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int devMinor> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = r3;	if z1 == 0 goto $i2 = 33188;	$i2 = 16877;	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: int mode> = $i2;	if z1 == 0 goto $b3 = 48;	$b3 = 53;	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: byte linkFlag> = $b3;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = 0L;	$r1 = new java.util.Date;	specialinvoke $r1.<java.util.Date: void <init>()>();	$l0 = virtualinvoke $r1.<java.util.Date: long getTime()>();	$l1 = $l0 / 1000L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long modTime> = $l1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "";	return
;block_num 5