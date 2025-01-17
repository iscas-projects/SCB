(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1645 0)
(declare-sort var3477 0)
(declare-sort var2438 0)
(declare-sort var1297 0)
(declare-sort var2825 0)
(declare-sort var1926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2825) ClassObject)
(declare-fun cast-from-var1297-to-var2825 (var1297) var2825)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getMessage/849299655 (var1926) String)
(declare-fun cast-from-var1297-to-var1926 (var1297) var1926)
(declare-fun append/-1031950772 (String var2825) String)
(declare-fun cast-from-var3477-to-var2825 (var3477) var2825)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1033878336 (var1645 String Int) void)
(declare-const null-var1645 var1645)
(declare-const null-var3477 var3477)
(declare-const null-String String)
(declare-const null-var1297 var1297)
(declare-const var513 var1645) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var513 null-var1645)))
(declare-const var1317 var3477) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1317 null-var3477)))
(declare-const var3617 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3617 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var399 var1297) ; Statement: $r14 := @caughtexception 
(assert (not (= var399 null-var1297)))
(define-const var834 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var834)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var834!1 String)
(assert (= var834!1 ""))
(assert true)
(define-const var1262 String (append/672562846 var834!1 "Ignoring Exception ")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ignoring Exception ") 
(declare-const var834!2 String)
(assert (= var834!2 (str.++ var834!1 "Ignoring Exception ")))
(assert true)
(define-const var110 ClassObject (getClass/1258963082 (cast-from-var1297-to-var2825 var399))) ; Statement: $r16 = virtualinvoke $r14.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var368 String (getName/-1958580599 var110)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3880 String (append/672562846 var1262 var368)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1262!1 String)
(assert (= var1262!1 (str.++ var1262 var368)))
(assert true)
(define-const var1618 String (append/672562846 var3880 ": ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3880!1 String)
(assert (= var3880!1 (str.++ var3880 ": ")))
(assert true)
(define-const var2519 String (getMessage/849299655 (cast-from-var1297-to-var1926 var399))) ; Statement: $r20 = virtualinvoke $r14.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var279 String (append/672562846 var1618 var2519)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1618!1 String)
(assert (= var1618!1 (str.++ var1618 var2519)))
(assert true)
(define-const var1813 String (append/672562846 var279 " reading resource ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" reading resource ") 
(declare-const var279!1 String)
(assert (= var279!1 (str.++ var279 " reading resource ")))
(assert true)
(define-const var3993 String (append/672562846 var1813 var3617)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1813!1 String)
(assert (= var1813!1 (str.++ var1813 var3617)))
(assert true)
(define-const var1844 String (append/672562846 var3993 " from ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var3993!1 String)
(assert (= var3993!1 (str.++ var3993 " from ")))
(assert true)
(define-const var2370 String (append/-1031950772 var1844 (cast-from-var3477-to-var2825 var1317))) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1844!1 String)
(assert (str.prefixof var1844 var1844!1))
(assert true)
(define-const var1948 String (toString/-2075883882 var2370)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1033878336 var513 var1948 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r27, 3) 

(declare-const var513!1 var1645)
(declare-const var1948!1 String)
(declare-const var3061 Int)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1297-to-var2825=([java.lang.Exception], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1297-to-var1926=([java.lang.Exception], java.lang.Throwable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3477-to-var2825=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1033878336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String, int], void)}
; {var1645=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var513=r0, var3477=java.io.File, var1317=r1, var3617=r4, var2438=null_type, var1297=java.lang.Exception, var399=$r14, var834=$r15, var1262=$r18, var2825=java.lang.Object, var110=$r16, var368=$r17, var3880=$r19, var1618=$r21, var1926=java.lang.Throwable, var2519=$r20, var279=$r22, var1813=$r23, var3993=$r24, var1844=$r25, var2370=$r26, var1948=$r27, var3061=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var1645, r0=var513, java.io.File=var3477, r1=var1317, r4=var3617, null_type=var2438, java.lang.Exception=var1297, $r14=var399, $r15=var834, $r18=var1262, java.lang.Object=var2825, $r16=var110, $r17=var368, $r19=var3880, $r21=var1618, java.lang.Throwable=var1926, $r20=var2519, $r22=var279, $r23=var1813, $r24=var3993, $r25=var1844, $r26=var2370, $r27=var1948, 3=var3061}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r1 := @parameter0: java.io.File;	r4 := @parameter1: java.lang.String;	$r14 := @caughtexception;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ignoring Exception ");	$r16 = virtualinvoke $r14.<java.lang.Object: java.lang.Class getClass()>();	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r20 = virtualinvoke $r14.<java.lang.Exception: java.lang.String getMessage()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" reading resource ");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r27, 3);	return null
;block_num 3