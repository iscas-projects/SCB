(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1392 0)
(declare-sort var2904 0)
(declare-sort var2634 0)
(declare-sort var2194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2904) void)
(declare-fun cast-from-var1392-to-var2904 (var1392) var2904)
(declare-fun magic/2033466638 (var1392) String)
(declare-fun version/2033466638 (var1392) String)
(declare-fun name/2033466638 (var1392) String)
(declare-fun linkName/2033466638 (var1392) String)
(declare-fun var2634_getProperty/-1659784690 (String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun userId/2033466638 (var1392) Int)
(declare-fun groupId/2033466638 (var1392) Int)
(declare-fun userName/2033466638 (var1392) String)
(declare-fun groupName/2033466638 (var1392) String)
(declare-fun file/2033466638 (var1392) var2194)
(declare-const null-var1392 var1392)
(declare-const null-var2194 var2194)
(declare-const var1250 var1392) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var1250 null-var1392)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1392-to-var2904 var1250))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1250!1 var1392)
(declare-const var1250!2 var1392)
(assert (not (= var1250!2 null-var1392)))
(assert (= (magic/2033466638 var1250!2) "ustar\u0000")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String magic> = "ustar\u0000" 
(declare-const var1250!3 var1392)
(assert (not (= var1250!3 null-var1392)))
(assert (= (version/2033466638 var1250!3) "00")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String version> = "00" 
(declare-const var1250!4 var1392)
(assert (not (= var1250!4 null-var1392)))
(assert (= (name/2033466638 var1250!4) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = "" 
(declare-const var1250!5 var1392)
(assert (not (= var1250!5 null-var1392)))
(assert (= (linkName/2033466638 var1250!5) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "" 
(define-const var2334 String (var2634_getProperty/-1659784690 "user.name" "")) ; Statement: r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("user.name", "") 
(assert true)
(define-const var351 Int (length/-134980193 var2334)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 31 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L 
(assert (<= var351 31)) ; Cond: $i0 <= 31 
(declare-const var1250!6 var1392)
(assert (not (= var1250!6 null-var1392)))
(assert (= (userId/2033466638 var1250!6) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L 
(declare-const var1250!7 var1392)
(assert (not (= var1250!7 null-var1392)))
(assert (= (groupId/2033466638 var1250!7) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L 
(declare-const var1250!8 var1392)
(assert (not (= var1250!8 null-var1392)))
(assert (= (userName/2033466638 var1250!8) var2334)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = r1 
(declare-const var1250!9 var1392)
(assert (not (= var1250!9 null-var1392)))
(assert (= (groupName/2033466638 var1250!9) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "" 
(declare-const var1250!10 var1392)
(assert (not (= var1250!10 null-var1392)))
(assert (= (file/2033466638 var1250!10) null-var2194)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.io.File file> = null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1392-to-var2904=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.Object), magic/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), version/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), name/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), linkName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), var2634_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), userId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), groupId/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long), userName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), groupName/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.lang.String), file/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], java.io.File)}
; {var1392=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var1250=r0, var2904=java.lang.Object, var2634=java.lang.System, var2334=r1, var351=$i0, var2194=java.io.File}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var1392, r0=var1250, java.lang.Object=var2904, java.lang.System=var2634, r1=var2334, $i0=var351, java.io.File=var2194}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String magic> = "ustar\u0000";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String version> = "00";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String name> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String linkName> = "";	r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("user.name", "");	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 <= 31 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long userId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long groupId> = 0L;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String userName> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.lang.String groupName> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: java.io.File file> = null;	return
;block_num 2