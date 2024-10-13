(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1200 0)
(declare-sort var957 0)
(declare-sort var3788 0)
(declare-sort var2031 0)
(declare-sort var2718 0)
(declare-sort var1995 0)
(declare-sort var3706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classPool/36378306 (var1200) var2031)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun translator/36378306 (var1200) var2718)
(declare-fun var3706-init () var3706)
(declare-fun <init>/-1435926547 (var3706 var1995) void)
(declare-const null-var1200 var1200)
(declare-const null-var957 var957)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2031 var2031)
(declare-const null-var1995 var1995)
(declare-const var1229 var1200) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var1229 null-var1200)))
(declare-const var772 var957) ; Statement: r8 := @parameter0: java.io.OutputStream 
(assert (not (= var772 null-var957)))
(declare-const var2019 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2019 null-String)))
(declare-const var3117 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3117 null-Int)))
(define-const var262 var2031 (classPool/36378306 var1229)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.ClassPool classPool> 
 ; Statement: if $r1 != null goto $i1 = i0 - 6 
(assert (not (= var262 null-var2031))) ; Cond: $r1 != null 
(define-const var1957 Int (- var3117 6)) ; Statement: $i1 = i0 - 6 
(assert (and true (and (>= 0 0) (>= (str.len var2019) var1957) (>= var1957 0))))
(define-const var1988 String (substring/-1240304868 var2019 0 var1957)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(assert true)
(define-const var2063 String (replace/1524665721 var1988 47 46)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true) ; Non Conditional
(define-const var2090 var2718 (translator/36378306 var1229)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.Translator translator> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var868 var1995) ; Statement: $r14 := @caughtexception 
(assert (not (= var868 null-var1995)))
(define-const var3097 var3706 var3706-init) ; Statement: $r15 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert true)
;(assert (<init>/-1435926547 var3097 var868)) ; Statement: specialinvoke $r15.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>(java.lang.Exception)>($r14) 

(declare-const var3097!1 var3706)
(declare-const var868!1 var1995)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {classPool/36378306=([org.apache.ibatis.javassist.tools.web.Webserver], org.apache.ibatis.javassist.ClassPool), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), translator/36378306=([org.apache.ibatis.javassist.tools.web.Webserver], org.apache.ibatis.javassist.Translator), var3706-init=([], org.apache.ibatis.javassist.tools.web.BadHttpRequest), <init>/-1435926547=([org.apache.ibatis.javassist.tools.web.BadHttpRequest, java.lang.Exception], void)}
; {var1200=org.apache.ibatis.javassist.tools.web.Webserver, var1229=r0, var957=java.io.OutputStream, var772=r8, var2019=r2, var3788=null_type, var3117=i0, var2031=org.apache.ibatis.javassist.ClassPool, var262=$r1, var1957=$i1, var1988=$r3, var2063=r4, var2718=org.apache.ibatis.javassist.Translator, var2090=$r5, var1995=java.lang.Exception, var868=$r14, var3706=org.apache.ibatis.javassist.tools.web.BadHttpRequest, var3097=$r15}
; {org.apache.ibatis.javassist.tools.web.Webserver=var1200, r0=var1229, java.io.OutputStream=var957, r8=var772, r2=var2019, null_type=var3788, i0=var3117, org.apache.ibatis.javassist.ClassPool=var2031, $r1=var262, $i1=var1957, $r3=var1988, r4=var2063, org.apache.ibatis.javassist.Translator=var2718, $r5=var2090, java.lang.Exception=var1995, $r14=var868, org.apache.ibatis.javassist.tools.web.BadHttpRequest=var3706, $r15=var3097}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r8 := @parameter0: java.io.OutputStream;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r1 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.ClassPool classPool>;	if $r1 != null goto $i1 = i0 - 6;	$i1 = i0 - 6;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r5 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.Translator translator>;	$r14 := @caughtexception;	$r15 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest;	specialinvoke $r15.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>(java.lang.Exception)>($r14);	throw $r15
;block_num 4