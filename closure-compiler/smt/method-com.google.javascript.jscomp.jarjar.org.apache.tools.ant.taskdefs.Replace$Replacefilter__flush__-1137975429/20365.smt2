(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2272 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replace/2050546468 (var2272) Int)
(declare-fun outputBuffer/-524338880 (var2272) String)
(declare-fun inputBuffer/-524338880 (var2272) String)
(declare-fun append/1671819796 (String String) String)
(declare-fun length/-1112840705 (String) Int)
(declare-fun delete/-2415906 (String Int Int) String)
(declare-const null-var2272 var2272)
(declare-const var3963 var2272) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter 
(assert (not (= var3963 null-var2272)))
(assert true)
;(assert (replace/2050546468 var3963)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: int replace()>() 

(declare-const var3963!1 var2272)
(define-const var1076 String (outputBuffer/-524338880 var3963!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer outputBuffer> 
(define-const var1214 String (inputBuffer/-524338880 var3963!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer> 
(assert true)
;(assert (append/1671819796 var1076 var1214)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r1) 

(declare-const var1076!1 String)
(declare-const var1214!1 String)
(define-const var1664 String (inputBuffer/-524338880 var3963!1)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer> 
(define-const var241 String (inputBuffer/-524338880 var3963!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer> 
(assert true)
(define-const var2847 Int (length/-1112840705 var241)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.StringBuffer: int length()>() 
(assert true)
;(assert (delete/-2415906 var1664 0 var2847)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(0, $i0) 

(declare-const var1664!1 String)
(declare-const var467 Int)
(declare-const var2847!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2050546468=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], int), outputBuffer/-524338880=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.StringBuffer), inputBuffer/-524338880=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.StringBuffer), append/1671819796=([java.lang.StringBuffer, java.lang.StringBuffer], java.lang.StringBuffer), length/-1112840705=([java.lang.StringBuffer], int), delete/-2415906=([java.lang.StringBuffer, int, int], java.lang.StringBuffer)}
; {var2272=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter, var3963=r0, var1076=$r2, var1214=$r1, var1664=$r4, var241=$r3, var2847=$i0, var467=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter=var2272, r0=var3963, $r2=var1076, $r1=var1214, $r4=var1664, $r3=var241, $i0=var2847, 0=var467}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>;	<java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>": 1,"<java.lang.StringBuffer: int length()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: int replace()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer outputBuffer>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>($r1);	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer>;	$i0 = virtualinvoke $r3.<java.lang.StringBuffer: int length()>();	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(0, $i0);	return
;block_num 1