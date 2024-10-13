(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var848 0)
(declare-sort var1890 0)
(declare-sort var2978 0)
(declare-sort var3693 0)
(declare-sort var447 0)
(declare-sort var1795 0)
(declare-sort var661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classPool/36378306 (var848) var3693)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun translator/36378306 (var848) var447)
(declare-fun var661-init () var661)
(declare-fun <init>/-1435926547 (var661 var1795) void)
(declare-const null-var848 var848)
(declare-const null-var1890 var1890)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3693 var3693)
(declare-const null-var447 var447)
(declare-const null-var1795 var1795)
(declare-const var1434 var848) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var1434 null-var848)))
(declare-const var1427 var1890) ; Statement: r8 := @parameter0: java.io.OutputStream 
(assert (not (= var1427 null-var1890)))
(declare-const var1410 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1410 null-String)))
(declare-const var1621 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1621 null-Int)))
(define-const var2714 var3693 (classPool/36378306 var1434)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.ClassPool classPool> 
 ; Statement: if $r1 != null goto $i1 = i0 - 6 
(assert (not (= var2714 null-var3693))) ; Cond: $r1 != null 
(define-const var2832 Int (- var1621 6)) ; Statement: $i1 = i0 - 6 
(assert (and true (and (>= 0 0) (>= (str.len var1410) var2832) (>= var2832 0))))
(define-const var3070 String (substring/-1240304868 var1410 0 var2832)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(assert true)
(define-const var180 String (replace/1524665721 var3070 47 46)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true) ; Non Conditional
(define-const var322 var447 (translator/36378306 var1434)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.Translator translator> 
(assert true) ; Non Conditional
 ; Statement: if $r5 == null goto $r6 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.ClassPool classPool> 
(assert (not (= var322 null-var447))) ; Negate: Cond: $r5 == null  
(declare-const var2249 var1795) ; Statement: $r14 := @caughtexception 
(assert (not (= var2249 null-var1795)))
(define-const var1360 var661 var661-init) ; Statement: $r15 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert true)
;(assert (<init>/-1435926547 var1360 var2249)) ; Statement: specialinvoke $r15.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>(java.lang.Exception)>($r14) 

(declare-const var1360!1 var661)
(declare-const var2249!1 var1795)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {classPool/36378306=([org.apache.ibatis.javassist.tools.web.Webserver], org.apache.ibatis.javassist.ClassPool), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), translator/36378306=([org.apache.ibatis.javassist.tools.web.Webserver], org.apache.ibatis.javassist.Translator), var661-init=([], org.apache.ibatis.javassist.tools.web.BadHttpRequest), <init>/-1435926547=([org.apache.ibatis.javassist.tools.web.BadHttpRequest, java.lang.Exception], void)}
; {var848=org.apache.ibatis.javassist.tools.web.Webserver, var1434=r0, var1890=java.io.OutputStream, var1427=r8, var1410=r2, var2978=null_type, var1621=i0, var3693=org.apache.ibatis.javassist.ClassPool, var2714=$r1, var2832=$i1, var3070=$r3, var180=r4, var447=org.apache.ibatis.javassist.Translator, var322=$r5, var1795=java.lang.Exception, var2249=$r14, var661=org.apache.ibatis.javassist.tools.web.BadHttpRequest, var1360=$r15}
; {org.apache.ibatis.javassist.tools.web.Webserver=var848, r0=var1434, java.io.OutputStream=var1890, r8=var1427, r2=var1410, null_type=var2978, i0=var1621, org.apache.ibatis.javassist.ClassPool=var3693, $r1=var2714, $i1=var2832, $r3=var3070, r4=var180, org.apache.ibatis.javassist.Translator=var447, $r5=var322, java.lang.Exception=var1795, $r14=var2249, org.apache.ibatis.javassist.tools.web.BadHttpRequest=var661, $r15=var1360}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r8 := @parameter0: java.io.OutputStream;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r1 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.ClassPool classPool>;	if $r1 != null goto $i1 = i0 - 6;	$i1 = i0 - 6;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r5 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.Translator translator>;	if $r5 == null goto $r6 = r0.<org.apache.ibatis.javassist.tools.web.Webserver: org.apache.ibatis.javassist.ClassPool classPool>;	$r14 := @caughtexception;	$r15 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest;	specialinvoke $r15.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>(java.lang.Exception)>($r14);	throw $r15
;block_num 5