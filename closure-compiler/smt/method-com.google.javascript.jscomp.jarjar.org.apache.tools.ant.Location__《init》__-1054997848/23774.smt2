(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1462 0)
(declare-sort var3957 0)
(declare-sort var766 0)
(declare-sort var1805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var766) void)
(declare-fun cast-from-var1462-to-var766 (var1462) var766)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun fromURI/1121591145 (var1805 String) String)
(declare-fun fileName/-323537676 (var1462) String)
(declare-fun lineNumber/-323537676 (var1462) Int)
(declare-fun columnNumber/-323537676 (var1462) Int)
(declare-const null-var1462 var1462)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1462-FILE_UTILS var1805)
(declare-const var529 var1462) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location 
(assert (not (= var529 null-var1462)))
(declare-const var3886 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3886 null-String)))
(declare-const var609 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var609 null-Int)))
(declare-const var563 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var563 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1462-to-var766 var529))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var529!1 var1462)
 ; Statement: if r1 == null goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1 
(assert (not (= var3886 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var3243 Bool (startsWith/-1785782452 var3886 "file:")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("file:") 
 ; Statement: if $z0 == 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1 
(assert (not (= (ite var3243 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var875 var1805 var1462-FILE_UTILS) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> 
(assert true)
(define-const var3951 String (fromURI/1121591145 var875 var3886)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.lang.String fromURI(java.lang.String)>(r1) 
(declare-const var529!2 var1462)
(assert (not (= var529!2 null-var1462)))
(assert (= (fileName/-323537676 var529!2) var3951)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = $r3 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int lineNumber> = i0] 
(assert true) ; Non Conditional
(declare-const var529!3 var1462)
(assert (not (= var529!3 null-var1462)))
(assert (= (lineNumber/-323537676 var529!3) var609)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int lineNumber> = i0 
(declare-const var529!4 var1462)
(assert (not (= var529!4 null-var1462)))
(assert (= (columnNumber/-323537676 var529!4) var563)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int columnNumber> = i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1462-to-var766=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), fromURI/1121591145=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.lang.String], java.lang.String), fileName/-323537676=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], java.lang.String), lineNumber/-323537676=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], int), columnNumber/-323537676=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], int)}
; {var1462=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var529=r0, var3886=r1, var3957=null_type, var609=i0, var563=i1, var766=java.lang.Object, var3243=$z0, var1805=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var875=$r2, var3951=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1462, r0=var529, r1=var3886, null_type=var3957, i0=var609, i1=var563, java.lang.Object=var766, $z0=var3243, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var1805, $r2=var875, $r3=var3951}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	if r1 == null goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1;	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("file:");	if $z0 == 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = r1;	$r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.lang.String fromURI(java.lang.String)>(r1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String fileName> = $r3;	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int lineNumber> = i0];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int lineNumber> = i0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: int columnNumber> = i1;	return
;block_num 4