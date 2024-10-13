(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var309 0)
(declare-sort var3634 0)
(declare-sort var3055 0)
(declare-sort var1431 0)
(declare-sort var3230 0)
(declare-sort var1643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classPool/36378306 (var309) var1431)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var1643-init () var1643)
(declare-fun <init>/-1435926547 (var1643 var3230) void)
(declare-const null-var309 var309)
(declare-const null-var3634 var3634)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1431 var1431)
(declare-const null-var3230 var3230)
(declare-const var3300 var309) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var3300 null-var309)))
(declare-const var942 var3634) ; Statement: r8 := @parameter0: java.io.OutputStream 
(assert (not (= var942 null-var3634)))
(declare-const var1142 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1142 null-String)))
(declare-const var138 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var138 null-Int)))
(define-const var3049 var1431 (classPool/36378306 var3300)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.ClassPool classPool> 
 ; Statement: if $r1 != null goto $i1 = i0 - 6 
(assert (not (= var3049 null-var1431))) ; Cond: $r1 != null 
(define-const var1025 Int (- var138 6)) ; Statement: $i1 = i0 - 6 
(assert (and true (and (>= 0 0) (>= (str.len var1142) var1025) (>= var1025 0))))
(define-const var1480 String (substring/-1240304868 var1142 0 var1025)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(assert true)
(define-const var2620 String (replace/1524665721 var1480 47 46)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3597 var3230) ; Statement: $r14 := @caughtexception 
(assert (not (= var3597 null-var3230)))
(define-const var2545 var1643 var1643-init) ; Statement: $r15 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert true)
;(assert (<init>/-1435926547 var2545 var3597)) ; Statement: specialinvoke $r15.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>(java.lang.Exception)>($r14) 

(declare-const var2545!1 var1643)
(declare-const var3597!1 var3230)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {classPool/36378306=([org.apache.ibatis.javassist.tools.web.Webserver], org.apache.ibatis.javassist.ClassPool), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), var1643-init=([], org.apache.ibatis.javassist.tools.web.BadHttpRequest), <init>/-1435926547=([org.apache.ibatis.javassist.tools.web.BadHttpRequest, java.lang.Exception], void)}
; {var309=org.apache.ibatis.javassist.tools.web.Webserver, var3300=r0, var3634=java.io.OutputStream, var942=r8, var1142=r2, var3055=null_type, var138=i0, var1431=org.apache.ibatis.javassist.ClassPool, var3049=$r1, var1025=$i1, var1480=$r3, var2620=r4, var3230=java.lang.Exception, var3597=$r14, var1643=org.apache.ibatis.javassist.tools.web.BadHttpRequest, var2545=$r15}
; {org.apache.ibatis.javassist.tools.web.Webserver=var309, r0=var3300, java.io.OutputStream=var3634, r8=var942, r2=var1142, null_type=var3055, i0=var138, org.apache.ibatis.javassist.ClassPool=var1431, $r1=var3049, $i1=var1025, $r3=var1480, r4=var2620, java.lang.Exception=var3230, $r14=var3597, org.apache.ibatis.javassist.tools.web.BadHttpRequest=var1643, $r15=var2545}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r8 := @parameter0: java.io.OutputStream;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r1 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.ClassPool classPool>;	if $r1 != null goto $i1 = i0 - 6;	$i1 = i0 - 6;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r14 := @caughtexception;	$r15 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest;	specialinvoke $r15.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>(java.lang.Exception)>($r14);	throw $r15
;block_num 3