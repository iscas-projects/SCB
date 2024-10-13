(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1290 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1290 var1290)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1428 var1290) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler 
(assert (not (= var1428 null-var1290)))
(declare-const var1410 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var1410 null-__Array__Int__Int__)))
(declare-const var1003 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1003 null-Int)))
(declare-const var2413 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2413 null-Int)))
(define-const var2602 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2602 var1410 var1003 var2413)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1) 

(declare-const var2602!1 String)
(declare-const var1410!1 (Array Int Int))
(declare-const var1003!1 Int)
(declare-const var2413!1 Int)
(assert true)
(define-const var623 String (trim/-847153721 var2602!1)) ; Statement: r2 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3609 Bool (isEmpty/-1285796103 var623)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3609 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1290=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler, var1428=r8, var1410=r1, var1003=i0, var2413=i1, var2602=$r0, var623=r2, var3609=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler=var1290, r8=var1428, r1=var1410, i0=var1003, i1=var2413, $r0=var2602, r2=var623, $z0=var3609}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1);	r2 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2