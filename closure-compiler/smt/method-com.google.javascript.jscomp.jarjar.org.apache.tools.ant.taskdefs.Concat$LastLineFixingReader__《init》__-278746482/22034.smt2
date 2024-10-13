(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3820 0)
(declare-sort var766 0)
(declare-sort var494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1012698002 (var3820) var766)
(declare-fun <init>/-553797664 (var494) void)
(declare-fun cast-from-var3820-to-var494 (var3820) var494)
(declare-fun lastPos/-1012698002 (var3820) Int)
(declare-fun var766_access$000/-71214924 (var766) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun lastChars/-1012698002 (var3820) (Array Int Int))
(declare-fun needAddSeparator/-1012698002 (var3820) Bool)
(declare-fun reader/-1012698002 (var3820) var494)
(declare-const null-var3820 var3820)
(declare-const null-var766 var766)
(declare-const null-var494 var494)
(declare-const var504 var3820) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader 
(assert (not (= var504 null-var3820)))
(declare-const var1281 var766) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat 
(assert (not (= var1281 null-var766)))
(declare-const var3784 var494) ; Statement: r5 := @parameter1: java.io.Reader 
(assert (not (= var3784 null-var494)))
(declare-const var504!1 var3820)
(assert (not (= var504!1 null-var3820)))
(assert (= (this$0/-1012698002 var504!1) var1281)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> = r1 
(assert true)
;(assert (<init>/-553797664 (cast-from-var3820-to-var494 var504!1))) ; Statement: specialinvoke r0.<java.io.Reader: void <init>()>() 

(declare-const var504!2 var3820)
(declare-const var504!3 var3820)
(assert (not (= var504!3 null-var3820)))
(assert (= (lastPos/-1012698002 var504!3) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> = 0 
(define-const var663 var766 (this$0/-1012698002 var504!3)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(define-const var1944 String (var766_access$000/-71214924 var663)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r2) 
(assert true)
(define-const var3083 Int (length/-134980193 var1944)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var3601 (Array Int Int) arr-Int-init) ; Statement: $r4 = newarray (char)[$i0] 
(declare-const var504!4 var3820)
(assert (not (= var504!4 null-var3820)))
(assert (= (lastChars/-1012698002 var504!4) var3601)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: char[] lastChars> = $r4 
(declare-const var504!5 var3820)
(assert (not (= var504!5 null-var3820)))
(assert (= (needAddSeparator/-1012698002 var504!5) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator> = 0 
(declare-const var504!6 var3820)
(assert (not (= var504!6 null-var3820)))
(assert (= (reader/-1012698002 var504!6) var3784)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader> = r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat), <init>/-553797664=([java.io.Reader], void), cast-from-var3820-to-var494=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], java.io.Reader), lastPos/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], int), var766_access$000/-71214924=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], java.lang.String), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), lastChars/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], char[]), needAddSeparator/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], boolean), reader/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], java.io.Reader)}
; {var3820=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader, var504=r0, var766=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var1281=r1, var494=java.io.Reader, var3784=r5, var663=$r2, var1944=$r3, var3083=$i0, var3601=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader=var3820, r0=var504, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var766, r1=var1281, java.io.Reader=var494, r5=var3784, $r2=var663, $r3=var1944, $i0=var3083, $r4=var3601}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat;	r5 := @parameter1: java.io.Reader;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> = r1;	specialinvoke r0.<java.io.Reader: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> = 0;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r2);	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	$r4 = newarray (char)[$i0];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: char[] lastChars> = $r4;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader> = r5;	return
;block_num 1