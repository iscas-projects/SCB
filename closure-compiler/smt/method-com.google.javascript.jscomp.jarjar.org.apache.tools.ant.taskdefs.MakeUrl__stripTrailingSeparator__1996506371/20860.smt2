(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-fun separator/10864581 (var1431) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun delete/775836148 (String Int Int) String)
(declare-fun String-init () String)
(declare-fun <init>/592609754 (String String) void)
(declare-const null-var1431 var1431)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1535 var1431) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl 
(assert (not (= var1535 null-var1431)))
(declare-const var3855 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3855 null-String)))
(declare-const var2570 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2570 null-Int)))
 ; Statement: if i0 <= 0 goto return "" 
(assert (not (<= var2570 0))) ; Negate: Cond: i0 <= 0  
(assert true)
(define-const var1663 Int (length/-171891354 var3855)) ; Statement: $i2 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(define-const var929 String (separator/10864581 var1535)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl: java.lang.String separator> 
(assert true)
(define-const var672 Int (length/-134980193 var929)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2163 Int (- var1663 var672)) ; Statement: $i4 = $i2 - $i1 
(assert true)
(define-const var1596 Int (length/-171891354 var3855)) ; Statement: $i3 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true)
;(assert (delete/775836148 var3855 var2163 var1596)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>($i4, $i3) 

(declare-const var3855!1 String)
(declare-const var2163!1 Int)
(declare-const var1596!1 Int)
(define-const var2653 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/592609754 var2653 var3855!1)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(java.lang.StringBuilder)>(r0) 

(declare-const var2653!1 String)
(declare-const var3855!2 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), separator/10864581=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl], java.lang.String), length/-134980193=([java.lang.String], int), delete/775836148=([java.lang.StringBuilder, int, int], java.lang.StringBuilder), String-init=([], java.lang.String), <init>/592609754=([java.lang.String, java.lang.StringBuilder], void)}
; {var1431=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl, var1535=r1, var3855=r0, var2570=i0, var1663=$i2, var929=$r2, var672=$i1, var2163=$i4, var1596=$i3, var2653=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl=var1431, r1=var1535, r0=var3855, i0=var2570, $i2=var1663, $r2=var929, $i1=var672, $i4=var2163, $i3=var1596, $r3=var2653}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>;	<java.lang.String: void <init>(java.lang.StringBuilder)>
;cnt {"<java.lang.StringBuilder: int length()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>": 1,"<java.lang.String: void <init>(java.lang.StringBuilder)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	if i0 <= 0 goto return "";	$i2 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl: java.lang.String separator>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	$i4 = $i2 - $i1;	$i3 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>($i4, $i3);	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(java.lang.StringBuilder)>(r0);	return $r3
;block_num 2