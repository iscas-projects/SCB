(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1396 0)
(declare-sort var945 0)
(declare-sort var1203 0)
(declare-sort var368 0)
(declare-sort var1179 0)
(declare-sort var1270 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jaxbProcessorHolder/551778817 (var1396) var1203)
(declare-fun var1179-init () var1179)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var945) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1271795250 (var1179 String) void)
(declare-fun cast-from-var1179-to-var1270 (var1179) var1270)
(declare-const null-var1396 var1396)
(declare-const null-var945 var945)
(declare-const null-var368 var368)
(declare-const var1615 var1396) ; Statement: r0 := @this: org.hibernate.boot.cfgxml.internal.ConfigLoader 
(assert (not (= var1615 null-var1396)))
(declare-const var269 var945) ; Statement: r4 := @parameter0: java.io.File 
(assert (not (= var269 null-var945)))
(define-const var294 var1203 (jaxbProcessorHolder/551778817 var1615)) ; Statement: $r1 = r0.<org.hibernate.boot.cfgxml.internal.ConfigLoader: org.hibernate.internal.util.ValueHolder jaxbProcessorHolder> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2766 var368) ; Statement: $r10 := @caughtexception 
(assert (not (= var2766 null-var368)))
(define-const var90 var1179 var1179-init) ; Statement: $r22 = new org.hibernate.internal.util.config.ConfigurationException 
(define-const var2472 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2472)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2472!1 String)
(assert (= var2472!1 ""))
(assert true)
(define-const var2961 String (append/672562846 var2472!1 "Specified cfg.xml file [")) ; Statement: $r14 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Specified cfg.xml file [") 
(declare-const var2472!2 String)
(assert (= var2472!2 (str.++ var2472!1 "Specified cfg.xml file [")))
(assert true)
(define-const var2644 String (getAbsolutePath/-802773300 var269)) ; Statement: $r13 = virtualinvoke r4.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1199 String (append/672562846 var2961 var2644)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2961!1 String)
(assert (= var2961!1 (str.++ var2961 var2644)))
(assert true)
(define-const var684 String (append/672562846 var1199 "] does not exist")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not exist") 
(declare-const var1199!1 String)
(assert (= var1199!1 (str.++ var1199 "] does not exist")))
(assert true)
(define-const var2181 String (toString/-2075883882 var684)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1271795250 var90 var2181)) ; Statement: specialinvoke $r22.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String)>($r17) 

(declare-const var90!1 var1179)
(declare-const var2181!1 String)
(define-const var1257 var1270 (cast-from-var1179-to-var1270 var90!1)) ; Statement: $r23 = (java.lang.Throwable) $r22 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {jaxbProcessorHolder/551778817=([org.hibernate.boot.cfgxml.internal.ConfigLoader], org.hibernate.internal.util.ValueHolder), var1179-init=([], org.hibernate.internal.util.config.ConfigurationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1271795250=([org.hibernate.internal.util.config.ConfigurationException, java.lang.String], void), cast-from-var1179-to-var1270=([org.hibernate.internal.util.config.ConfigurationException], java.lang.Throwable)}
; {var1396=org.hibernate.boot.cfgxml.internal.ConfigLoader, var1615=r0, var945=java.io.File, var269=r4, var1203=org.hibernate.internal.util.ValueHolder, var294=$r1, var368=java.io.FileNotFoundException, var2766=$r10, var1179=org.hibernate.internal.util.config.ConfigurationException, var90=$r22, var2472=$r21, var2961=$r14, var2644=$r13, var1199=$r15, var684=$r16, var2181=$r17, var1270=java.lang.Throwable, var1257=$r23}
; {org.hibernate.boot.cfgxml.internal.ConfigLoader=var1396, r0=var1615, java.io.File=var945, r4=var269, org.hibernate.internal.util.ValueHolder=var1203, $r1=var294, java.io.FileNotFoundException=var368, $r10=var2766, org.hibernate.internal.util.config.ConfigurationException=var1179, $r22=var90, $r21=var2472, $r14=var2961, $r13=var2644, $r15=var1199, $r16=var684, $r17=var2181, java.lang.Throwable=var1270, $r23=var1257}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.cfgxml.internal.ConfigLoader;	r4 := @parameter0: java.io.File;	$r1 = r0.<org.hibernate.boot.cfgxml.internal.ConfigLoader: org.hibernate.internal.util.ValueHolder jaxbProcessorHolder>;	$r10 := @caughtexception;	$r22 = new org.hibernate.internal.util.config.ConfigurationException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Specified cfg.xml file [");	$r13 = virtualinvoke r4.<java.io.File: java.lang.String getAbsolutePath()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not exist");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String)>($r17);	$r23 = (java.lang.Throwable) $r22;	throw $r23
;block_num 2