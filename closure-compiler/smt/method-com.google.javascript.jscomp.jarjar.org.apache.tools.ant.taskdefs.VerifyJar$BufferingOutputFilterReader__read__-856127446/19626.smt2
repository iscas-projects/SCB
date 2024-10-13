(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1063 0)
(declare-sort var601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun next/1745590912 (var1063) var601)
(declare-fun read/-1752387725 (var601 (Array Int Int) Int Int) Int)
(declare-fun buffer/1745590912 (var1063) String)
(declare-fun append/-420189427 (String (Array Int Int) Int Int) String)
(declare-const null-var1063 var1063)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var120 var1063) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader 
(assert (not (= var120 null-var1063)))
(declare-const var2492 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2492 null-__Array__Int__Int__)))
(declare-const var896 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var896 null-Int)))
(declare-const var1900 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1900 null-Int)))
(define-const var3130 var601 (next/1745590912 var120)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.io.Reader next> 
(assert true)
(define-const var3188 Int (read/-1752387725 var3130 var2492 var896 var1900)) ; Statement: i2 = virtualinvoke $r2.<java.io.Reader: int read(char[],int,int)>(r1, i0, i1) 
(define-const var1820 String (buffer/1745590912 var120)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.lang.StringBuffer buffer> 
(assert true)
;(assert (append/-420189427 var1820 var2492 var896 var1900)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>(r1, i0, i1) 

(declare-const var1820!1 String)
(declare-const var2492!1 (Array Int Int))
(declare-const var896!1 Int)
(declare-const var1900!1 Int)
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {next/1745590912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader], java.io.Reader), read/-1752387725=([java.io.Reader, char[], int, int], int), buffer/1745590912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader], java.lang.StringBuffer), append/-420189427=([java.lang.StringBuffer, char[], int, int], java.lang.StringBuffer)}
; {var1063=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader, var120=r0, var2492=r1, var896=i0, var1900=i1, var601=java.io.Reader, var3130=$r2, var3188=i2, var1820=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader=var1063, r0=var120, r1=var2492, i0=var896, i1=var1900, java.io.Reader=var601, $r2=var3130, i2=var3188, $r3=var1820}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.io.Reader next>;	i2 = virtualinvoke $r2.<java.io.Reader: int read(char[],int,int)>(r1, i0, i1);	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.VerifyJar$BufferingOutputFilterReader: java.lang.StringBuffer buffer>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>(r1, i0, i1);	return i2
;block_num 1