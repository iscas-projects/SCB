(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3475 0)
(declare-sort var1981 0)
(declare-sort var1696 0)
(declare-sort var2528 0)
(declare-sort var3966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3966-init () var3966)
(declare-fun <init>/-75370408 (var3966) void)
(declare-const null-var3475 var3475)
(declare-const null-var1981 var1981)
(declare-const null-var1696 var1696)
(declare-const null-String String)
(declare-const var112 var3475) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var112 null-var3475)))
(declare-const var1142 var1981) ; Statement: r21 := @parameter0: java.io.InputStream 
(assert (not (= var1142 null-var1981)))
(declare-const var2478 var1696) ; Statement: r15 := @parameter1: java.io.OutputStream 
(assert (not (= var2478 null-var1696)))
(declare-const var1263 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1263 null-String)))
(assert true)
(define-const var1196 Bool (startsWith/-1785782452 var1263 "GET /")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("GET /") 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert (= (ite var1196 1 0) 0)) ; Cond: $z0 == 0 
(define-const var81 var3966 var3966-init) ; Statement: $r25 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert true)
;(assert (<init>/-75370408 var81)) ; Statement: specialinvoke $r25.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>()>() 

(declare-const var81!1 var3966)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3966-init=([], org.apache.ibatis.javassist.tools.web.BadHttpRequest), <init>/-75370408=([org.apache.ibatis.javassist.tools.web.BadHttpRequest], void)}
; {var3475=org.apache.ibatis.javassist.tools.web.Webserver, var112=r3, var1981=java.io.InputStream, var1142=r21, var1696=java.io.OutputStream, var2478=r15, var1263=r0, var2528=null_type, var1196=$z0, var3966=org.apache.ibatis.javassist.tools.web.BadHttpRequest, var81=$r25}
; {org.apache.ibatis.javassist.tools.web.Webserver=var3475, r3=var112, java.io.InputStream=var1981, r21=var1142, java.io.OutputStream=var1696, r15=var2478, r0=var1263, null_type=var2528, $z0=var1196, org.apache.ibatis.javassist.tools.web.BadHttpRequest=var3966, $r25=var81}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r21 := @parameter0: java.io.InputStream;	r15 := @parameter1: java.io.OutputStream;	r0 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("GET /");	if $z0 == 0 goto $r25 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest;	$r25 = new org.apache.ibatis.javassist.tools.web.BadHttpRequest;	specialinvoke $r25.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: void <init>()>();	throw $r25
;block_num 2