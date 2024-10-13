(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var647 0)
(declare-sort var2447 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun writer/-1035160567 (var647) var2447)
(declare-fun inputBuffer/-1035160567 (var647) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun write/654681022 (var2447 String) void)
(declare-fun length/-1112840705 (String) Int)
(declare-fun delete/-2415906 (String Int Int) String)
(declare-const null-var647 var647)
(declare-const var1889 var647) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput 
(assert (not (= var1889 null-var647)))
(define-const var982 var2447 (writer/-1035160567 var1889)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput: java.io.Writer writer> 
(define-const var3291 String (inputBuffer/-1035160567 var1889)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput: java.lang.StringBuffer inputBuffer> 
(assert true)
(define-const var3362 String (toString/-222306083 var3291)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (write/654681022 var982 var3362)) ; Statement: virtualinvoke $r2.<java.io.Writer: void write(java.lang.String)>($r3) 

(declare-const var982!1 var2447)
(declare-const var3362!1 String)
(define-const var3755 String (inputBuffer/-1035160567 var1889)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput: java.lang.StringBuffer inputBuffer> 
(define-const var734 String (inputBuffer/-1035160567 var1889)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput: java.lang.StringBuffer inputBuffer> 
(assert true)
(define-const var3599 Int (length/-1112840705 var734)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.StringBuffer: int length()>() 
(assert true)
;(assert (delete/-2415906 var3755 0 var3599)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(0, $i0) 

(declare-const var3755!1 String)
(declare-const var185 Int)
(declare-const var3599!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {writer/-1035160567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput], java.io.Writer), inputBuffer/-1035160567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void), length/-1112840705=([java.lang.StringBuffer], int), delete/-2415906=([java.lang.StringBuffer, int, int], java.lang.StringBuffer)}
; {var647=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput, var1889=r0, var2447=java.io.Writer, var982=$r2, var3291=$r1, var3362=$r3, var3755=$r5, var734=$r4, var3599=$i0, var185=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput=var647, r0=var1889, java.io.Writer=var2447, $r2=var982, $r1=var3291, $r3=var3362, $r5=var3755, $r4=var734, $i0=var3599, 0=var185}
;seq <java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.StringBuffer: int length()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput: java.io.Writer writer>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput: java.lang.StringBuffer inputBuffer>;	$r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r2.<java.io.Writer: void write(java.lang.String)>($r3);	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput: java.lang.StringBuffer inputBuffer>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$FileOutput: java.lang.StringBuffer inputBuffer>;	$i0 = virtualinvoke $r4.<java.lang.StringBuffer: int length()>();	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(0, $i0);	return 0
;block_num 1