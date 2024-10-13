(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2083 0)
(declare-sort var2440 0)
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
(declare-const null-var2083 var2083)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var2440 var2440)
(declare-const var165 var2083) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler 
(assert (not (= var165 null-var2083)))
(declare-const var1011 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var1011 null-__Array__Int__Int__)))
(declare-const var2035 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2035 null-Int)))
(declare-const var1297 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1297 null-Int)))
(declare-const var1850 var2440) ; Statement: r8 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var1850 null-var2440)))
(define-const var11 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var11 var1011 var2035 var1297)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1) 

(declare-const var11!1 String)
(declare-const var1011!1 (Array Int Int))
(declare-const var2035!1 Int)
(declare-const var1297!1 Int)
(assert true)
(define-const var3778 String (trim/-847153721 var11!1)) ; Statement: r2 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var571 Bool (isEmpty/-1285796103 var3778)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var571 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2083=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler, var165=r11, var1011=r1, var2035=i0, var1297=i1, var2440=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var1850=r8, var11=$r0, var3778=r2, var571=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler=var2083, r11=var165, r1=var1011, i0=var2035, i1=var1297, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var2440, r8=var1850, $r0=var11, r2=var3778, $z0=var571}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	r8 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1);	r2 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2