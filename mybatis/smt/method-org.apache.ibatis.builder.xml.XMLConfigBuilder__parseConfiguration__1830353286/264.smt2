(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var499 0)
(declare-sort var793 0)
(declare-sort var3369 0)
(declare-sort var1390 0)
(declare-sort var685 0)
(declare-sort var2436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1390-init () var1390)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var685) String)
(declare-fun cast-from-var3369-to-var685 (var3369) var685)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var1390 String var2436) void)
(declare-fun cast-from-var3369-to-var2436 (var3369) var2436)
(declare-const null-var499 var499)
(declare-const null-var793 var793)
(declare-const null-var3369 var3369)
(declare-const var3913 var499) ; Statement: r0 := @this: org.apache.ibatis.builder.xml.XMLConfigBuilder 
(assert (not (= var3913 null-var499)))
(declare-const var3740 var793) ; Statement: r1 := @parameter0: org.apache.ibatis.parsing.XNode 
(assert (not (= var3740 null-var793)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3675 var3369) ; Statement: $r13 := @caughtexception 
(assert (not (= var3675 null-var3369)))
(define-const var2102 var1390 var1390-init) ; Statement: $r14 = new org.apache.ibatis.builder.BuilderException 
(define-const var2233 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2233)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2233!1 String)
(assert (= var2233!1 ""))
(assert true)
(define-const var1776 String (append/672562846 var2233!1 "Error parsing SQL Mapper Configuration. Cause: ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing SQL Mapper Configuration. Cause: ") 
(declare-const var2233!2 String)
(assert (= var2233!2 (str.++ var2233!1 "Error parsing SQL Mapper Configuration. Cause: ")))
(assert true)
(define-const var342 String (append/-1031950772 var1776 (cast-from-var3369-to-var685 var3675))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var1776!1 String)
(assert (str.prefixof var1776 var1776!1))
(assert true)
(define-const var1428 String (toString/-2075883882 var342)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var2102 var1428 (cast-from-var3369-to-var2436 var3675))) ; Statement: specialinvoke $r14.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13) 

(declare-const var2102!1 var1390)
(declare-const var1428!1 String)
(declare-const var3675!1 var3369)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1390-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3369-to-var685=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var3369-to-var2436=([java.lang.Exception], java.lang.Throwable)}
; {var499=org.apache.ibatis.builder.xml.XMLConfigBuilder, var3913=r0, var793=org.apache.ibatis.parsing.XNode, var3740=r1, var3369=java.lang.Exception, var3675=$r13, var1390=org.apache.ibatis.builder.BuilderException, var2102=$r14, var2233=$r15, var1776=$r16, var685=java.lang.Object, var342=$r17, var1428=$r18, var2436=java.lang.Throwable}
; {org.apache.ibatis.builder.xml.XMLConfigBuilder=var499, r0=var3913, org.apache.ibatis.parsing.XNode=var793, r1=var3740, java.lang.Exception=var3369, $r13=var3675, org.apache.ibatis.builder.BuilderException=var1390, $r14=var2102, $r15=var2233, $r16=var1776, java.lang.Object=var685, $r17=var342, $r18=var1428, java.lang.Throwable=var2436}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.xml.XMLConfigBuilder;	r1 := @parameter0: org.apache.ibatis.parsing.XNode;	$r13 := @caughtexception;	$r14 = new org.apache.ibatis.builder.BuilderException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing SQL Mapper Configuration. Cause: ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13);	throw $r14
;block_num 2